import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_detail_tagihan.freezed.dart';
part 'response_detail_tagihan.g.dart';

@freezed
class ResponseDetailTagihan with _$ResponseDetailTagihan {
  const factory ResponseDetailTagihan({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") dynamic message,
    @JsonKey(name: "error") dynamic error,
    @JsonKey(name: "data") Data? data,
  }) = _ResponseDetailTagihan;

  factory ResponseDetailTagihan.fromJson(Map<String, dynamic> json) =>
      _$ResponseDetailTagihanFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "check_in") Check? checkIn,
    @JsonKey(name: "check_out") Check? checkOut,
    @JsonKey(name: "t_collect_payment_image_base64")
    String? tCollectPaymentImageBase64,
    @JsonKey(name: "t_collect_id") int? tCollectId,
    @JsonKey(name: "t_collect_date") String? tCollectDate,
    @JsonKey(name: "t_collect_no") String? tCollectNo,
    @JsonKey(name: "t_sales_activity_id") int? tSalesActivityId,
    @JsonKey(name: "m_cust_id") int? mCustId,
    @JsonKey(name: "t_collect_ar_amt") int? tCollectArAmt,
    @JsonKey(name: "t_collect_payment_amt") int? tCollectPaymentAmt,
    @JsonKey(name: "t_collect_payment_type") String? tCollectPaymentType,
    @JsonKey(name: "t_collect_payment_image") String? tCollectPaymentImage,
    @JsonKey(name: "t_collect_note") String? tCollectNote,
    @JsonKey(name: "created_by") String? createdBy,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "last_edited_by") String? lastEditedBy,
    @JsonKey(name: "last_edited_at") String? lastEditedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Check with _$Check {
  const factory Check({
    @JsonKey(name: "r_activity_image_base64") String? rActivityImageBase64,
    @JsonKey(name: "r_activity_id") int? rActivityId,
    @JsonKey(name: "r_activity_type") String? rActivityType,
    @JsonKey(name: "ref_id") int? refId,
    @JsonKey(name: "ref_activity_id") int? refActivityId,
    @JsonKey(name: "m_employee_id") int? mEmployeeId,
    @JsonKey(name: "m_cust_id") int? mCustId,
    @JsonKey(name: "m_cust_d_addr_id") int? mCustDAddrId,
    @JsonKey(name: "geo_latitude") String? geoLatitude,
    @JsonKey(name: "geo_longitude") String? geoLongitude,
    @JsonKey(name: "r_activity_note") String? rActivityNote,
    @JsonKey(name: "created_by") String? createdBy,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "r_activity_image_path") String? rActivityImagePath,
    @JsonKey(name: "r_activity_flag") String? rActivityFlag,
  }) = _Check;

  factory Check.fromJson(Map<String, dynamic> json) => _$CheckFromJson(json);
}
