// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_daftar_pph.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDaftarPphImpl _$$ResponseDaftarPphImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDaftarPphImpl(
      status: json['status'] as String?,
      message: json['message'],
      error: json['error'],
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataPPH.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseDaftarPphImplToJson(
        _$ResponseDaftarPphImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };

_$DataPPHImpl _$$DataPPHImplFromJson(Map<String, dynamic> json) =>
    _$DataPPHImpl(
      valuePct: (json['value_pct'] as num?)?.toDouble(),
      plusMin: (json['plus_min'] as num?)?.toInt(),
      text: json['Text'] as String?,
      value: json['Value'] as String?,
    );

Map<String, dynamic> _$$DataPPHImplToJson(_$DataPPHImpl instance) =>
    <String, dynamic>{
      'value_pct': instance.valuePct,
      'plus_min': instance.plusMin,
      'Text': instance.text,
      'Value': instance.value,
    };
