import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_detail_plan.freezed.dart';
part 'response_detail_plan.g.dart';

@freezed
class ResponseDetailPlan with _$ResponseDetailPlan {
  const factory ResponseDetailPlan({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") dynamic message,
    @JsonKey(name: "error") dynamic error,
    @JsonKey(name: "data") DataDetailPlan? data,
  }) = _ResponseDetailPlan;

  factory ResponseDetailPlan.fromJson(Map<String, dynamic> json) =>
      _$ResponseDetailPlanFromJson(json);
}

@freezed
class DataDetailPlan with _$DataDetailPlan {
  const factory DataDetailPlan({
    @JsonKey(name: "geo_latitude") dynamic geoLatitude,
    @JsonKey(name: "geo_longitude") dynamic geoLongitude,
    @JsonKey(name: "t_sales_activity_status") String? tSalesActivityStatus,
    @JsonKey(name: "payment_amount") int? paymentAmount,
    @JsonKey(name: "payment_type") int? paymentType,
    @JsonKey(name: "payment_img_base64") dynamic paymentImgBase64,
    @JsonKey(name: "realisasi_note") dynamic realisasiNote,
    @JsonKey(name: "t_sales_activity_id") int? tSalesActivityId,
    @JsonKey(name: "plan_start") String? planStart,
    @JsonKey(name: "plan_end") String? planEnd,
    @JsonKey(name: "activity_type") String? activityType,
    @JsonKey(name: "m_cust_id") int? mCustId,
    @JsonKey(name: "m_cust_d_addr_id") int? mCustDAddrId,
    @JsonKey(name: "plan_start_time") String? planStartTime,
    @JsonKey(name: "t_sales_activity_note") String? tSalesActivityNote,
  }) = _DataDetailPlan;

  factory DataDetailPlan.fromJson(Map<String, dynamic> json) =>
      _$DataDetailPlanFromJson(json);
}
