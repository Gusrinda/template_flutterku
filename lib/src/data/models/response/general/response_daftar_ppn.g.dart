// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_daftar_ppn.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDaftarPpnImpl _$$ResponseDaftarPpnImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDaftarPpnImpl(
      status: json['status'] as String?,
      message: json['message'],
      error: json['error'],
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataPPN.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseDaftarPpnImplToJson(
        _$ResponseDaftarPpnImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };

_$DataPPNImpl _$$DataPPNImplFromJson(Map<String, dynamic> json) =>
    _$DataPPNImpl(
      valuePct: (json['value_pct'] as num?)?.toInt(),
      plusMin: (json['plus_min'] as num?)?.toInt(),
      text: json['Text'] as String?,
      value: json['Value'] as String?,
    );

Map<String, dynamic> _$$DataPPNImplToJson(_$DataPPNImpl instance) =>
    <String, dynamic>{
      'value_pct': instance.valuePct,
      'plus_min': instance.plusMin,
      'Text': instance.text,
      'Value': instance.value,
    };
