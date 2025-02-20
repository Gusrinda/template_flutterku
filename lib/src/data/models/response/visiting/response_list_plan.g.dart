// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_list_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseListPlanImpl _$$ResponseListPlanImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseListPlanImpl(
      status: json['status'] as String?,
      message: json['message'],
      error: json['error'],
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataListPlan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseListPlanImplToJson(
        _$ResponseListPlanImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };

_$DataListPlanImpl _$$DataListPlanImplFromJson(Map<String, dynamic> json) =>
    _$DataListPlanImpl(
      tSalesActivityId: (json['t_sales_activity_id'] as num?)?.toInt(),
      mCustId: (json['m_cust_id'] as num?)?.toInt(),
      isPlaning: json['is_planing'] as bool?,
      planGlag: json['plan_flag'] as String?,
      mCustName: json['m_cust_name'] as String?,
      planStart: json['plan_start'] as String?,
      planEnd: json['plan_end'] as String?,
      activityType: json['activity_type'] as String?,
      mCustDAddrName: json['m_cust_d_addr_name'] as String?,
      mCustDAddrAddress: json['m_cust_d_addr_address'] as String?,
      jumlahPiutang: (json['jumlah_piutang'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataListPlanImplToJson(_$DataListPlanImpl instance) =>
    <String, dynamic>{
      't_sales_activity_id': instance.tSalesActivityId,
      'm_cust_id': instance.mCustId,
      'is_planing': instance.isPlaning,
      'plan_flag': instance.planGlag,
      'm_cust_name': instance.mCustName,
      'plan_start': instance.planStart,
      'plan_end': instance.planEnd,
      'activity_type': instance.activityType,
      'm_cust_d_addr_name': instance.mCustDAddrName,
      'm_cust_d_addr_address': instance.mCustDAddrAddress,
      'jumlah_piutang': instance.jumlahPiutang,
    };
