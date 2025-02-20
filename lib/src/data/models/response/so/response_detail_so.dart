import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_detail_so.freezed.dart';
part 'response_detail_so.g.dart';

@freezed
class ResponseDetailSo with _$ResponseDetailSo {
  const factory ResponseDetailSo({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") dynamic message,
    @JsonKey(name: "error") dynamic error,
    @JsonKey(name: "data") DataDetailSO? data,
  }) = _ResponseDetailSo;

  factory ResponseDetailSo.fromJson(Map<String, dynamic> json) =>
      _$ResponseDetailSoFromJson(json);
}

@freezed
class DataDetailSO with _$DataDetailSO {
  const factory DataDetailSO({
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
    @JsonKey(name: "t_so_h_status") String? tSoHStatus,
    @JsonKey(name: "t_so_d") List<BarangDetailSO>? tSoD,
  }) = _DataDetailSO;

  factory DataDetailSO.fromJson(Map<String, dynamic> json) =>
      _$DataDetailSOFromJson(json);
}

@freezed
class BarangDetailSO with _$BarangDetailSO {
  const factory BarangDetailSO({
    @JsonKey(name: "t_so_d_id") int? tSoDId,
    @JsonKey(name: "m_item_id") int? mItemId,
    @JsonKey(name: "m_item_jenis") String? mItemJenis,
    @JsonKey(name: "m_item_longdesc") String? mItemLongdesc,
    @JsonKey(name: "m_item_code") String? mItemCode,
    @JsonKey(name: "qty_stock") int? qtyStock,
    @JsonKey(name: "t_so_d_qty") int? tSoDQty,
    @JsonKey(name: "t_so_d_unit_id") int? tSoDUnitId,
    @JsonKey(name: "t_so_d_unit") String? tSoDUnit,
    @JsonKey(name: "t_so_d_price") double? tSoDPrice,
    @JsonKey(name: "t_so_d_amt") double? tSoDAmt,
    @JsonKey(name: "t_so_d_bykirim") int? tSoDBykirim,
    @JsonKey(name: "t_so_d_note") String? tSoDNote,
    @JsonKey(name: "m_item_konversi") double? mItemKonversi,
    @JsonKey(name: "m_item_sket") dynamic mItemSket,
    @JsonKey(name: "m_item_warna") dynamic mItemWarna,
    @JsonKey(name: "jt_flag") String? jtFlag,
    @JsonKey(name: "m_item_jto_khusus_id") int? mItemJtoKhususId,
  }) = _BarangDetailSO;

  factory BarangDetailSO.fromJson(Map<String, dynamic> json) =>
      _$BarangDetailSOFromJson(json);
}
