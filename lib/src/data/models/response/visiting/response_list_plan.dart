import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_list_plan.freezed.dart';
part 'response_list_plan.g.dart';

@freezed
class ResponseListPlan with _$ResponseListPlan {
  const factory ResponseListPlan({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") dynamic message,
    @JsonKey(name: "error") dynamic error,
    @JsonKey(name: "data") List<DataListPlan>? data,
  }) = _ResponseListPlan;

  factory ResponseListPlan.fromJson(Map<String, dynamic> json) =>
      _$ResponseListPlanFromJson(json);
}

@freezed
class DataListPlan with _$DataListPlan {
  const factory DataListPlan({
    @JsonKey(name: "t_sales_activity_id") int? tSalesActivityId,
    @JsonKey(name: "m_cust_id") int? mCustId,
    @JsonKey(name: "is_planing") bool? isPlaning,
    @JsonKey(name: "plan_flag") String? planGlag,
    @JsonKey(name: "m_cust_name") String? mCustName,
    @JsonKey(name: "plan_start") String? planStart,
    @JsonKey(name: "plan_end") String? planEnd,
    @JsonKey(name: "activity_type") String? activityType,
    @JsonKey(name: "m_cust_d_addr_name") String? mCustDAddrName,
    @JsonKey(name: "m_cust_d_addr_address") String? mCustDAddrAddress,
    @JsonKey(name: "jumlah_piutang") int? jumlahPiutang,
  }) = _DataListPlan;

  factory DataListPlan.fromJson(Map<String, dynamic> json) =>
      _$DataListPlanFromJson(json);
}
