// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_save_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseSavePlanImpl _$$ResponseSavePlanImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseSavePlanImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseSavePlanImplToJson(
        _$ResponseSavePlanImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      tSalesActivityId: (json['t_sales_activity_id'] as num?)?.toInt(),
      planStart: json['plan_start'] as String?,
      planEnd: json['plan_end'] as String?,
      activityType: json['activity_type'] as String?,
      isPlaning: json['is_planing'] as bool?,
      mCustId: (json['m_cust_id'] as num?)?.toInt(),
      mCustDAddrId: (json['m_cust_d_addr_id'] as num?)?.toInt(),
      planStartTime: json['plan_start_time'] as String?,
      tSalesActivityNote: json['t_sales_activity_note'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      't_sales_activity_id': instance.tSalesActivityId,
      'plan_start': instance.planStart,
      'plan_end': instance.planEnd,
      'activity_type': instance.activityType,
      'is_planing': instance.isPlaning,
      'm_cust_id': instance.mCustId,
      'm_cust_d_addr_id': instance.mCustDAddrId,
      'plan_start_time': instance.planStartTime,
      't_sales_activity_note': instance.tSalesActivityNote,
    };
