// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_save_absensi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestSaveAbsensiImpl _$$RequestSaveAbsensiImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestSaveAbsensiImpl(
      rActivityId: (json['r_activity_id'] as num?)?.toInt(),
      rActivityType: json['r_activity_type'] as String?,
      refId: (json['ref_id'] as num?)?.toInt(),
      refActivityId: (json['ref_activity_id'] as num?)?.toInt(),
      mCustId: (json['m_cust_id'] as num?)?.toInt(),
      mCustDAddrId: (json['m_cust_d_addr_id'] as num?)?.toInt(),
      geoLatitude: json['geo_latitude'] as String?,
      geoLongitude: json['geo_longitude'] as String?,
      rActivityNote: json['r_activity_note'] as String?,
      rActivityImgBase64: json['r_activity_img_base64'] as String?,
    );

Map<String, dynamic> _$$RequestSaveAbsensiImplToJson(
        _$RequestSaveAbsensiImpl instance) =>
    <String, dynamic>{
      'r_activity_id': instance.rActivityId,
      'r_activity_type': instance.rActivityType,
      'ref_id': instance.refId,
      'ref_activity_id': instance.refActivityId,
      'm_cust_id': instance.mCustId,
      'm_cust_d_addr_id': instance.mCustDAddrId,
      'geo_latitude': instance.geoLatitude,
      'geo_longitude': instance.geoLongitude,
      'r_activity_note': instance.rActivityNote,
      'r_activity_img_base64': instance.rActivityImgBase64,
    };
