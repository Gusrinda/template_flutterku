// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_daftar_wilayah.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDaftarWilayahImpl _$$ResponseDaftarWilayahImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDaftarWilayahImpl(
      status: json['status'] as String?,
      message: json['message'],
      error: json['error'],
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataWilayah.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseDaftarWilayahImplToJson(
        _$ResponseDaftarWilayahImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };

_$DataWilayahImpl _$$DataWilayahImplFromJson(Map<String, dynamic> json) =>
    _$DataWilayahImpl(
      text: json['Text'] as String?,
      value: json['Value'] as String?,
    );

Map<String, dynamic> _$$DataWilayahImplToJson(_$DataWilayahImpl instance) =>
    <String, dynamic>{
      'Text': instance.text,
      'Value': instance.value,
    };
