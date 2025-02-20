// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_create_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestCreatePlanImpl _$$RequestCreatePlanImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestCreatePlanImpl(
      tSalesActivityId: (json['t_sales_activity_id'] as num?)?.toInt(),
      planStart: json['plan_start'] as String?,
      planEnd: json['plan_end'] as String?,
      activityType: json['activity_type'] as String?,
      mCustId: (json['m_cust_id'] as num?)?.toInt(),
      isPlanning: json['is_planing'] as bool?,
      mCustDAddrId: (json['m_cust_d_addr_id'] as num?)?.toInt(),
      planStartTime: json['plan_start_time'] as String?,
      tSalesActivityNote: json['t_sales_activity_note'] as String?,
    );

Map<String, dynamic> _$$RequestCreatePlanImplToJson(
        _$RequestCreatePlanImpl instance) =>
    <String, dynamic>{
      't_sales_activity_id': instance.tSalesActivityId,
      'plan_start': instance.planStart,
      'plan_end': instance.planEnd,
      'activity_type': instance.activityType,
      'm_cust_id': instance.mCustId,
      'is_planing': instance.isPlanning,
      'm_cust_d_addr_id': instance.mCustDAddrId,
      'plan_start_time': instance.planStartTime,
      't_sales_activity_note': instance.tSalesActivityNote,
    };
