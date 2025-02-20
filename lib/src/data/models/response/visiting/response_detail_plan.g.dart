// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_detail_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDetailPlanImpl _$$ResponseDetailPlanImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDetailPlanImpl(
      status: json['status'] as String?,
      message: json['message'],
      error: json['error'],
      data: json['data'] == null
          ? null
          : DataDetailPlan.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseDetailPlanImplToJson(
        _$ResponseDetailPlanImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };

_$DataDetailPlanImpl _$$DataDetailPlanImplFromJson(Map<String, dynamic> json) =>
    _$DataDetailPlanImpl(
      geoLatitude: json['geo_latitude'],
      geoLongitude: json['geo_longitude'],
      tSalesActivityStatus: json['t_sales_activity_status'] as String?,
      paymentAmount: (json['payment_amount'] as num?)?.toInt(),
      paymentType: (json['payment_type'] as num?)?.toInt(),
      paymentImgBase64: json['payment_img_base64'],
      realisasiNote: json['realisasi_note'],
      tSalesActivityId: (json['t_sales_activity_id'] as num?)?.toInt(),
      planStart: json['plan_start'] as String?,
      planEnd: json['plan_end'] as String?,
      activityType: json['activity_type'] as String?,
      mCustId: (json['m_cust_id'] as num?)?.toInt(),
      mCustDAddrId: (json['m_cust_d_addr_id'] as num?)?.toInt(),
      planStartTime: json['plan_start_time'] as String?,
      tSalesActivityNote: json['t_sales_activity_note'] as String?,
    );

Map<String, dynamic> _$$DataDetailPlanImplToJson(
        _$DataDetailPlanImpl instance) =>
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
