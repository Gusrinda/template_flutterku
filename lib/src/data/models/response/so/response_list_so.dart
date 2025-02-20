import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_list_so.freezed.dart';
part 'response_list_so.g.dart';

@freezed
class ResponseListSo with _$ResponseListSo {
  const factory ResponseListSo({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") dynamic message,
    @JsonKey(name: "error") dynamic error,
    @JsonKey(name: "data") List<DataListSO>? data,
  }) = _ResponseListSo;

  factory ResponseListSo.fromJson(Map<String, dynamic> json) =>
      _$ResponseListSoFromJson(json);
}

@freezed
class DataListSO with _$DataListSO {
  const factory DataListSO({
    @JsonKey(name: "t_so_h_etd_date") String? tSoHEtdDate,
    @JsonKey(name: "t_so_h_id") int? tSoHId,
    @JsonKey(name: "t_so_h_no") String? tSoHNo,
    @JsonKey(name: "t_so_h_date") String? tSoHDate,
    @JsonKey(name: "m_cust_name") String? mCustName,
    @JsonKey(name: "t_so_h_cust_po_no") String? tSoHCustPoNo,
    @JsonKey(name: "t_so_h_cust_po_date") String? tSoHCustPoDate,
    @JsonKey(name: "t_so_h_totalnetto") int? tSoHTotalnetto,
    @JsonKey(name: "t_so_h_status") String? tSoHStatus,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "approved_by") String? approvedBy,
    @JsonKey(name: "t_so_h_note") String? tSoHNote,
    @JsonKey(name: "t_pra_so_h_no") String? tPraSoHNo,
    @JsonKey(name: "m_cust_grup_wilayah_day") int? mCustGrupWilayahDay,
    @JsonKey(name: "started_at") dynamic startedAt,
    @JsonKey(name: "extended_at") dynamic extendedAt,
    @JsonKey(name: "extended_flag") String? extendedFlag,
    @JsonKey(name: "m_cust_id") int? mCustId,
  }) = _DataListSO;

  factory DataListSO.fromJson(Map<String, dynamic> json) =>
      _$DataListSOFromJson(json);
}
