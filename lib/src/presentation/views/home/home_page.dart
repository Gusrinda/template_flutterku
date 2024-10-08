import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ionicons/ionicons.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:restart_app/restart_app.dart';
import 'package:soa_jpt/src/core/config/constant.dart';
import 'package:soa_jpt/src/core/config/theme_colors.dart';
import 'package:soa_jpt/src/core/model/TargetBulan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:soa_jpt/src/core/model/menu_model.dart';
import 'package:soa_jpt/src/core/utils/dialogs.dart';
import 'package:soa_jpt/src/presentation/blocs/auth/auth_bloc.dart';
import 'package:soa_jpt/src/presentation/views/lokasi/lokasi_barang_view.dart';
import 'package:soa_jpt/src/presentation/views/packing/menu_packing_view.dart';
import 'package:soa_jpt/src/presentation/views/scanner/scan_barcode_view.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../core/assets/assets.gen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isCheckedIn = false;
  CarouselSliderController carouselController = CarouselSliderController();
  int carouselIndex = 0;

  @override
  void initState() {
    isCheckedIn = false;
    super.initState();
    _requestPermissions();
  }

  List<String> imagePath = [
    Assets.images.wh1.path,
    Assets.images.wh2.path,
    Assets.images.wh3.path,
  ];

  Future<void> _requestPermissions() async {
    // Request permission
    Map<Permission, PermissionStatus> statuses = await [
      Permission.camera,
      Permission.mediaLibrary,
      Permission.storage,
      Permission.photos,
      Permission.location,
    ].request();
    print(statuses[Permission.camera]);
    print(statuses[Permission.location]);
  }

  @override
  Widget build(BuildContext context) {
    List<MenuModel> daftarMenu = [
      MenuModel(
        judul: 'Checker',
        iconData: Ionicons.scan_circle_sharp,
      ),
      MenuModel(
        judul: 'Packing',
        iconData: Ionicons.bag_handle_outline,
      ),
      MenuModel(
        judul: 'Barang Lokasi',
        iconData: Ionicons.locate,
      ),
      MenuModel(
        judul: 'LPB',
        iconData: Ionicons.stats_chart,
      ),
    ];

    Size size = MediaQuery.of(context).size;

    double carouselCardHeight = 150;

    var labelsIndex = ["QL", "JPT"];

    GetStorage box = GetStorage();
    String? serverSaatIni = box.read('baseurl');

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Server Saat Ini\n${serverSaatIni}",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 10.sp),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    ToggleSwitch(
                      minWidth: 75.0,
                      minHeight: 50.0,
                      fontSize: 12.0,
                      initialLabelIndex: 0,
                      activeBgColor: [Colors.white],
                      activeFgColor: Colors.black,
                      inactiveBgColor: Colors.red,
                      inactiveFgColor: Colors.white,
                      activeBorders: [
                        Border.all(color: Colors.black26, width: 2)
                      ],
                      totalSwitches: 2,
                      labels: labelsIndex,
                      onToggle: (index) {
                        GetStorage box = GetStorage();
                        String? _selectedOption = box.read('baseurl');

                        if (index == 0) {
                          box.write('baseurl',
                              'http://118.99.67.130:83/jptgrosir_v2/api.asmx');
                        } else {
                          box.write('baseurl',
                              'http://192.168.0.100/jptgrosir_v2/api.asmx');
                        }

                        EasyLoading.showSuccess(
                            "Aplikasi Akan Melakukan Restart Dalam 2 Detik Untuk Menerapkan Environment Baru!");

                        Future.delayed(const Duration(milliseconds: 2000), () {
                          Restart.restartApp();
                        });
                      },
                      cancelToggle: (index) async {
                        GetStorage box = GetStorage();
                        String? _selectedOption = box.read('baseurl');

                        int indexTrackign = _selectedOption ==
                                'http://118.99.67.130:83/jptgrosir_v2/api.asmx'
                            ? 0
                            : 1;

                        if (indexTrackign == index) {
                          EasyLoading.showToast(
                              "Server saat ini sudah ${labelsIndex[index!]}");
                          return false;
                        }

                        return await showDialog(
                            context: context,
                            builder: (dialogContext) {
                              return AlertDialog(
                                content: Text(
                                    "Ganti Server ke ${labelsIndex[index!]} ?"),
                                actions: [
                                  TextButton(
                                      child: Text("No",
                                          style: TextStyle(color: Colors.red)),
                                      onPressed: () {
                                        Navigator.pop(dialogContext, true);
                                      }),
                                  TextButton(
                                      child: Text("Yes",
                                          style:
                                              TextStyle(color: Colors.black)),
                                      onPressed: () {
                                        Navigator.pop(dialogContext, false);
                                      })
                                ],
                              );
                            });
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CarouselSlider.builder(
                  carouselController: carouselController,
                  itemCount: imagePath.length,
                  itemBuilder: (_, index, __) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            imagePath[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 135,
                    );
                  },
                  options: CarouselOptions(
                    height: carouselCardHeight,
                    viewportFraction: 1,
                    autoPlay: true,
                    onPageChanged: (value, _) {
                      if (!mounted) return;
                      setState(() {
                        carouselIndex = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 3; i++)
                      GestureDetector(
                        onTap: () => carouselController.animateToPage(
                          i,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.fastOutSlowIn,
                        ),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                          width: carouselIndex == i ? 10 : 8,
                          height: carouselIndex == i ? 10 : 8,
                          decoration: BoxDecoration(
                            color: carouselIndex == i
                                ? primaryColor
                                : const Color(0xFFD9D9D9),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                DynamicHeightGridView(
                    itemCount: daftarMenu.length,
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 15,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    builder: (ctx, index) {
                      VoidCallback? actionOnTap;
                      int? countBadge;

                      switch (daftarMenu[index].judul) {
                        case "Checker":
                          actionOnTap = () async {
                            Navigator.pushNamed(
                              context,
                              ScanBarcodeView.routeName,
                            );
                          };
                          break;
                        case "Packing":
                          actionOnTap = () {
                            Navigator.pushNamed(
                              context,
                              MenuPackingView.routeName,
                            );
                          };
                          break;

                        case "Barang Lokasi":
                          actionOnTap = () {
                            Navigator.pushNamed(
                              context,
                              LokasiBarangView.routeName,
                            );
                          };
                          break;
                        case "LPB":
                          actionOnTap = () {};
                          break;
                      }

                      print("COUNT BADGE ? ${countBadge}");

                      return GestureDetector(
                        onTap: actionOnTap,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 2),
                                    color: Colors.black12,
                                    spreadRadius: 1,
                                    blurRadius: 10)
                              ]),
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Icon(
                                  daftarMenu[index].iconData,
                                  size: 42,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                daftarMenu[index].judul ?? '',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                  color: ThemeColors.blackPrimary,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: ElevatedButton(
          onPressed: () => handleLogOut(context),
          child: Text("Logout"),
        ),
      ),
    );
  }

  handleLogOut(BuildContext context) async {
    final bloc = context.read<AuthBloc>();
    final isYes =
        await handleFormSubmit(context, "Apakah anda yakin ingin keluar ?");

    if (isYes == true) {
      bloc.add(const AuthenticationLogoutRequested());
    }
  }
}
