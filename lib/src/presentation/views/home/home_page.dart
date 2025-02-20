import 'dart:developer';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ionicons/ionicons.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:restart_app/restart_app.dart';
import 'package:sulinda_sales/core.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/config/theme_colors.dart';
import 'package:sulinda_sales/src/core/model/TargetBulan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:sulinda_sales/src/core/model/menu_model.dart';
import 'package:sulinda_sales/src/core/model/status_page.dart';
import 'package:sulinda_sales/src/core/utils/dialogs.dart';
import 'package:sulinda_sales/src/core/utils/formatter.dart';
import 'package:sulinda_sales/src/data/models/response/so/response_list_so.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_list_plan.dart';
import 'package:sulinda_sales/src/presentation/blocs/auth/auth_bloc.dart';
import 'package:sulinda_sales/src/presentation/blocs/home/bloc/homepage_bloc.dart';
import 'package:sulinda_sales/src/presentation/views/customer/form_pengajuan_customer.dart';
import 'package:sulinda_sales/src/presentation/views/lokasi/lokasi_barang_view.dart';
import 'package:sulinda_sales/src/presentation/views/packing/menu_packing_view.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20activity/activity_list_view.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20order/katalog_barang_awal_view.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20order/so_list_view.dart';
import 'package:sulinda_sales/src/presentation/views/scanner/scan_barcode_view.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_widget.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../core/assets/assets.gen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _requestPermissions();
      context.read<HomepageBloc>().add(FetchDataAwal('userID'));
    });
  }

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

  // // Dummy data
  // final List<Map<String, String>> customerData = [
  //   {
  //     'tipe': 'Tagihan',
  //     'namaCustomer': 'John Doe',
  //     'namaLokasi': 'Jakarta Selatan',
  //     'alamatLokasi': 'Jl. Sudirman No. 45'
  //   },
  //   {
  //     'tipe': 'Ambil Order',
  //     'namaCustomer': 'Jane Smith',
  //     'namaLokasi': 'Surabaya Barat',
  //     'alamatLokasi': 'Jl. Pahlawan No. 123'
  //   },
  //   {
  //     'tipe': 'Tagihan',
  //     'namaCustomer': 'Michael Tan',
  //     'namaLokasi': 'Bandung Utara',
  //     'alamatLokasi': 'Jl. Dago Atas No. 12'
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    final userLoggedIn = context.read<AuthBloc>().state.loginUser;

    var size = MediaQuery.of(context).size;

    return BlocListener<HomepageBloc, HomepageState>(
      listener: (context, state) {
        if (state.statusGetDataDetail == LoadingPageStatus.success) {
          Navigator.pushNamed(
            context,
            CheckInView.routeName,
            arguments: {
              'header': state.selectedPlan,
              'body': state.responseDetailSO
            },
          );
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Container(
              height: size.height * 0.3,
              child: Stack(
                children: [
                  Container(
                    height: size.height * 0.25,
                    decoration: BoxDecoration(
                        color: themeHijauBg,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50))),
                  ),
                  SafeArea(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                      child: Column(
                        children: [
                          Expanded(
                            child: SizedBox(),
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundImage: AssetImage(
                                  Assets.images
                                      .a4c64e475ffafa63815031a099d04f5e2.path,
                                ), // Path ke gambar
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hello, ${userLoggedIn?.userName}!",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      "${userLoggedIn?.userType}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              SvgPicture.asset(
                                Assets.svg.bellFill,
                              )
                            ],
                          ),
                          Expanded(
                            child: SizedBox(),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                SalesOrderListView.routeName,
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(1, 1))
                                ],
                                border: Border.all(
                                  color: Colors.black12,
                                ),
                              ),
                              child: IntrinsicHeight(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Sales Order Bulan Ini",
                                            style: TextStyle(
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          BlocBuilder<HomepageBloc,
                                              HomepageState>(
                                            builder: (context, state) {
                                              if (state.statusPage !=
                                                  LoadingPageStatus.success) {
                                                return CupertinoActivityIndicator();
                                              } else {
                                                return Text(
                                                  "${state.responseSummarySO?.data?.totalOrder}",
                                                  style: TextStyle(
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black),
                                                );
                                              }
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    VerticalDivider(
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Order Need Posting",
                                            style: TextStyle(
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          BlocBuilder<HomepageBloc,
                                              HomepageState>(
                                            builder: (context, state) {
                                              if (state.statusPage !=
                                                  LoadingPageStatus.success) {
                                                return CupertinoActivityIndicator();
                                              } else {
                                                List<DataListSO> daftarSO =
                                                    List.from(state
                                                            .responseListSo
                                                            ?.data ??
                                                        []);

                                                int jumlah = 0;

                                                for (var element in daftarSO) {
                                                  log('STATUS ELEMENT ${element.tSoHStatus}');
                                                  if (element.tSoHStatus ==
                                                      'In Process') {
                                                    jumlah++;
                                                  }
                                                }

                                                return Text(
                                                  "${daftarSO.where(
                                                        (element) =>
                                                            element
                                                                .tSoHStatus ==
                                                            'In Process',
                                                      ).length}",
                                                  style: TextStyle(
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black),
                                                );
                                              }
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                // physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                children: [
                  HeaderLabel("Menu"),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: MenuButton(
                          bgColor: Color(0xFFe5f3fa),
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              SalesOrderListView.routeName,
                            );
                          },
                          svgPath: Assets.svg.documentSvgrepoCom11,
                          title: "Sales Order\nDraft",
                        ),
                      ),
                      Expanded(
                        child: MenuButton(
                          bgColor: Color(0xFFe5f3fa),
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              KatalogBarangAwalView.routeName,
                            );
                          },
                          svgPath: Assets.svg.documentSvgrepoCom11,
                          title: "View Barang",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: MenuButton(
                          bgColor: Color(0xFFffe8e8),
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              SalesActivityListView.routeName,
                            );
                          },
                          svgPath: Assets.svg.pinAltSvgrepoCom1,
                          title: "Sales\nActivity",
                        ),
                      ),
                      Expanded(
                        child: MenuButton(
                          bgColor: Color(0xFFfffee7),
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              FormPengajuanCustomerView.routeName,
                            );
                          },
                          svgPath: Assets.svg.userAddSvgrepoCom1,
                          title: "Pengajuan Customer\nBaru",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  HeaderLabel("Today Task"),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                   height: 225,  // Set tinggi untuk horizontal ListView
                    child: BlocBuilder<HomepageBloc, HomepageState>(
                      builder: (context, state) {
                        if (state.statusPage != LoadingPageStatus.success) {
                          return CupertinoActivityIndicator();
                        } else {
                          List<DataListPlan> dataPlan = List.from(
                              state.responseListTodayPlan?.data ?? []);

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            itemCount: dataPlan.length,
                            itemBuilder: (context, index) {
                              final customer = dataPlan[index];
                              return InkWell(
                                onTap: () {
                                  context.read<HomepageBloc>().add(
                                      GetDetailPlan(selectedPlan: customer));
                                },
                                child: Container(
                                  width: 186, // Set lebar Container
                                  // height: 300,
                                  margin: EdgeInsets.only(right: 20),
                                  padding: const EdgeInsets.all(16.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      border:
                                          Border.all(color: Colors.black12)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                color: customer.activityType!
                                                            .toLowerCase() ==
                                                        'tagihan'
                                                    ? Color(0xFF9747FF)
                                                    : Color(0xFF21E9A9),
                                                shape: BoxShape.circle),
                                            child: Container(),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "${customer.activityType}",
                                            style: TextStyle(
                                              color: fontColorThin,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        '${customer.mCustName}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        'Nama Lokasi',
                                        style: const TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        '${customer.mCustDAddrName == '' ? '-' : customer.mCustDAddrName}',
                                        style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        'Alamat Lokasi',
                                        style: const TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Expanded(
                                        child: Text(
                                          '${customer.mCustDAddrAddress == '' ? '-' : customer.mCustDAddrAddress}',
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  HeaderLabel("On Going Activity"),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 225, // Set tinggi untuk horizontal ListView
                    child: BlocBuilder<HomepageBloc, HomepageState>(
                      builder: (context, state) {
                        if (state.statusPage != LoadingPageStatus.success) {
                          return CupertinoActivityIndicator();
                        } else {
                          List<DataListPlan> dataPlan = List.from(
                              state.responseListOnGoingPlan?.data ?? []);

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            itemCount: dataPlan.length,
                            itemBuilder: (context, index) {
                              final customer = dataPlan[index];
                              return InkWell(
                                onTap: () async {
                                  // context.read<HomepageBloc>().add(
                                  //     GetDetailPlan(selectedPlan: customer));
                                },
                                child: Container(
                                  width: 186, // Set lebar Container
                                  margin: EdgeInsets.only(right: 20),
                                  padding: const EdgeInsets.all(16.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      border:
                                          Border.all(color: Colors.black12)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                color: customer.activityType!
                                                            .toLowerCase() ==
                                                        'tagihan'
                                                    ? Color(0xFF9747FF)
                                                    : Color(0xFF21E9A9),
                                                shape: BoxShape.circle),
                                            child: Container(),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            "${customer.activityType}",
                                            style: TextStyle(
                                              color: fontColorThin,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        '${customer.mCustName}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        'Nama Lokasi',
                                        style: const TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        '${customer.mCustDAddrName == '' ? '-' : customer.mCustDAddrName}',
                                        style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        'Alamat Lokasi',
                                        style: const TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        '${customer.mCustDAddrAddress == '' ? '-' : customer.mCustDAddrAddress}',
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    required this.title,
    required this.svgPath,
    required this.bgColor,
    required this.onTap,
  });

  final String title;
  final String svgPath;
  final Color bgColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bgColor,
            ),
            padding: EdgeInsets.all(10),
            child: SvgPicture.asset(svgPath),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "${title}",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: fontColorBold,
              fontSize: 10.sp,
            ),
          )
        ],
      ),
    );
  }
}
