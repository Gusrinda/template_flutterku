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
import 'package:sulinda_sales/src/data/models/response/so/response_list_so.dart';
import 'package:sulinda_sales/src/presentation/blocs/so/list/bloc/so_list_bloc.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20order/so_add_view.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20order/so_detail_view.dart';

class SalesOrderListView extends StatefulWidget {
  const SalesOrderListView({super.key});

  static const String routeName = "/so_list_view";

  @override
  State<SalesOrderListView> createState() => _SalesOrderListViewState();
}

class _SalesOrderListViewState extends State<SalesOrderListView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SoListBloc>().add(GetDaftarData());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SoListBloc, SoListState>(
      listener: (context, state) {
        if (state.statusGetDataDetail == LoadingPageStatus.success) {
          Navigator.pushNamed(context, SoDetailView.routeName, arguments: {
            'header': state.dataHeaderSO,
            'body': state.responseDetailSO
          }).then(
            (value) {
              context.read<SoListBloc>().add(GetDaftarData());
            },
          );
        }

        if (state.statusPage == LoadingPageStatus.failure) {
          context.showErrorToast("Error load data!.");
          Navigator.pop(context);
          return;
        }

        if (state.statusPage == LoadingPageStatus.success) {
          context.showOkToast("Berhasil load data.");
        }
      },
      child: Scaffold(
        // backgroundColor: themeHijauBg,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: themeHijauBg,
          title: Text(
            "Sales Order",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              BlocBuilder<SoListBloc, SoListState>(
                builder: (context, state) {
                  if (state.statusPage == LoadingPageStatus.loading) {
                    return Center(
                      child: CupertinoActivityIndicator(),
                    );
                  }

                  if (state.statusPage == LoadingPageStatus.success) {
                    List<DataListSO> daftarData =
                        List.from(state.responseListSo?.data ?? []);

                    if (daftarData.isEmpty) {
                      return Expanded(
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
                      ));
                    }

                    return Expanded(
                      child: ListView.builder(
                        // physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(vertical: 8),
                        itemCount: daftarData.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () async {
                              context.read<SoListBloc>().add(
                                  GetDetailSO(dataHeader: daftarData[index]));
                            },
                            child: Container(
                              margin: EdgeInsets.only(bottom: 12),
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 14,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                                border: Border.all(
                                  color: Colors.black12,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFc5d8b6),
                                      shape: BoxShape.circle,
                                    ),
                                    child: SvgPicture.asset(
                                        Assets.svg.invoiceSvgrepoCom22),
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
                                        Text(
                                          kDateFullMonthFormat.format(
                                              DateTime.parse(daftarData[index]
                                                      .tSoHCustPoDate ??
                                                  '2024-11-28T00:00:00')),
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              color: Color(0xFF49525D)),
                                        ),
                                        SizedBox(
                                          width: 0,
                                        ),
                                        Text(
                                          'STATUS : ${daftarData[index].tSoHStatus}',
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              color: Color(0xFF49525D)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.keyboard_arrow_right_rounded,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }

                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        IconButton(
                            onPressed: () {
                              context.read<SoListBloc>().add(GetDaftarData());
                            },
                            icon: Icon(Icons.refresh_rounded)),
                        SizedBox(
                          height: 12,
                        ),
                        Text("Error load data, refresh page."),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: themeHijau,
          onPressed: () async {
            Navigator.pushNamed(
              context,
              SoAddView.routeName,
            ).then(
              (value) {
                if (value != null) {
                  if (value == true) {
                    context.read<SoListBloc>().add(GetDaftarData());
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
}
