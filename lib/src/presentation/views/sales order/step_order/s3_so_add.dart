import 'dart:async';
import 'dart:developer';

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/model/form_text_input.dart';
import 'package:sulinda_sales/src/core/utils/extensions.dart';
import 'package:sulinda_sales/src/core/utils/formatter.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_so.dart';
import 'package:sulinda_sales/src/data/models/response/barang/response_daftar_barang.dart';
import 'package:sulinda_sales/src/presentation/blocs/so/create/bloc/so_create_bloc.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20order/katalog_barang_view.dart';
import 'package:sulinda_sales/src/presentation/widgets/hero_widget.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_field_widget.dart';

class Step3Order extends StatefulWidget {
  const Step3Order({super.key, required this.isEdit});

  final bool isEdit;

  @override
  State<Step3Order> createState() => _Step3OrderState();
}

class _Step3OrderState extends State<Step3Order> {
  int counter = 0;

  List<TSoD>? daftarBarangSO;

  bool _isFirstTime = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var soBloc = context.read<SoCreateBloc>().state;
    _hitungTotalan(soBloc);
  }

  @override
  void initState() {
    var soBloc = context.read<SoCreateBloc>().state;
    if (widget.isEdit) {
      daftarBarangSO = List.from(soBloc.requestCreateSo?.tSoD ?? []);
    } else {
      daftarBarangSO = [];
    }

    super.initState();
    _hitungTotalan(soBloc);
  }

  final CurrencyTextInputFormatter _formatter =
      CurrencyTextInputFormatter.currency(
    enableNegative: false,
    decimalDigits: 0,
    symbol: '',
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BlocBuilder<SoCreateBloc, SoCreateState>(
            builder: (context, state) {
              daftarBarangSO = List.from(state.requestCreateSo?.tSoD ?? []);

              log("DAFTAR BARANG SO STATE?\n${daftarBarangSO}");

              // if (daftarBarangSO!.isNotEmpty) {
              //   _hitungTotalan(state);

              // }

              return ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: daftarBarangSO?.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  TSoD dataBarang = daftarBarangSO?[index] ?? TSoD();

                  FormTextInput fieldQtyBarang = FormTextInput.dirty(
                      textEditingController: TextEditingController(
                          text: dataBarang.tSoDQty.toString()));
                  FormTextInput fieldHargaBarang = FormTextInput.pure();

                  return Container(
                    margin: EdgeInsets.only(bottom: 12),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    child: ExpandablePanel(
                      theme: ExpandableThemeData(
                          headerAlignment:
                              ExpandablePanelHeaderAlignment.center),
                      header: Text(
                        "${dataBarang.mItemLongdesc}",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp),
                      ),
                      collapsed: SizedBox(),
                      expanded: Container(
                        margin: EdgeInsets.only(
                          top: 12.sp,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Divider(
                              color: Colors.black12,
                            ),
                            FormTextLabel(
                              label: "Qty",
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
                                    fieldQtyBarang.textEditingController,
                                hintText: "0",
                                keyboardType: TextInputType.number,
                                inputFormatters: [_formatter],
                                enabled: true,
                                // trailing: Icon(Icons.calendar_month),
                                textInputAction: TextInputAction.next,
                                onChanged: (qty) {
                                  // Handle the quantity change
                                  double nilaiQty = double.tryParse(qty
                                          .replaceAll('.', '')
                                          .replaceAll(',', '.')) ??
                                      0;
                                  int? newQty = nilaiQty.toInt() ?? 0;
                                  if (newQty != null) {
                                    int beratTotal = 0;
                                    int berat = newQty *
                                        daftarBarangSO![index]
                                            .mItemKonversi!
                                            .toInt();

                                    for (var i = 0;
                                        i < daftarBarangSO!.length;
                                        i++) {
                                      if (i != index) {
                                        beratTotal +=
                                            daftarBarangSO![i].tsoDBerat ?? 0;
                                      } else {
                                        beratTotal += berat;
                                      }
                                    }

                                    int tSOdByKirim = 0;

                                    int biayaKirim = int.tryParse(state
                                                .fieldBiayaKirim
                                                .textEditingController
                                                .text ??
                                            '0') ??
                                        0;

                                    log("BIAYA KIRIM BARANG CHANGED ${biayaKirim}");

                                    if (state.selectedTipePengiriman ==
                                        'Per KG') {
                                      tSOdByKirim = berat * biayaKirim;
                                    } else if (state.selectedTipePengiriman ==
                                        'Per Truck') {
                                      tSOdByKirim = ((biayaKirim / beratTotal) *
                                          berat) as int;
                                    } else {
                                      tSOdByKirim = 0;
                                    }

                                    log("BIAYA TSODKIRIM BARANG CHANGED ${tSOdByKirim}");

                                    daftarBarangSO![index] =
                                        daftarBarangSO![index].copyWith(
                                      tSoDQty: newQty,
                                      tsoDBerat: berat,
                                      tSoDBykirim: tSOdByKirim,
                                      tSoDAmt: (newQty *
                                              daftarBarangSO![index]
                                                  .tSoDPrice!
                                                  .toInt()) +
                                          tSOdByKirim,
                                    );
                                  }

                                  Timer(
                                      // ignore: prefer_const_constructors
                                      const Duration(seconds: 2), () async {
                                    setState(() {
                                      _hitungTotalan(state);
                                    });
                                  });

                                  // setState(() {});
                                },
                                errorText: null,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            FormTextLabel(
                              label: "Harga Satuan",
                              labelColor: fontColorBold,
                              mandatory: true,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Material(
                              color: Colors.transparent,
                              child: FormzTextField(
                                textEditingController: TextEditingController(
                                  text: '${dataBarang.tSoDPrice}',
                                ),
                                hintText: "0",
                                keyboardType: TextInputType.number,
                                inputFormatters: [_formatter],
                                // enabled: false,
                                // trailing: Icon(Icons.calendar_month),
                                textInputAction: TextInputAction.next,
                                onChanged: (harga) {
                                  double nilaiHarga = double.tryParse(harga
                                          .replaceAll('.', '')
                                          .replaceAll(',', '.')) ??
                                      0;
                                  int? newPrice = nilaiHarga.toInt() ?? 0;
                                  if (newPrice != null) {
                                    daftarBarangSO![index] =
                                        daftarBarangSO![index].copyWith(
                                      tSoDPrice: newPrice,
                                      tSoDAmt: (newPrice *
                                              daftarBarangSO![index]
                                                  .tSoDQty!
                                                  .toInt()) +
                                          daftarBarangSO![index].tSoDBykirim!,
                                    );
                                  }

                                  Timer(
                                      // ignore: prefer_const_constructors
                                      const Duration(seconds: 2), () async {
                                    setState(() {
                                      _hitungTotalan(state);
                                    });
                                  });
                                },
                                errorText: null,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            FormTextLabel(
                              label: "Unit Barang",
                              labelColor: fontColorBold,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Material(
                              color: Colors.transparent,
                              child: FormzTextField(
                                textEditingController: TextEditingController(
                                  text: '${dataBarang.tSoDUnit}',
                                ),
                                hintText: "0",
                                enabled: false,
                                keyboardType: TextInputType.number,
                                // trailing: Icon(Icons.calendar_month),
                                textInputAction: TextInputAction.next,
                                onChanged: (nama) {},
                                errorText: null,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            // FormTextLabel(
                            //   label: "Harga Satuan + By Kirim",
                            //   labelColor: fontColorBold,
                            // ),
                            // const SizedBox(
                            //   height: 6,
                            // ),
                            // Material(
                            //   color: Colors.transparent,
                            //   child: FormzTextField(
                            //     textEditingController: TextEditingController(
                            //       text:
                            //           '${(dataBarang.tSoDBykirim! / dataBarang.tSoDQty!) + dataBarang.tSoDPrice!} ',
                            //     ),
                            //     hintText: "0",
                            //     enabled: false,
                            //     keyboardType: TextInputType.number,
                            //     // trailing: Icon(Icons.calendar_month),
                            //     textInputAction: TextInputAction.next,
                            //     onChanged: (nama) {},
                            //     errorText: null,
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: 12,
                            // ),
                            // FormTextLabel(
                            //   label: "By Kirim",
                            //   labelColor: fontColorBold,
                            // ),
                            // const SizedBox(
                            //   height: 6,
                            // ),
                            // Material(
                            //   color: Colors.transparent,
                            //   child: FormzTextField(
                            //     textEditingController: TextEditingController(
                            //       text: '${dataBarang.tSoDBykirim!}',
                            //     ),
                            //     hintText: "0",
                            //     enabled: false,
                            //     keyboardType: TextInputType.number,
                            //     // trailing: Icon(Icons.calendar_month),
                            //     textInputAction: TextInputAction.next,
                            //     onChanged: (nama) {},
                            //     errorText: null,
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: 12,
                            // ),
                            FormTextLabel(
                              label: "Jumlah",
                              labelColor: fontColorBold,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Material(
                              color: Colors.transparent,
                              child: FormzTextField(
                                textEditingController: TextEditingController(
                                  text: '${kRupiahFormat.format(
                                    (dataBarang.tSoDPrice! *
                                            dataBarang.tSoDQty!.toDouble()) +
                                        dataBarang.tSoDBykirim!,
                                  )}',
                                ),
                                hintText: "0",
                                enabled: false,
                                // trailing: Icon(Icons.calendar_month),
                                textInputAction: TextInputAction.next,
                                onChanged: (nama) {},
                                errorText: null,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            FormTextLabel(
                              label: "Konversi Barang",
                              labelColor: fontColorBold,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Material(
                              color: Colors.transparent,
                              child: FormzTextField(
                                textEditingController: TextEditingController(
                                  text: '${dataBarang.mItemKonversi}',
                                ),
                                hintText: "0",
                                enabled: false,
                                // trailing: Icon(Icons.calendar_month),
                                textInputAction: TextInputAction.next,
                                onChanged: (nama) {},
                                errorText: null,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            FormTextLabel(
                              label: "Berat Barang",
                              labelColor: fontColorBold,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Material(
                              color: Colors.transparent,
                              child: FormzTextField(
                                textEditingController: TextEditingController(
                                  // text: () {
                                  //   int konversi =
                                  //       dataBarang.mItemKonversi ?? 0;
                                  //   int qty = dataBarang.tSoDQty ?? 0;

                                  //   var totalBerat = konversi * qty;

                                  //   return "${totalBerat}";
                                  // }(),
                                  text: '${dataBarang.tsoDBerat}',
                                ),
                                hintText: "0",
                                enabled: false,
                                // trailing: Icon(Icons.calendar_month),
                                textInputAction: TextInputAction.next,
                                onChanged: (nama) {},
                                errorText: null,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                final isYes =
                                    await context.showVerifikasiDialog(
                                        context: context,
                                        message: 'Hapus Barang Ini');

                                if (isYes) {
                                  setState(() {
                                    daftarBarangSO?.removeWhere(
                                      (element) =>
                                          element.mItemId == dataBarang.mItemId,
                                    );
                                    _hitungTotalan(state);
                                  });
                                }
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.delete_forever_rounded,
                                    color: Colors.red,
                                    size: 12.sp,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Hapus Barang",
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      side: BorderSide(
                                        color: Colors.red,
                                      ))),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
          SizedBox(
            height: 20,
          ),
          BlocBuilder<SoCreateBloc, SoCreateState>(
            builder: (context, state) {
              return ElevatedButton(
                onPressed: () async {
                  log("TAMBAH BARANG");
                  Navigator.pushNamed(
                    context,
                    KatalogBarangView.routeName,
                    arguments: daftarBarangSO,
                  ).then(
                    (value) {
                      if (value != null) {
                        if (value is List<DataBarang>) {
                          setState(() {
                            for (var element in value) {
                              int konversi =
                                  (element.mItemKonversi ?? 0).toInt();
                              int beli = (element.tSoDQty ?? 0).toInt();

                              int beratTotal = 0;
                              int berat = konversi * beli;

                              for (var i = 0; i < daftarBarangSO!.length; i++) {
                                if (element.mItemCode ==
                                    daftarBarangSO![i].mItemCode) {
                                  beratTotal += berat;
                                } else {
                                  beratTotal +=
                                      daftarBarangSO![i].tsoDBerat ?? 0;
                                }
                              }

                              int tSOdByKirim = 0;

                              int biayaKirim = int.tryParse(state
                                          .fieldBiayaKirim
                                          .textEditingController
                                          .text ??
                                      '0') ??
                                  0;

                              if (state.selectedTipePengiriman == 'Per KG') {
                                tSOdByKirim = berat * biayaKirim;
                              } else if (state.selectedTipePengiriman ==
                                  'Per Truck') {
                                tSOdByKirim =
                                    ((biayaKirim / beratTotal) * berat) as int;
                              } else {
                                tSOdByKirim = 0;
                              }

                              daftarBarangSO?.add(TSoD(
                                dataBarang: element,
                                jtFlag: element.jtFlag,
                                mItemCode: element.mItemCode,
                                mItemId: element.mItemId,
                                mItemJenis: element.mItemJenis,
                                mItemJtoKhususId: element.mItemJtoKhususId,
                                mItemKonversi: element.mItemKonversi?.toInt(),
                                mItemLongdesc: element.mItemLongdesc,
                                qtyStock: element.qtyStock?.toInt(),
                                tSoDUnitId: element.tSoDUnitId,
                                tsoDBerat: konversi * beli,
                                tSoDBykirim: tSOdByKirim,
                                tSoDAmt: (element.tSoDQty! *
                                        element.tSoDPrice!.toInt()) +
                                    tSOdByKirim,
                                tSoDId: element.tSoDId,
                                tSoDNote: element.tSoDNote,
                                tSoDPrice: element.tSoDPrice?.toInt(),
                                tSoDQty: element.tSoDQty,
                                tSoDUnit: element.tSoDUnit,
                              ));
                            }

                            _hitungTotalan(state);
                          });
                        }
                      }
                    },
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_circle_outline_rounded,
                      color: themeHijau,
                      size: 12.sp,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text("Tambah Barang"),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: themeHijauBg))),
              );
            },
          ),
          Divider(
            color: Colors.black12,
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Total Sebelum Diskon",
                  style: TextStyle(
                      color: fontColorBold, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "${kRupiahFormat.format(totalSebelumDiskon)}",
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: fontColorBold, fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Total DPP",
                  style: TextStyle(
                      color: fontColorBold, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "${kRupiahFormat.format(totalDPP)}",
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: fontColorBold, fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Total Diskon",
                  style: TextStyle(
                      color: fontColorBold, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "${kRupiahFormat.format(totalDiskon)}",
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: fontColorBold, fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Total PPN",
                  style: TextStyle(
                      color: fontColorBold, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "${kRupiahFormat.format(totalPPN)}",
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: fontColorBold, fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Total PPH 1",
                  style: TextStyle(
                      color: fontColorBold, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "${kRupiahFormat.format(totalPPH1)}",
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: fontColorBold, fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Total PPH 2",
                  style: TextStyle(
                      color: fontColorBold, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "${kRupiahFormat.format(totalPPH2)}",
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: fontColorBold, fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Total Setelah Pajak",
                  style: TextStyle(
                      color: fontColorBold, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "${kRupiahFormat.format(totalSetelahPajak)}",
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: fontColorBold, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ],
      ),
    );
  }

  double totalSebelumDiskon = 0;
  double totalDiskon = 0;
  double persenDiskon = 0;
  double totalDPP = 0;
  double totalPPN = 0;
  double totalPPH1 = 0;
  double totalPPH2 = 0;
  double totalSetelahPajak = 0;

  void _hitungTotalan(SoCreateState soCreateState) {
    log("TOTALAN S3 SO!");
    totalSebelumDiskon = 0;
    totalDiskon = 0;
    persenDiskon = 0;
    totalDPP = 0;
    totalPPN = 0;
    totalPPH1 = 0;
    totalPPH2 = 0;
    totalSetelahPajak = 0;

    double nilaiPPN = soCreateState.selectedPPN?.valuePct?.toDouble() ?? 0;
    double nilaiPPH1 = soCreateState.selectedPPH1?.valuePct?.toDouble() ?? 0;
    double nilaiPPH2 = soCreateState.selectedPPH2?.valuePct?.toDouble() ?? 0;

    for (var barang in daftarBarangSO!) {
      int totalBarang = barang.tSoDQty! * barang.tSoDPrice!;
      totalBarang += barang.tSoDBykirim!;
      totalSebelumDiskon += totalBarang;
    }

    totalDPP = totalSebelumDiskon / (nilaiPPN == 11 ? 1.11 : 1);

    persenDiskon = 0;

    log("SELCTED TIPE DISKON ${soCreateState.selectedTipeDiskon}");

    if (soCreateState.selectedTipeDiskon == 'P') {
      persenDiskon =
          double.tryParse(soCreateState.fieldAmountDiskon.value) ?? 0;

      totalDiskon = totalDPP * persenDiskon / 100;
      log("MASUK A ${totalDiskon} : ${persenDiskon}");
    } else {
      totalDiskon = double.tryParse(soCreateState.fieldAmountDiskon.value) ?? 0;

      persenDiskon = totalDiskon * 100 / totalDPP;
      log("MASUK B ${totalDiskon} : ${persenDiskon}");
    }

    totalDPP -= totalDiskon;

    totalPPN = totalDPP * nilaiPPN / 100;

    totalPPH1 = totalDPP * nilaiPPH1 / 100;
    totalPPH2 = totalDPP * nilaiPPH2 / 100;

    totalSetelahPajak = totalDPP + totalPPN;

    RequestCreateSo requestCreateSo =
        soCreateState.requestCreateSo ?? RequestCreateSo();

    //  List<TSoD>

    context.read<SoCreateBloc>().add(OnUpdateRequestCreateSO(
          requestSO: requestCreateSo.copyWith(
            tSoHDiscamt: totalDiskon,
            tSoHDiscpct: persenDiskon,
            tSoHPph1Amt: totalPPH1,
            tSoHPph2Amt: totalPPH2,
            tSoHTaxamt: totalPPN,
            tSoHTotaldpp: totalDPP,
            tSoHTotalamt: totalSebelumDiskon,
            tSoHTotalnetto: totalSetelahPajak,
            tSoD: daftarBarangSO,
          ),
        ));
  }
}
