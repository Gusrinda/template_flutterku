import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soa_jpt/src/core/assets/assets.gen.dart';
import 'package:soa_jpt/src/core/config/constant.dart';
import 'package:soa_jpt/src/core/config/theme_colors.dart';
import 'package:soa_jpt/src/data/models/dummy/model_dummy_barang.dart';
import 'package:soa_jpt/src/presentation/widgets/text_field_widget.dart';
import 'package:soa_jpt/src/presentation/widgets/text_widget.dart';

class LokasiBarangView extends StatefulWidget {
  const LokasiBarangView({super.key});

  static const String routeName = "/lokasi_barang_view";

  @override
  State<LokasiBarangView> createState() => _LokasiBarangViewState();
}

class _LokasiBarangViewState extends State<LokasiBarangView> {
  String selectedFilter = '';
  List<String> daftarFilter = ["CODE", "NAME", "MERK", "LOCATION"];
  List<ModelDummySelectedBarang> daftarSelectedBarang = [];

  List<ModelDummySelectedBarang> daftarFilterBarang = [];
  @override
  void initState() {
    selectedFilter = daftarFilter.first;
    daftarSelectedBarang = daftarDummyBarang.map(
      (e) {
        return ModelDummySelectedBarang(isSelected: false, modelBarang: e);
      },
    ).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Lokasi Barang"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  DropdownButton(
                    value: selectedFilter,
                    items: List.from(daftarFilter.map(
                        (e) => DropdownMenuItem(value: e, child: Text(e)))),
                    onChanged: (value) {
                      setState(() {
                        selectedFilter = value as String;
                      });
                    },
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: SearchFieldGrayBar(
                        hintText: "Search",
                        fillColor: ThemeColors.grey6,
                        onSubmitted: (value) {}),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: daftarSelectedBarang.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              Assets.images.produk1.path,
                              height: 72,
                              width: 72,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${daftarSelectedBarang[index].modelBarang?.nama}",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,
                                    color: fontColorBold,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "${daftarSelectedBarang[index].modelBarang?.code}",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    color: fontColorThin,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "QTY ${index + Random().nextInt(6)}",
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  color: fontColorThin,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Lokasi Ab.02",
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  color: fontColorThin,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
