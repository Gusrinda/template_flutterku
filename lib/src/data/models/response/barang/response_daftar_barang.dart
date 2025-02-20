import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_daftar_barang.freezed.dart';
part 'response_daftar_barang.g.dart';

@freezed
class ResponseDaftarBarang with _$ResponseDaftarBarang {
  const factory ResponseDaftarBarang({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") dynamic message,
    @JsonKey(name: "error") dynamic error,
    @JsonKey(name: "data") List<DataBarang>? data,
  }) = _ResponseDaftarBarang;

  factory ResponseDaftarBarang.fromJson(Map<String, dynamic> json) =>
      _$ResponseDaftarBarangFromJson(json);
}

@freezed
class DataBarang with _$DataBarang {
  const factory DataBarang({
    @JsonKey(name: "t_so_d_id") int? tSoDId,
    @JsonKey(name: "t_so_d_seq") int? tSoDSeq,
    @JsonKey(name: "m_item_id") int? mItemId,
    @JsonKey(name: "m_item_jenis") String? mItemJenis,
    @JsonKey(name: "m_item_longdesc") String? mItemLongdesc,
    @JsonKey(name: "m_item_code") String? mItemCode,
    @JsonKey(name: "qty_stock") double? qtyStock,
    @JsonKey(name: "t_so_d_qty") int? tSoDQty,
    @JsonKey(name: "t_so_d_unit_id") int? tSoDUnitId,
    @JsonKey(name: "t_so_d_unit") String? tSoDUnit,
    @JsonKey(name: "t_so_d_price") double? tSoDPrice,
    @JsonKey(name: "t_so_d_amt") int? tSoDAmt,
    @JsonKey(name: "t_so_d_bykirim") int? tSoDBykirim,
    @JsonKey(name: "t_so_d_note") String? tSoDNote,
    @JsonKey(name: "t_so_d_berat") int? tsoDBerat,
    @JsonKey(name: "m_item_konversi") double? mItemKonversi,
    @JsonKey(name: "m_item_sket") String? mItemSket,
    @JsonKey(name: "m_item_warna") String? mItemWarna,
    @JsonKey(name: "jt_flag") String? jtFlag,
    @JsonKey(name: "m_item_jto_khusus_id") int? mItemJtoKhususId,
  }) = _DataBarang;

  factory DataBarang.fromJson(Map<String, dynamic> json) =>
      _$DataBarangFromJson(json);
}
