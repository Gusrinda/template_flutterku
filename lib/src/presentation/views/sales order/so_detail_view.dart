import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:intl/intl.dart';
import 'package:sulinda_sales/src/core/assets/assets.gen.dart';
import 'package:sulinda_sales/src/core/config/constant.dart';
import 'package:sulinda_sales/src/core/config/theme_colors.dart';
import 'package:sulinda_sales/src/core/utils/dialogs.dart';
import 'package:sulinda_sales/src/core/utils/extensions.dart';
import 'package:sulinda_sales/src/core/utils/formatter.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_so.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_daftar_pph.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_daftar_ppn.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_daftar_wilayah.dart';
import 'package:sulinda_sales/src/data/models/response/so/response_detail_so.dart';
import 'package:sulinda_sales/src/data/models/response/so/response_list_so.dart';
import 'package:sulinda_sales/src/presentation/blocs/general/bloc/general_bloc.dart';
import 'package:sulinda_sales/src/presentation/blocs/so/create/bloc/so_create_bloc.dart';
import 'package:sulinda_sales/src/presentation/views/sales%20order/so_add_view.dart';
import 'package:sulinda_sales/src/presentation/widgets/text_widget.dart';

class SoDetailView extends StatefulWidget {
  const SoDetailView(
      {super.key,
      //  required this.dataHeader,
      required this.dataBody});

  static const String routeName = "/so_detail_view";

  // final DataListSO dataHeader;
  final ResponseDetailSo dataBody;

  @override
  State<SoDetailView> createState() => _SoDetailViewState();
}

