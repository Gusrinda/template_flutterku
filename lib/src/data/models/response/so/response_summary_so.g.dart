// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_summary_so.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseSummarySoImpl _$$ResponseSummarySoImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseSummarySoImpl(
      status: json['status'] as String?,
      message: json['message'],
      error: json['error'],
      data: json['data'] == null
          ? null
          : DataSummarySO.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseSummarySoImplToJson(
        _$ResponseSummarySoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };

_$DataSummarySOImpl _$$DataSummarySOImplFromJson(Map<String, dynamic> json) =>
    _$DataSummarySOImpl(
      totalOrder: (json['total_order'] as num?)?.toInt(),
      totalNetto: json['total_netto'],
    );

Map<String, dynamic> _$$DataSummarySOImplToJson(_$DataSummarySOImpl instance) =>
    <String, dynamic>{
      'total_order': instance.totalOrder,
      'total_netto': instance.totalNetto,
    };
