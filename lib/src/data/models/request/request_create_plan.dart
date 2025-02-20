import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'request_create_plan.freezed.dart';
part 'request_create_plan.g.dart';

@freezed
class RequestCreatePlan with _$RequestCreatePlan {
  const factory RequestCreatePlan({
    @JsonKey(name: "t_sales_activity_id") int? tSalesActivityId,
    @JsonKey(name: "plan_start") String? planStart,
    @JsonKey(name: "plan_end") String? planEnd,
    @JsonKey(name: "activity_type") String? activityType,
    @JsonKey(name: "m_cust_id") int? mCustId,
    @JsonKey(name: "is_planing") bool? isPlanning,
    @JsonKey(name: "m_cust_d_addr_id") int? mCustDAddrId,
    @JsonKey(name: "plan_start_time") String? planStartTime,
    @JsonKey(name: "t_sales_activity_note") String? tSalesActivityNote,
  }) = _RequestCreatePlan;

  factory RequestCreatePlan.fromJson(Map<String, dynamic> json) =>
      _$RequestCreatePlanFromJson(json);
}