class _SoDetailViewState extends State<SoDetailView> {
  @override
  Widget build(BuildContext context) {
    DataDetailSO dataHeaderSO = widget.dataBody.data!;

    List<BarangDetailSO> daftarBarang = widget.dataBody.data!.tSoD!;

    return BlocListener<SoCreateBloc, SoCreateState>(
      listener: (context, state) {
        if (state.formUpload == FormzStatus.submissionFailure) {
          context.showErrorToast(state.error ?? 'Error Posting data');
          return;
        }

        if (state.formUpload == FormzStatus.submissionSuccess) {
          context.showOkToast("Berhasil Posting data");
          Navigator.pop(context, true);
        }

        if (state.formSetupEditSO == FormzStatus.submissionSuccess) {
          context.showOkToast("Editing data...");
          Navigator.pushNamed(
            context,
            SoAddView.routeName,
            arguments: state.editingDataSo,
          ).then(
            (value) {
              Navigator.pop(context, true);
            },
          );
        }
      },
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: themeHijauBg,
            title: Text("Detail Sales Order"),
          ),
          body: Column(
            children: [
              TabBar(
                labelPadding: EdgeInsets.zero,
                indicator: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: primaryColor, width: 1.0),
                  ),
                ),
                indicatorPadding:
                    EdgeInsets.only(bottom: 6, left: 10, right: 10),
                labelColor: primaryColor,
                unselectedLabelColor: ThemeColors.grey4,
                tabs: [
                  Tab(
                    child: Text(
                      "Header",
                      style: TextStyle(
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Daftar Item",
                      style: TextStyle(
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: TabBarView(children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "PO NO",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  HeaderLabel("${dataHeaderSO.tSoHCustPoNo}"),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Status",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  HeaderLabel("${dataHeaderSO.tSoHStatus}"),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "PO Date",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        HeaderLabel(
                            "${kDateFullMonthFormat.format(DateTime.parse(dataHeaderSO.tSoHCustPoDate!))}"),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Customer",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        HeaderLabel("${dataHeaderSO.tSoHCustNamacetak}"),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Discount Type",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  HeaderLabel("${dataHeaderSO.tSoHDisctype}"),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Discount Amt",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  HeaderLabel(
                                      "${kRupiahFormat.format(dataHeaderSO.tSoHDiscamt)}"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "PPN",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  HeaderLabel("${dataHeaderSO.tSoHTaxpct}"),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "PPN Amt",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  HeaderLabel(
                                      "${kRupiahFormat.format(dataHeaderSO.tSoHTaxamt)}"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "PPH1",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  HeaderLabel("${dataHeaderSO.tSoHPph1Pct}"),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "PPH1 Amt",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  HeaderLabel(
                                      "${kRupiahFormat.format(dataHeaderSO.tSoHPph1Amt)}"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "PPH2",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  HeaderLabel("${dataHeaderSO.tSoHPph2Pct}"),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "PPH2 Amt",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  HeaderLabel(
                                      "${kRupiahFormat.format(dataHeaderSO.tSoHPph2Amt)}"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Total DPP",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  HeaderLabel(
                                      "${kRupiahFormat.format(dataHeaderSO.tSoHTotaldpp)}"),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Total Netto",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  HeaderLabel(
                                      "${kRupiahFormat.format(dataHeaderSO.tSoHTotalnetto)}"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Catatan",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        HeaderLabel(
                            "${dataHeaderSO.tSoHNote == '' ? '-' : dataHeaderSO.tSoHNote}"),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: daftarBarang.length,
                            itemBuilder: (context, index) {
                              return CardCartProduct(
                                dataBarang: daftarBarang[index],
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              )
            ],
          ),
          bottomNavigationBar: dataHeaderSO.tSoHStatus != 'In Process'
              ? SizedBox()
              : SafeArea(
                  minimum: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange),
                            onPressed: () async {
                              final isSimpan = await showVerifikasiDialog(
                                  context: context,
                                  message: "Apakah Anda yakin edit SO ini?");

                              List<BarangDetailSO> daftarTsoD =
                                  List.from(widget.dataBody.data?.tSoD ?? []);

                              RequestCreateSo requestCreateSo = RequestCreateSo(
                                tSoHId: widget.dataBody.data?.tSoHId,
                                //FORM 1
                                mCustId: widget.dataBody.data?.mCustId,
                                tSoHGrupWilayahId:
                                    widget.dataBody.data?.tSoHGrupWilayahId,
                                tSoHCustNamacetak:
                                    widget.dataBody.data?.tSoHCustNamacetak,
                                tSoHCustPoNo:
                                    widget.dataBody.data?.tSoHCustPoNo,
                                tSoHCustPoDate:
                                    widget.dataBody.data?.tSoHCustPoDate,
                                tSoHNote: widget.dataBody.data?.tSoHNote,

                                //FORM 2
                                tSoHTipeBykirim: 'Per KG',
                                tSoHTotalBykirim:
                                    widget.dataBody.data?.tSoHTotalBykirim,
                                tSoHDisctype:
                                    widget.dataBody.data?.tSoHDisctype,
                                tSoHDiscpct: widget.dataBody.data?.tSoHDiscpct,
                                tSoHDiscamt: widget.dataBody.data?.tSoHDiscamt,
                                tSoHTaxtype: widget.dataBody.data?.tSoHTaxtype,
                                tSoHTaxpct: widget.dataBody.data?.tSoHTaxpct,
                                tSoHTaxamt: widget.dataBody.data?.tSoHTaxamt,
                                tSoHPph1Id: widget.dataBody.data?.tSoHPph1Id,
                                tSoHPph1Pct: widget.dataBody.data?.tSoHPph1Pct,
                                tSoHPph1Amt: widget.dataBody.data?.tSoHPph1Amt,
                                tSoHPph2Id: widget.dataBody.data?.tSoHPph2Id,
                                tSoHPph2Pct: widget.dataBody.data?.tSoHPph2Pct,
                                tSoHPph2Amt: widget.dataBody.data?.tSoHPph2Amt,

                                //FORM3
                                tSoHTotaldpp:
                                    widget.dataBody.data?.tSoHTotaldpp,
                                tSoHTotalamt:
                                    widget.dataBody.data?.tSoHTotalamt,
                                tSoHTotalnetto:
                                    widget.dataBody.data?.tSoHTotalnetto,
                                tSoD: daftarTsoD.map(
                                  (e) {
                                    return TSoD(
                                      jtFlag: e.jtFlag,
                                      mItemCode: e.mItemCode,
                                      mItemId: e.mItemId,
                                      mItemJenis: e.mItemJenis,
                                      mItemJtoKhususId: e.mItemJtoKhususId,
                                      mItemKonversi: e.mItemKonversi?.toInt(),
                                      mItemLongdesc: e.mItemLongdesc,
                                      qtyStock: e.qtyStock,
                                      tSoDAmt: e.tSoDAmt?.toInt(),
                                      tSoDBykirim: e.tSoDBykirim,
                                      tSoDId: e.tSoDId,
                                      tSoDNote: e.tSoDNote,
                                      tSoDPrice: e.tSoDPrice?.toInt(),
                                      tSoDQty: e.tSoDQty,
                                      tSoDUnit: e.tSoDUnit,
                                      tSoDUnitId: e.tSoDUnitId,
                                    );
                                  },
                                ).toList(),
                              );

                              final blocWilayah = context.read<GeneralBloc>();

                              List<DataWilayah> wilayahs = List.from(
                                  blocWilayah.state.daftarWilayah ?? []);

                              log("WILAYAH REQUEST ${requestCreateSo.tSoHGrupWilayahId}");
                              log("WILAYAH DATA ${wilayahs}");

                              List<DataPPH> pphs =
                                  List.from(blocWilayah.state.daftarPPH ?? []);

                              List<DataPPN> ppns =
                                  List.from(blocWilayah.state.daftarPPN ?? []);

                              EditingDataSO editingDataSO = EditingDataSO(
                                selectedPPH1: pphs
                                    .where((element) =>
                                        element.value ==
                                        requestCreateSo.tSoHPph1Id.toString())
                                    .first,
                                selectedPPH2: pphs
                                    .where((element) =>
                                        element.value ==
                                        requestCreateSo.tSoHPph2Id.toString())
                                    .first,
                                selectedPPN: ppns
                                    .where((element) =>
                                        element.value ==
                                        requestCreateSo.tSoHTaxtype.toString())
                                    .first,
                                selectedWilayah: wilayahs
                                    .where((element) =>
                                        element.value ==
                                        requestCreateSo.tSoHGrupWilayahId
                                            .toString())
                                    .first,
                                selectedTipeDiskon:
                                    requestCreateSo.tSoHDisctype,
                                tanggalCreateSO: DateTime.tryParse(
                                        requestCreateSo.tSoHCustPoDate ??
                                            '2024-11-29T00:00:00') ??
                                    DateTime.now(),
                                requestCreateSo: requestCreateSo,
                              );

                              if (isSimpan != null) {
                                if (isSimpan) {
                                  context.read<SoCreateBloc>().add(SetupEditSO(
                                        request: requestCreateSo,
                                        editingData: editingDataSO,
                                      ));
                                }
                              }
                            },
                            child: Text("Edit SO DRAFT")),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () async {
                              final isSimpan = await showVerifikasiDialog(
                                  context: context,
                                  message: "Apakah Anda yakin posting SO ini?");

                              if (isSimpan != null) {
                                if (isSimpan) {
                                  context.read<SoCreateBloc>().add(OnPostingSO(
                                      idSO: widget.dataBody.data!.tSoHId
                                          .toString()));
                                }
                              }
                            },
                            child: Text("Posting SO DRAFT")),
                      ),
                    ],
                  )),
        ),
      ),
    );
  }
}

