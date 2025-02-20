import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sulinda_sales/src/core/assets/assets.gen.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/config/theme_colors.dart';

import 'package:sulinda_sales/src/core/model/status_page.dart';
import 'package:sulinda_sales/src/core/utils/extensions.dart';
import 'package:sulinda_sales/src/core/utils/formatter.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_list_plan.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_save_plan.dart';
import 'package:sulinda_sales/src/presentation/blocs/visiting/list/bloc/visiting_list_bloc.dart';
import 'package:sulinda_sales/src/presentation/views/customer/form_pengajuan_customer.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20activity/realisasi/check_in_view.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20activity/visiting_plan_add.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20order/so_add_view.dart';

class SalesActivityListView extends StatefulWidget {
  const SalesActivityListView({super.key});

  static const String routeName = "/activity_list_view";

  @override
  State<SalesActivityListView> createState() => _SalesActivityListViewState();
}

class _SalesActivityListViewState extends State<SalesActivityListView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<VisitingListBloc>().add(GetDaftarData());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<VisitingListBloc, VisitingListState>(
      listener: (context, state) {
        if (state.statusPage == LoadingPageStatus.failure) {
          context.showErrorToast("Error load data!.");
          Navigator.pop(context);
          return;
        }

        if (state.statusPage == LoadingPageStatus.success) {
          context.showOkToast("Berhasil load data.");
        }

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
        // backgroundColor: themeHijauBg,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: themeHijauBg,
          title: Text(
            "Sales Activity",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              BlocBuilder<VisitingListBloc, VisitingListState>(
                builder: (context, state) {
                  if (state.statusPage == LoadingPageStatus.loading) {
                    return Center(
                      child: CupertinoActivityIndicator(),
                    );
                  }

                  if (state.statusPage == LoadingPageStatus.success) {
                    List<DataListPlan> daftarData =
                        List.from(state.responseListSo?.data ?? []);

                    if (daftarData.isEmpty) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              Assets.images.addProduk.path,
                              height: 200,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Daftar Data Kosong",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ThemeColors.blackPrimary,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      );
                    }

                    return Expanded(
                      child: ListView.builder(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                        itemCount: daftarData.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () async {
                              context.read<VisitingListBloc>().add(
                                    GetDetailSO(
                                      selectedPlan: daftarData[index],
                                    ),
                                  );
                            },
                            child: Container(
                              margin: EdgeInsets.only(bottom: 12),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(10)),
                              child: ExpandablePanel(
                                theme: ExpandableThemeData(
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center),
                                header: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color:
                                            daftarData[index].isPlaning == true
                                                ? Color(0xFFc5d8b6)
                                                : Colors.red,
                                        shape: BoxShape.circle,
                                      ),
                                      child: SvgPicture.asset(
                                        Assets.svg.pim,
                                        color: Colors.white,
                                      ),
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
                                            "${daftarData[index].mCustName}",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF49525D)),
                                          ),
                                          IntrinsicHeight(
                                            child: Row(
                                              children: [
                                                Text(
                                                  'DRAFT-${daftarData[index].tSalesActivityId}',
                                                  style: TextStyle(
                                                      fontSize: 10.sp,
                                                      color: Color(0xFF49525D)),
                                                ),
                                                VerticalDivider(
                                                  color: Colors.black12,
                                                ),
                                                Text(
                                                  kDateFullMonthFormat.format(
                                                      DateTime.parse(daftarData[
                                                                  index]
                                                              .planStart ??
                                                          '2024-11-28T00:00:00')),
                                                  style: TextStyle(
                                                      fontSize: 10.sp,
                                                      color: Color(0xFF49525D)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                collapsed: SizedBox(),
                                expanded: Container(
                                  margin: EdgeInsets.only(
                                    top: 12.sp,
                                  ),
                                  child: InkWell(
                                    onTap: () async {},
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Text(
                                                "Jenis Kunjungan",
                                                style: TextStyle(
                                                  color: fontColorThin,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Text(
                                                "${daftarData[index].isPlaning == true ? 'Plan' : 'Unplanned'}",
                                                style: TextStyle(
                                                  color: fontColorBold,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Text(
                                                "Jenis Kunjungan",
                                                style: TextStyle(
                                                  color: fontColorThin,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Text(
                                                "${daftarData[index].planGlag}",
                                                style: TextStyle(
                                                  color: fontColorBold,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Text(
                                                "Nama Lokasi",
                                                style: TextStyle(
                                                  color: fontColorThin,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Text(
                                                "${daftarData[index].mCustDAddrName}",
                                                style: TextStyle(
                                                  color: fontColorBold,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Text(
                                                "Alamat Lokasi",
                                                style: TextStyle(
                                                  color: fontColorThin,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Text(
                                                "${daftarData[index].mCustDAddrAddress}",
                                                style: TextStyle(
                                                  color: fontColorBold,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Text(
                                                "Piutang",
                                                style: TextStyle(
                                                  color: fontColorThin,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Text(
                                                "${kRupiahFormat.format(daftarData[index].jumlahPiutang ?? 0)}",
                                                style: TextStyle(
                                                  color: fontColorBold,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              context
                                                  .read<VisitingListBloc>()
                                                  .add(
                                                    GetDetailSO(
                                                      selectedPlan:
                                                          daftarData[index],
                                                    ),
                                                  );
                                            },
                                            child: Text(
                                                "Lakukan Visiting Customer"))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );

                          // return InkWell(
                          //   onTap: () async {

                          //   },
                          //   child: Container(
                          //     margin: EdgeInsets.only(bottom: 12),
                          //     padding: EdgeInsets.symmetric(
                          //       horizontal: 12,
                          //       vertical: 14,
                          //     ),
                          //     decoration: BoxDecoration(
                          //         color: Colors.white,
                          //         borderRadius: BorderRadius.circular(
                          //           10,
                          //         ),
                          //         boxShadow: [
                          //           BoxShadow(
                          //               blurRadius: 4,
                          //               offset: Offset(0, 5),
                          //               color: Colors.black12)
                          //         ]),
                          //     child: Column(
                          //       children: [
                          //         Divider(
                          //           color: Colors.black12,
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // );
                        },
                      ),
                    );
                  }

                  return Expanded(
                      child: Center(
                    child: Text("Error load data, refresh page."),
                  ));
                },
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: themeHijau,
          onPressed: () async {
            await formPengajuanCustomerBaru(context).then(
              (value) {
                if (value != null) {
                  if (value == true) {
                    Navigator.pushNamed(
                      context,
                      FormPengajuanCustomerView.routeName,
                    );
                  } else {
                    Navigator.pushNamed(
                      context,
                      VisitingPlanAdd.routeName,
                    ).then(
                      (value) {
                        if (value != null) {
                          ResponseSavePlan responseSavePlan =
                              value as ResponseSavePlan;

                          if (value.data?.isPlaning == false) {
                            context
                                .read<VisitingListBloc>()
                                .add(GetDetailSOUnplan(responseSavePlan: value));
                          } else {
                            context
                                .read<VisitingListBloc>()
                                .add(GetDaftarData());
                          }
                        }
                      },
                    );
                  }
                }
              },
            );
          },
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }

  Future<bool?> formPengajuanCustomerBaru(BuildContext context) async {
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
                  "Mengajukan Customer Baru?",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 48,
                ),
                SvgPicture.asset(Assets.svg.undrawPersonalizationReGrty1),
                const SizedBox(
                  height: 48,
                ),
                Text(
                  "Ajukan customer baru apabila  customer belum terdaftar sebelumnya!",
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
                            "Tidak",
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
                            "Ajukan Baru",
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
