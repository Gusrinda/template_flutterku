import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sulinda_sales/src/core/assets/assets.gen.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/config/theme_colors.dart';
import 'package:sulinda_sales/src/core/model/form_text_input.dart';
import 'package:sulinda_sales/src/core/utils/compress.dart';
import 'package:sulinda_sales/src/core/utils/extensions.dart';
import 'package:sulinda_sales/src/core/utils/formatter.dart';
import 'package:sulinda_sales/src/data/models/request/request_save_absensi.dart';
import 'package:sulinda_sales/src/data/models/request/request_save_tagihan.dart';
import 'package:sulinda_sales/src/data/models/response/packing/response_list_packing.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_detail_plan.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_list_plan.dart';
import 'package:sulinda_sales/src/presentation/blocs/visiting/bloc/visiting_plan_bloc.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20activity/realisasi/check_out_view.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_field_widget.dart';

class RealisasiView extends StatefulWidget {
  static const String routeName = '/setoran_tunai_page';

  const RealisasiView(
      {super.key,
      required this.responseDetailPlan,
      required this.dataListPlan,
      required this.dataCheckin});

  final ResponseDetailPlan responseDetailPlan;
  final DataListPlan dataListPlan;
  final RequestSaveAbsensi dataCheckin;

  @override
  State<RealisasiView> createState() => _RealisasiViewState();
}

class _RealisasiViewState extends State<RealisasiView> {
  final CurrencyTextInputFormatter _formatter =
      CurrencyTextInputFormatter.currency(
    enableNegative: false,
    decimalDigits: 0,
    symbol: 'Rp ',
  );

  FormTextInput fieldNominalBayar = FormTextInput.pure();
  FormTextInput fieldCatatanPlan = FormTextInput.pure();

  List<String> daftarDrop = [
    'Cash',
    'Transfer',
  ];

  String? _selectedDrop;

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem> daftarDropdown = List.from(
        daftarDrop.map((e) => DropdownMenuItem(value: e, child: Text(e))));

    DataListPlan dataHeader = widget.dataListPlan;
    RequestSaveAbsensi dataRequest = widget.dataCheckin;
    DataDetailPlan dataDetailPlan = widget.responseDetailPlan.data!;