class CardCartProduct extends StatelessWidget {
  const CardCartProduct({
    super.key,
    required this.dataBarang,
  });

  final BarangDetailSO dataBarang;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Container(
          margin: EdgeInsets.only(bottom: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 86,
                width: 86,
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage(Assets.images.produk4.path),
                      height: 86,
                      width: 86,
                      fit: BoxFit.cover,
                    ),
                    if (dataBarang.jtFlag == 'KHUSUS') ...{
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.folder_special,
                          color: Colors.red,
                        ),
                      )
                    },
                  ],
                ),
              ),
              SizedBox(
                width: 8,
              ),
              // sbh
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Text(
                        "${dataBarang.mItemLongdesc}",
                        maxLines: 2,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: '',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      '${kRupiahFormat.format(dataBarang.tSoDPrice)}',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Text(
                        "QTY BELI : ${dataBarang.tSoDQty}",
                        style: TextStyle(
                          fontSize: 12,
                          color: ThemeColors.greyCaption,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: TextFormField(
                    readOnly: true,
                    initialValue:
                        "${kRupiahFormat.format(dataBarang.tSoDAmt) ?? '0'}", //         initialValue: "0", // Initial quantity
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      labelText: '  TOTAL BARANG',
                      labelStyle:
                          TextStyle(fontSize: 10.sp, color: fontColorThin),
                      contentPadding: EdgeInsets.symmetric(vertical: 8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Colors.grey, // Custom border color
                          width: 1.5,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1.5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Colors.blue, // Color when focused
                          width: 1.5,
                        ),
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
