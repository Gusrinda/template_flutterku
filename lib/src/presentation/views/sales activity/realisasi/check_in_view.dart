import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/config/theme_colors.dart';
import 'package:sulinda_sales/src/core/model/form_text_input.dart';
import 'package:sulinda_sales/src/core/utils/compress.dart';
import 'package:sulinda_sales/src/core/utils/extensions.dart';
import 'package:sulinda_sales/src/core/utils/formatter.dart';
import 'package:sulinda_sales/src/data/models/request/request_save_absensi.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_detail_plan.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_list_plan.dart';
import 'package:sulinda_sales/src/presentation/blocs/visiting/bloc/visiting_plan_bloc.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20activity/realisasi/check_out_view.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20activity/realisasi/realisasi_view.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20order/so_add_view.dart';
import 'package:sulinda_sales/src/presentation/widgets/chip_widget.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_field_widget.dart';

class CheckInView extends StatefulWidget {
  const CheckInView(
      {super.key,
      required this.responseDetailPacking,
      required this.dataListPlan});

  static const String routeName = '/check-in-view';

  final ResponseDetailPlan responseDetailPacking;
  final DataListPlan dataListPlan;

  @override
  State<CheckInView> createState() => _CheckInViewState();
}

class _CheckInViewState extends State<CheckInView> {
// bool _isCheckedIn = false;
  Timer? _timer;
  String textHour = "";
  File? imageCapture;
  String? base64Image;

  bool _isCheckedIn = false;
  Position? _currentPosition;
  String _currentAddress = "";
  double? jarakKamu = 0;

  FormTextInput fieldCatatanPlan = FormTextInput.pure();

  Future<File?> getImage() async {
    final ImagePicker _picker = ImagePicker();
    try {
      final pickFile = await _picker.pickImage(source: ImageSource.camera);

      if (pickFile == null) {
        EasyLoading.showError("Gagal ambil gambar !");
        return null;
      }
      imageCapture = File(pickFile.path);

      return imageCapture;
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
      return null;
    }
  }

