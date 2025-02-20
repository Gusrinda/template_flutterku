import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sulinda_sales/src/core/config/theme_colors.dart';
import 'package:sulinda_sales/src/core/model/menu_model.dart';
import 'package:sulinda_sales/src/presentation/views/packing/packing_history_view.dart';
import 'package:sulinda_sales/src/presentation/views/packing/packing_list_view.dart';
import 'package:sulinda_sales/src/presentation/views/scanner/scan_barcode_view.dart';

class MenuPackingView extends StatefulWidget {
  const MenuPackingView({super.key});

  static const String routeName = "/menu_packing_view";

  @override
  State<MenuPackingView> createState() => _MenuPackingViewState();
}

class _MenuPackingViewState extends State<MenuPackingView> {
  @override
  Widget build(BuildContext context) {
    List<MenuModel> daftarMenu = [
      MenuModel(
        judul: 'Scan Barang',
        iconData: Ionicons.barcode,
      ),
      MenuModel(
        judul: 'History Scanner',
        iconData: Ionicons.newspaper_outline,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Packing Warehouse"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            DynamicHeightGridView(
                itemCount: daftarMenu.length,
                crossAxisCount: 1,
                crossAxisSpacing: 16,
                mainAxisSpacing: 15,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                builder: (ctx, index) {
                  VoidCallback? actionOnTap;
                  int? countBadge;

                  switch (daftarMenu[index].judul) {
                    case "Scan Barang":
                      actionOnTap = () async {
                        Navigator.pushNamed(
                          context,
                          PackingListView.routeName,
                        );
                      };
                      break;
                    case "History Scanner":
                      actionOnTap = () async {
                        Navigator.pushNamed(
                          context,
                          PackingHistoryView.routeName,
                        );
                      };
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
    );
  }
}
