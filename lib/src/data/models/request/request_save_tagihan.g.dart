// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_save_tagihan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestSaveTagihanImpl _$$RequestSaveTagihanImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestSaveTagihanImpl(
      geoLatitude: json['geo_latitude'] as String?,
      geoLongitude: json['geo_longitude'] as String?,
      tSalesActivityStatus: json['t_sales_activity_status'] as String?,
      paymentAmount: (json['payment_amount'] as num?)?.toInt(),
      paymentType: (json['payment_type'] as num?)?.toInt(),
      paymentImgBase64: json['payment_img_base64'] as String?,
      realisasiNote: json['realisasi_note'] as String?,
      tSalesActivityId: (json['t_sales_activity_id'] as num?)?.toInt(),
      planStart: json['plan_start'] as String?,
      planEnd: json['plan_end'] as String?,
      activityType: json['activity_type'] as String?,
      mCustId: (json['m_cust_id'] as num?)?.toInt(),
      mCustDAddrId: (json['m_cust_d_addr_id'] as num?)?.toInt(),
      planStartTime: json['plan_start_time'] as String?,
      tSalesActivityNote: json['t_sales_activity_note'] as String?,
    );

Map<String, dynamic> _$$RequestSaveTagihanImplToJson(
        _$RequestSaveTagihanImpl instance) =>
    <String, dynamic>{
      'geo_latitude': instance.geoLatitude,
      'geo_longitude': instance.geoLongitude,
      't_sales_activity_status': instance.tSalesActivityStatus,
      'payment_amount': instance.paymentAmount,
      'payment_type': instance.paymentType,
      'payment_img_base64': instance.paymentImgBase64,
      'realisasi_note': instance.realisasiNote,
      't_sales_activity_id': instance.tSalesActivityId,
      'plan_start': instance.planStart,
      'plan_end': instance.planEnd,
      'activity_type': instance.activityType,
      'm_cust_id': instance.mCustId,
      'm_cust_d_addr_id': instance.mCustDAddrId,
      'plan_start_time': instance.planStartTime,
      't_sales_activity_note': instance.tSalesActivityNote,
    };
