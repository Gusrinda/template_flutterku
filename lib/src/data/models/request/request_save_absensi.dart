import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'request_save_absensi.freezed.dart';
part 'request_save_absensi.g.dart';

@freezed
class RequestSaveAbsensi with _$RequestSaveAbsensi {
  const factory RequestSaveAbsensi({
    @JsonKey(name: "r_activity_id") int? rActivityId,
    @JsonKey(name: "r_activity_type") String? rActivityType,
    @JsonKey(name: "ref_id") int? refId,
    @JsonKey(name: "ref_activity_id") int? refActivityId,
    @JsonKey(name: "m_cust_id") int? mCustId,
    @JsonKey(name: "m_cust_d_addr_id") int? mCustDAddrId,
    @JsonKey(name: "geo_latitude") String? geoLatitude,
    @JsonKey(name: "geo_longitude") String? geoLongitude,
    @JsonKey(name: "r_activity_note") String? rActivityNote,
    @JsonKey(name: "r_activity_img_base64") String? rActivityImgBase64,
  }) = _RequestSaveAbsensi;

  factory RequestSaveAbsensi.fromJson(Map<String, dynamic> json) =>
      _$RequestSaveAbsensiFromJson(json);
}
