// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_list_calendar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseListCalendarImpl _$$ResponseListCalendarImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseListCalendarImpl(
      status: json['status'] as String?,
      message: json['message'],
      error: json['error'],
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataKalender.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseListCalendarImplToJson(
        _$ResponseListCalendarImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };

_$DataKalenderImpl _$$DataKalenderImplFromJson(Map<String, dynamic> json) =>
    _$DataKalenderImpl(
      activityDate: json['activity_date'] as String?,
      countOrder: (json['count_order'] as num?)?.toInt(),
      countTagihan: (json['count_tagihan'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataKalenderImplToJson(_$DataKalenderImpl instance) =>
    <String, dynamic>{
      'activity_date': instance.activityDate,
      'count_order': instance.countOrder,
      'count_tagihan': instance.countTagihan,
    };