  @override
  void initState() {
    imageCapture = null;

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        textHour = kTimeSecondFormat.format(DateTime.now());
      });
    });

    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _getLocation();
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<VisitingPlanBloc, VisitingPlanState>(
      listener: (context, state) {
        if (state.statusForm == FormzStatus.submissionFailure) {
          context.showErrorToast(state.error ?? 'Error create data');
          return;
        }

        if (state.statusForm == FormzStatus.submissionSuccess) {
          context.showOkToast("Berhasil CheckIn");

          try {
            if (widget.dataListPlan.activityType == 'Ambil Order') {
              log("AMBIL ORDER STEP 1");
              Navigator.pushNamed(
                context,
                SoAddView.routeName,
              ).then(
                (value) {
                  log("AMBIL ORDER STEP 2");
                  Navigator.pushNamed(
                    context,
                    CheckOutView.routeName,
                    arguments: {
                      'header': widget.dataListPlan,
                      'body': widget.responseDetailPacking,
                      'checkin': state.dataRequest,
                    },
                  );
                },
              );
            } else {
              Navigator.popAndPushNamed(
                context,
                RealisasiView.routeName,
                arguments: {
                  'header': widget.dataListPlan,
                  'body': widget.responseDetailPacking,
                  'checkin': state.dataRequest,
                },
              );
            }
          } catch (e) {
            log("ERROR ${e.toString()}");
          }
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: themeHijauBg,
          title: Text('Check In Sales'),
          centerTitle: true,
        ),
        body: _ContentView(),
        bottomNavigationBar: BlocBuilder<VisitingPlanBloc, VisitingPlanState>(
          builder: (context, state) {
            return SafeArea(
                minimum: const EdgeInsets.fromLTRB(20, 0, 20, 12),
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: themeHijauBg),
                  onPressed: () async {
                    if (imageCapture == null) {
                      EasyLoading.showError("Belum mengambil gambar.");
                      return;
                    }

                    final isOke = await context.showVerifikasiDialog(
                        context: context,
                        title: "Konfirmasi",
                        message: 'Lakukan Check In sekarang ?',
                        negativeButton: "Tidak",
                        positiveButton: "Ya");

                    if (isOke != null) {
                      if (isOke) {
                        context.read<VisitingPlanBloc>().add(
                              SaveCheckin(
                                request: RequestSaveAbsensi(
                                  mCustId: widget
                                      .responseDetailPacking.data?.mCustId,
                                  mCustDAddrId: widget
                                      .responseDetailPacking.data?.mCustDAddrId,
                                  geoLatitude:
                                      _currentPosition?.latitude.toString(),
                                  geoLongitude:
                                      _currentPosition?.longitude.toString(),
                                  rActivityImgBase64: base64Image,
                                  rActivityNote:
                                      fieldCatatanPlan.valueIfNotEmpty ?? '',
                                  // rActivityId: widget.responseDetailPacking.data
                                  //     ?.tSalesActivityId,
                                  refActivityId: widget.responseDetailPacking
                                      .data?.tSalesActivityId,
                                  rActivityType: widget
                                      .responseDetailPacking.data?.activityType,
                                  refId: widget.responseDetailPacking.data
                                      ?.tSalesActivityId,
                                ),
                              ),
                            );
                      }
                    }
                  },
                  child: Container(
                      child: Text(
                    'Check In',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ));
          },
        ),
      ),
    );
  }

  Widget _ContentView() {
    return BlocBuilder<VisitingPlanBloc, VisitingPlanState>(
      builder: (context, state) {
        return ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            GestureDetector(
              onTap: () async {
                // await getImage();

                final file = await getImage();

                print("FILE ? ${file}");

                if (file != null) {
                  imageCapture = await compressFile(file);
                  String base64 = await convertXFileToBase64(imageCapture!);

                  setState(() {
                    base64Image = base64;
                  });
                }
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xFFF1F4FB)),
                child: Stack(
                  children: [
                    imageCapture == null
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.photo_camera,
                                  size: 40,
                                  color: ThemeColors.greyCaption,
                                ),
                                const Text(
                                  "Ketuk untuk ambil gambar",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          )
                        : Container(
                            height: MediaQuery.of(context).size.height * 0.5,
                            width: MediaQuery.of(context).size.width,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              child: FittedBox(
                                child: Image.file(
                                  imageCapture!,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                    Positioned(
                      left: 12,
                      bottom: 12,
                      child: IconChip(
                        "Ambil Ulang",
                        textColor: ThemeColors.blackPrimary,
                        icon: Icons.replay_rounded,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Icon(
                  Icons.calendar_month,
                  size: 12.sp,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  kDayFullDate2Format.format(DateTime.now()),
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
                ),
                const Spacer(),
                Icon(
                  Icons.timer,
                  size: 12.sp,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  textHour,
                  style: TextStyle(letterSpacing: 0.5, fontSize: 12.sp),
                )
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Divider(),
            const SizedBox(
              height: 6,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              "Lokasi",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
            ),
            Text(
              _currentAddress == "" ? "-" : _currentAddress,
              style: TextStyle(fontSize: 12.sp),
            ),
            const SizedBox(
              height: 6,
            ),
            Divider(),
            const SizedBox(
              height: 6,
            ),
            FormTextLabel(
              label: "Catatan Visiting",
              labelColor: fontColorBold,
              // mandatory: true,
            ),
            const SizedBox(
              height: 6,
            ),
            Material(
              color: Colors.transparent,
              child: FormzTextField(
                hintText: "Isi catatan tambahan",
                minLines: 3,
                maxLines: 5,
                textEditingController: fieldCatatanPlan.textEditingController,
                onChanged: (value) {
                  setState(() {
                    fieldCatatanPlan = fieldCatatanPlan.toDirty(value: value);
                  });
                },
                errorText: null,
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _getLocation() async {
    EasyLoading.show(status: "Mengambil lokasi . . .");

    bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (isLocationServiceEnabled) {
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          // Handle permission denied scenario
          EasyLoading.dismiss();
          EasyLoading.showError("LocationPermission denied!");
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        // Handle the scenario when location permission is permanently denied
        EasyLoading.dismiss();
        EasyLoading.showError("LocationPermission denied!");
        return;
      }

      // Get the current position (latitude and longitude)
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      List<Placemark> placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);

      // latlng rsud = -2.2105600945844577, 113.92248493806417

      double distanceInMeters = await Geolocator.distanceBetween(
        position.latitude,
        position.longitude,
        -2.2105600945844577,
        113.92248493806417,
      );

      if (placemarks.isNotEmpty) {
        Placemark placemark = placemarks[0];
        String address =
            "${placemark.street}, ${placemark.locality}, ${placemark.administrativeArea}, ${placemark.country}";

        setState(() {
          _currentAddress = address;
          _currentPosition = position;
          jarakKamu = distanceInMeters;
        });
      } else {
        print('Tidak dapat menemukan alamat untuk koordinat tersebut.');
      }
      EasyLoading.dismiss();
    } else {
      // Handle the scenario when location service is not enabled
      EasyLoading.dismiss();
      EasyLoading.showError("location service is not enabled!");
      return;
    }
  }
}
