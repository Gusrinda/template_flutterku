// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'dart:convert';

// import 'package:sulinda_sales/src/data/models/response/barang/response_daftar_barang.dart';

// part 'request_create_so.freezed.dart';
// part 'request_create_so.g.dart';

// @freezed
// class RequestCreateSo with _$RequestCreateSo {
//   const factory RequestCreateSo({
//     @JsonKey(name: "t_so_h_id") int? tSoHId,
//     @JsonKey(name: "t_so_h_no") String? tSoHNo,
//     @JsonKey(name: "t_so_h_date") String? tSoHDate,
//     @JsonKey(name: "t_so_h_grup_wilayah_id") int? tSoHGrupWilayahId,
//     @JsonKey(name: "m_cust_id") int? mCustId,
//     @JsonKey(name: "t_so_h_cust_namacetak") String? tSoHCustNamacetak,
//     @JsonKey(name: "t_so_h_cust_po_no") String? tSoHCustPoNo,
//     @JsonKey(name: "t_so_h_cust_po_date") String? tSoHCustPoDate,
//     @JsonKey(name: "t_so_h_totalamt") double? tSoHTotalamt,
//     @JsonKey(name: "t_so_h_tipe_bykirim") String? tSoHTipeBykirim,
//     @JsonKey(name: "t_so_h_total_bykirim") int? tSoHTotalBykirim,
//     @JsonKey(name: "t_so_h_disctype") String? tSoHDisctype,
//     @JsonKey(name: "t_so_h_discpct") double? tSoHDiscpct,
//     @JsonKey(name: "t_so_h_discamt") double? tSoHDiscamt,
//     @JsonKey(name: "t_so_h_totaldpp") double? tSoHTotaldpp,
//     @JsonKey(name: "t_so_h_taxtype") String? tSoHTaxtype,
//     @JsonKey(name: "t_so_h_taxpct") double? tSoHTaxpct,
//     @JsonKey(name: "t_so_h_taxamt") double? tSoHTaxamt,
//     @JsonKey(name: "t_so_h_pph1_id") int? tSoHPph1Id,
//     @JsonKey(name: "t_so_h_pph1_pct") double? tSoHPph1Pct,
//     @JsonKey(name: "t_so_h_pph1_amt") double? tSoHPph1Amt,
//     @JsonKey(name: "t_so_h_pph2_id") int? tSoHPph2Id,
//     @JsonKey(name: "t_so_h_pph2_pct") double? tSoHPph2Pct,
//     @JsonKey(name: "t_so_h_pph2_amt") double? tSoHPph2Amt,
//     @JsonKey(name: "t_so_h_totalnetto") double? tSoHTotalnetto,
//     @JsonKey(name: "t_so_h_note") String? tSoHNote,
//     @JsonKey(name: "t_so_h_status") String? tSoHStatus,
//     @JsonKey(name: "t_so_d") List<TSoD>? tSoD,
//   }) = _RequestCreateSo;

//   factory RequestCreateSo.fromJson(Map<String, dynamic> json) =>
//       _$RequestCreateSoFromJson(json);
// }

// @freezed
// class TSoD with _$TSoD {
//   const factory TSoD({
//     @JsonKey(name: "dataBarang") DataBarang? dataBarang,
//     @JsonKey(name: "t_so_d_id") int? tSoDId,
//     @JsonKey(name: "t_so_d_seq") int? tSoDSeq,
//     @JsonKey(name: "m_item_id") int? mItemId,
//     @JsonKey(name: "m_item_jenis") String? mItemJenis,
//     @JsonKey(name: "m_item_longdesc") String? mItemLongdesc,
//     @JsonKey(name: "m_item_code") String? mItemCode,
//     @JsonKey(name: "qty_stock") int? qtyStock,
//     @JsonKey(name: "t_so_d_qty") int? tSoDQty,
//     @JsonKey(name: "t_so_d_unit_id") int? tSoDUnitId,
//     @JsonKey(name: "t_so_d_unit") String? tSoDUnit,
//     @JsonKey(name: "t_so_d_price") int? tSoDPrice,
//     @JsonKey(name: "t_so_d_amt") int? tSoDAmt,
//     @JsonKey(name: "t_so_d_bykirim") int? tSoDBykirim,
//     @JsonKey(name: "t_so_d_note") String? tSoDNote,
//     @JsonKey(name: "m_item_konversi") int? mItemKonversi,
//     @JsonKey(name: "jt_flag") String? jtFlag,
//     @JsonKey(name: "m_item_jto_khusus_id") int? mItemJtoKhususId,
//   }) = _TSoD;

//   factory TSoD.fromJson(Map<String, dynamic> json) => _$TSoDFromJson(json);
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sulinda_sales/src/core/model/form_text_input.dart';
import 'dart:convert';

import 'package:sulinda_sales/src/data/models/response/barang/response_daftar_barang.dart';
import 'package:sulinda_sales/src/data/models/response/customer/response_daftar_customer.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_daftar_pph.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_daftar_wilayah.dart';

