import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'request_save_tagihan.freezed.dart';
part 'request_save_tagihan.g.dart';

@freezed
class RequestSaveTagihan with _$RequestSaveTagihan {
  const factory RequestSaveTagihan({
    @JsonKey(name: "geo_latitude") String? geoLatitude,
    @JsonKey(name: "geo_longitude") String? geoLongitude,
    @JsonKey(name: "t_sales_activity_status") String? tSalesActivityStatus,
    @JsonKey(name: "payment_amount") int? paymentAmount,
    @JsonKey(name: "payment_type") int? paymentType,
    @JsonKey(name: "payment_img_base64") String? paymentImgBase64,
    @JsonKey(name: "realisasi_note") String? realisasiNote,
    @JsonKey(name: "t_sales_activity_id") int? tSalesActivityId,
    @JsonKey(name: "plan_start") String? planStart,
    @JsonKey(name: "plan_end") String? planEnd,
    @JsonKey(name: "activity_type") String? activityType,
    @JsonKey(name: "m_cust_id") int? mCustId,
    @JsonKey(name: "m_cust_d_addr_id") int? mCustDAddrId,
    @JsonKey(name: "plan_start_time") String? planStartTime,
    @JsonKey(name: "t_sales_activity_note") String? tSalesActivityNote,
  }) = _RequestSaveTagihan;

  factory RequestSaveTagihan.fromJson(Map<String, dynamic> json) =>
      _$RequestSaveTagihanFromJson(json);
}
