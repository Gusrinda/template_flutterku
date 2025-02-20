// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_detail_calendar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDetailCalendarImpl _$$ResponseDetailCalendarImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDetailCalendarImpl(
      status: json['status'] as String?,
      message: json['message'],
      error: json['error'],
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataEventKalender.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseDetailCalendarImplToJson(
        _$ResponseDetailCalendarImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };

_$DataEventKalenderImpl _$$DataEventKalenderImplFromJson(
        Map<String, dynamic> json) =>
    _$DataEventKalenderImpl(
      activityDate: json['activity_date'] as String?,
      activityTime: json['activity_time'] as String?,
      activityType: json['activity_type'] as String?,
      mCustName: json['m_cust_name'] as String?,
      activityNo: json['activity_no'] as String?,
      refId: (json['ref_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataEventKalenderImplToJson(
        _$DataEventKalenderImpl instance) =>
    <String, dynamic>{
      'activity_date': instance.activityDate,
      'activity_time': instance.activityTime,
      'activity_type': instance.activityType,
      'm_cust_name': instance.mCustName,
      'activity_no': instance.activityNo,
      'ref_id': instance.refId,
    };