import '../response/general/response_daftar_ppn.dart';

part 'request_create_so.freezed.dart';
part 'request_create_so.g.dart';

@freezed
class RequestCreateSo with _$RequestCreateSo {
  const factory RequestCreateSo({
    @JsonKey(name: "t_so_h_id") int? tSoHId,
    @JsonKey(name: "t_so_h_grup_wilayah_id") int? tSoHGrupWilayahId,
    @JsonKey(name: "m_cust_id") int? mCustId,
    @JsonKey(name: "t_so_h_cust_namacetak") String? tSoHCustNamacetak,
    @JsonKey(name: "t_so_h_cust_po_no") String? tSoHCustPoNo,
    @JsonKey(name: "t_so_h_cust_po_date") String? tSoHCustPoDate,
    @JsonKey(name: "t_so_h_totalamt") double? tSoHTotalamt,
    @JsonKey(name: "t_so_h_tipe_bykirim") String? tSoHTipeBykirim,
    @JsonKey(name: "t_so_h_total_bykirim") double? tSoHTotalBykirim,
    @JsonKey(name: "t_so_h_disctype") String? tSoHDisctype,
    @JsonKey(name: "t_so_h_discpct") double? tSoHDiscpct,
    @JsonKey(name: "t_so_h_discamt") double? tSoHDiscamt,
    @JsonKey(name: "t_so_h_totaldpp") double? tSoHTotaldpp,
    @JsonKey(name: "t_so_h_taxtype") String? tSoHTaxtype,
    @JsonKey(name: "t_so_h_taxpct") double? tSoHTaxpct,
    @JsonKey(name: "t_so_h_taxamt") double? tSoHTaxamt,
    @JsonKey(name: "t_so_h_pph1_id") int? tSoHPph1Id,
    @JsonKey(name: "t_so_h_pph1_pct") double? tSoHPph1Pct,
    @JsonKey(name: "t_so_h_pph1_amt") double? tSoHPph1Amt,
    @JsonKey(name: "t_so_h_pph2_id") int? tSoHPph2Id,
    @JsonKey(name: "t_so_h_pph2_pct") double? tSoHPph2Pct,
    @JsonKey(name: "t_so_h_pph2_amt") double? tSoHPph2Amt,
    @JsonKey(name: "t_so_h_totalnetto") double? tSoHTotalnetto,
    @JsonKey(name: "t_so_h_note") String? tSoHNote,
    @JsonKey(name: "t_so_h_status") String? tstatus,
    @JsonKey(name: "t_so_d") List<TSoD>? tSoD,
  }) = _RequestCreateSo;

  factory RequestCreateSo.fromJson(Map<String, dynamic> json) =>
      _$RequestCreateSoFromJson(json);
}

@freezed
class TSoD with _$TSoD {
  const factory TSoD({
    @JsonKey(name: "dataBarang") DataBarang? dataBarang,
    @JsonKey(name: "t_so_d_id") int? tSoDId,
    @JsonKey(name: "m_item_id") int? mItemId,
    @JsonKey(name: "m_item_jenis") String? mItemJenis,
    @JsonKey(name: "m_item_longdesc") String? mItemLongdesc,
    @JsonKey(name: "m_item_code") String? mItemCode,
    @JsonKey(name: "qty_stock") int? qtyStock,
    @JsonKey(name: "t_so_d_qty") int? tSoDQty,
    @JsonKey(name: "t_so_d_unit_id") int? tSoDUnitId,
    @JsonKey(name: "t_so_d_unit") String? tSoDUnit,
    @JsonKey(name: "t_so_d_price") int? tSoDPrice,
    @JsonKey(name: "t_so_d_amt") int? tSoDAmt,
    @JsonKey(name: "t_so_d_bykirim") int? tSoDBykirim,
    @JsonKey(name: "t_so_d_berat") int? tsoDBerat,
    @JsonKey(name: "t_so_d_note") String? tSoDNote,
    @JsonKey(name: "m_item_konversi") int? mItemKonversi,
    @JsonKey(name: "jt_flag") String? jtFlag,
    @JsonKey(name: "m_item_jto_khusus_id") int? mItemJtoKhususId,
  }) = _TSoD;

  factory TSoD.fromJson(Map<String, dynamic> json) => _$TSoDFromJson(json);
}

@freezed
class EditingDataSO with _$EditingDataSO {
  const factory EditingDataSO({
    //FORM1
    DataWilayah? selectedWilayah,
    List<DataCustomer>? daftarCustomer,
    DataCustomer? selectedCustomer,
    DateTime? tanggalCreateSO,

    //FORM2
    DataPPN? selectedPPN,
    DataPPH? selectedPPH1,
    DataPPH? selectedPPH2,
    String? selectedTipeDiskon,

    //FORM UTAMA
    RequestCreateSo? requestCreateSo,
  }) = _EditingDataSO;

  factory EditingDataSO.fromJson(Map<String, dynamic> json) =>
      _$EditingDataSOFromJson(json);
}
