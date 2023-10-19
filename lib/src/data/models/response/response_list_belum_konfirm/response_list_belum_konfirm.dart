import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_list_belum_konfirm.freezed.dart';
part 'response_list_belum_konfirm.g.dart';

@freezed
class ResponseListBelumKonfirm with _$ResponseListBelumKonfirm {
  const factory ResponseListBelumKonfirm({
    @JsonKey(name: "msg") String? msg,
    @JsonKey(name: "tbl") List<DataBelumKonfirm>? dataBelumKonfirm,
  }) = _ResponseListBelumKonfirm;

  factory ResponseListBelumKonfirm.fromJson(Map<String, dynamic> json) =>
      _$ResponseListBelumKonfirmFromJson(json);
}

@freezed
class DataBelumKonfirm with _$DataBelumKonfirm {
  const factory DataBelumKonfirm({
    @JsonKey(name: "t_do_h_id") int? tDoHId,
    @JsonKey(name: "t_do_no") String? tDoNo,
    @JsonKey(name: "t_do_date") String? tDoDate,
    @JsonKey(name: "t_dp_h_id") int? tDpHId,
    @JsonKey(name: "m_cust_name") String? mCustName,
    @JsonKey(name: "m_cust_shipto_addr") String? mCustShiptoAddr,
    @JsonKey(name: "m_user_id") int? mUserId,
    @JsonKey(name: "m_user_name") String? mUserName,
  }) = _DataBelumKonfirm;

  factory DataBelumKonfirm.fromJson(Map<String, dynamic> json) =>
      _$DataBelumKonfirmFromJson(json);
}

@freezed
class ListSelectDO with _$ListSelectDO {
  const factory ListSelectDO({
    @Default(false) bool isSelected,
    DataBelumKonfirm? dataBelumKonfirm,
  }) = _ListSelectDO;

  factory ListSelectDO.fromJson(Map<String, dynamic> json) =>
      _$ListSelectDOFromJson(json);
}