    return BlocListener<VisitingPlanBloc, VisitingPlanState>(
      listener: (context, state) {
        if (state.statusForm == FormzStatus.submissionFailure) {
          context.showErrorToast(state.error ?? 'Error create data');
          return;
        }

        if (state.statusForm == FormzStatus.submissionSuccess) {
          context.showOkToast("Berhasil Simpan Realisasi");
          // Navigator.pop(context, true);
          Navigator.popAndPushNamed(
            context,
            CheckOutView.routeName,
            arguments: {
              'header': widget.dataListPlan,
              'body': widget.responseDetailPlan,
              'checkin': widget.dataCheckin,
            },
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Realisasi Visiting"),
          backgroundColor: themeHijauBg,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                children: [
                  FormTextLabel(
                    label: "No. Penagihan",
                    labelColor: fontColorBold,
                    // mandatory: true,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: FormzTextField(
                      textEditingController: TextEditingController(
                          text: "PG-DRAFT-${dataDetailPlan.tSalesActivityId}"),
                      enabled: false,
                      textInputAction: TextInputAction.next,
                      onChanged: (nama) {},
                      errorText: null,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  FormTextLabel(
                    label: "Customer",
                    labelColor: fontColorBold,
                    // mandatory: true,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: FormzTextField(
                      textEditingController: TextEditingController(
                          text: "${dataHeader.mCustName}"),
                      enabled: false,
                      textInputAction: TextInputAction.next,
                      onChanged: (nama) {},
                      errorText: null,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  FormTextLabel(
                    label: "Piutang",
                    labelColor: fontColorBold,
                    // mandatory: true,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: FormzTextField(
                      textEditingController: TextEditingController(
                          text:
                              "${kRupiahFormat.format(dataHeader.jumlahPiutang)}"),
                      enabled: false,
                      textInputAction: TextInputAction.next,
                      onChanged: (nama) {},
                      errorText: null,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  FormTextLabel(
                    label: "Jumlah Pembayaran",
                    labelColor: fontColorBold,
                    mandatory: true,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: FormzTextField(
                      textEditingController:
                          fieldNominalBayar.textEditingController,
                      inputFormatters: [_formatter],
                      keyboardType: TextInputType.number,
                      hintText: 'Input Nominal Pembayaran',
                      textInputAction: TextInputAction.next,
                      onChanged: (qty) {
                        setState(() {
                          fieldNominalBayar =
                              fieldNominalBayar.toDirty(value: qty);
                        });
                      },
                      errorText: null,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  FormTextLabel(
                    label: "Metode Pembayaran",
                    labelColor: fontColorBold,
                    mandatory: true,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: FormzDropDownField(
                      typeDropdown: 'PT',
                      readOnly: true,
                      daftarString: daftarDrop,
                      hintText: "Pilih Metode",
                      textInputAction: TextInputAction.next,
                      currentSelectedValue: _selectedDrop,
                      inputItems: daftarDropdown,
                      onChanged: (value) {
                        print("Selected Value ${value}");
                        setState(() {
                          _selectedDrop = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  FormTextLabel(
                    label: "Bukti Pembayaran",
                    labelColor: fontColorBold,
                    mandatory: true,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () async {
                      pickMetode("Camera");
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xFFE0E0E0)),
                        height: 200,
                        child: pickedFile == null
                            ? ImageIcon(
                                AssetImage(Assets.icons.canera.path),
                                size: 14,
                                color: ThemeColors.neutral6,
                              )
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                    fit: BoxFit.cover,
                                    image: FileImage(
                                      File(pickedFile!.path),
                                    )),
                              )),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  FormTextLabel(
                    label: "Catatan",
                    labelColor: fontColorBold,
                    // mandatory: true,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: FormzTextField(
                      hintText: "Isi Catatan",
                      minLines: 3,
                      maxLines: 5,
                      textInputAction: TextInputAction.next,
                      textEditingController:
                          fieldCatatanPlan.textEditingController,
                      onChanged: (value) {
                        setState(() {
                          fieldCatatanPlan =
                              fieldCatatanPlan.toDirty(value: value);
                        });
                      },
                      errorText: null,
                    ),
                  ),
                ],
              ),
            ),
            SafeArea(
                minimum: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (base64String == null) {
                          EasyLoading.showError("Pilih gambar!");
                          return;
                        }

                        log("FIELD NOMINAL BAYAR ${fieldNominalBayar}");
                        log("FIELD CATATAN ${fieldCatatanPlan}");

                        if (fieldNominalBayar.value.isEmpty) {
                          EasyLoading.showError("Isi Nominal bayar!");
                          return;
                        }

                        if (_selectedDrop == null) {
                          EasyLoading.showError("Pilih metode pembayaran!");
                          return;
                        }

                        double nilaiPembayaran = double.tryParse(
                                fieldNominalBayar.value
                                    .replaceAll('.', '')
                                    .replaceAll(',', '.')) ??
                            0;
                        int? newNilaiPembayaran = nilaiPembayaran.toInt() ?? 0;

                        RequestSaveTagihan requestSaveTagihan =
                            RequestSaveTagihan(
                                activityType: dataRequest.rActivityType,
                                geoLatitude: dataRequest.geoLatitude,
                                geoLongitude: dataRequest.geoLongitude,
                                mCustDAddrId: dataRequest.mCustDAddrId,
                                mCustId: dataRequest.mCustId,
                                paymentAmount: newNilaiPembayaran,
                                paymentImgBase64: base64String,
                                paymentType: 0,
                                tSalesActivityId: dataRequest.refId,
                                realisasiNote:
                                    fieldCatatanPlan.valueIfNotEmpty ?? '',
                                tSalesActivityNote:
                                    dataDetailPlan.tSalesActivityNote,
                                tSalesActivityStatus:
                                    dataDetailPlan.tSalesActivityStatus,
                                planEnd: dataDetailPlan.planEnd,
                                planStart: dataDetailPlan.planStart,
                                planStartTime: dataDetailPlan.planStartTime);

                        log("DATA REQUEST ${jsonEncode(requestSaveTagihan)}");

                        final isOke = await formApproval(context);

                        if (isOke != null) {
                          if (isOke) {
                            // Navigator.popAndPushNamed(
                            //   context,
                            //   CheckOutView.routeName,
                            // );
                            context.read<VisitingPlanBloc>().add(
                                SaveRealisasi(request: requestSaveTagihan));
                          }
                        }
                      },
                      child: Text(
                        "Simpan",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    )))
          ],
        ),
      ),
    );
  }

  final _picker = ImagePicker();
  XFile? pickedFile;
  String? base64String;

  Future pickMetode(String metode) async {
    try {
      final pickFile = await _picker.pickImage(
          source:
              metode == "Camera" ? ImageSource.camera : ImageSource.gallery);

      if (pickFile == null) return;

      var imageCapture = File(pickFile.path);

      imageCapture = await compressFile(imageCapture);
      String base64 = await convertXFileToBase64(imageCapture);

      base64String = base64;

      setState(() => this.pickedFile = pickFile);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future<String?> handleFormPilihFoto(BuildContext context) async {
    final rxPickup = ValueNotifier('Camera');

    return await showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(24, 40, 24, 20),
            constraints: const BoxConstraints(minWidth: 340),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Pilih Metode Ambil Gambar",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: themeFontDefault),
                ),
                SizedBox(
                  height: 16,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: MediaQuery.of(context).size.width / 9),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...[
                          'Camera',
                          'Gallery',
                        ].map((pickup) {
                          return ValueListenableBuilder<String>(
                            valueListenable: rxPickup,
                            builder: (context, groupValue, child) {
                              return RadioListTile(
                                contentPadding: EdgeInsets.all(0),
                                value: pickup,
                                activeColor: themeHijauBg,
                                groupValue: groupValue,
                                onChanged: (value) => rxPickup.value = value!,
                                title: Text(
                                  pickup,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: themeBlack),
                                ),
                              );
                            },
                          );
                        }),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Navigator.pop(context, null),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          backgroundColor: ThemeColors.neutral4,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: const Text(
                            'Cancel',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: themeFontDefault),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context, rxPickup.value);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: themeHijauBg,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: const Text('OK',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<String?> handleFormPilihMetodePembayaran(BuildContext context) async {
    final rxPickup = ValueNotifier('Transfer Bank');

    return await showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(24, 40, 24, 20),
            constraints: const BoxConstraints(minWidth: 340),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Pilih Metode Pembayaran",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: themeFontDefault),
                ),
                SizedBox(
                  height: 16,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: MediaQuery.of(context).size.width / 9),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...[
                          'Transfer Bank',
                          'Cash',
                        ].map((pickup) {
                          return ValueListenableBuilder<String>(
                            valueListenable: rxPickup,
                            builder: (context, groupValue, child) {
                              return RadioListTile(
                                contentPadding: EdgeInsets.all(0),
                                value: pickup,
                                activeColor: themeHijauBg,
                                groupValue: groupValue,
                                onChanged: (value) => rxPickup.value = value!,
                                title: Text(
                                  pickup,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: themeBlack),
                                ),
                              );
                            },
                          );
                        }),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Navigator.pop(context, "false"),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          backgroundColor: ThemeColors.neutral4,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: const Text(
                            'Cancel',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: themeFontDefault),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context, "true");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: themeHijauBg,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: const Text('OK',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<bool?> formApproval(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Container(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 32),
            constraints: const BoxConstraints(minWidth: 340),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Yakin Data Sudah Benar?",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 48,
                ),
                SvgPicture.asset(Assets.svg.undrawAcceptRequestReD81h1),
                const SizedBox(
                  height: 48,
                ),
                Text(
                  "Pastikan data yang Anda masukkan benar!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context, false);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: BorderSide(
                              color: themeHijau,
                            ),
                          ),
                          child: Text(
                            "Cek Lagi",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, color: themeHijau),
                          )),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context, true);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: themeHijauBg),
                          child: Text(
                            "Sudah Benar",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, color: themeHijau),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
