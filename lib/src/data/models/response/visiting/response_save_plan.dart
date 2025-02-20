import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_save_plan.freezed.dart';
part 'response_save_plan.g.dart';

@freezed
class ResponseSavePlan with _$ResponseSavePlan {
  const factory ResponseSavePlan({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "error") String? error,
    @JsonKey(name: "data") Data? data,
  }) = _ResponseSavePlan;

  factory ResponseSavePlan.fromJson(Map<String, dynamic> json) =>
      _$ResponseSavePlanFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "t_sales_activity_id") int? tSalesActivityId,
    @JsonKey(name: "plan_start") String? planStart,
    @JsonKey(name: "plan_end") String? planEnd,
    @JsonKey(name: "activity_type") String? activityType,
    @JsonKey(name: "is_planing") bool? isPlaning,
    @JsonKey(name: "m_cust_id") int? mCustId,
    @JsonKey(name: "m_cust_d_addr_id") int? mCustDAddrId,
    @JsonKey(name: "plan_start_time") String? planStartTime,
    @JsonKey(name: "t_sales_activity_note") String? tSalesActivityNote,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
