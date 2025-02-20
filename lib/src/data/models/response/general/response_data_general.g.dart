// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_data_general.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDataGeneralImpl _$$ResponseDataGeneralImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDataGeneralImpl(
      status: json['status'] as String?,
      message: json['message'],
      error: json['error'],
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataGeneral.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseDataGeneralImplToJson(
        _$ResponseDataGeneralImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };

_$DataGeneralImpl _$$DataGeneralImplFromJson(Map<String, dynamic> json) =>
    _$DataGeneralImpl(
      text: json['Text'] as String?,
      value: json['Value'] as String?,
    );

Map<String, dynamic> _$$DataGeneralImplToJson(_$DataGeneralImpl instance) =>
    <String, dynamic>{
      'Text': instance.text,
      'Value': instance.value,
    };

_$BulkDataGeneralImpl _$$BulkDataGeneralImplFromJson(
        Map<String, dynamic> json) =>
    _$BulkDataGeneralImpl(
      dataPrefix: (json['data_prefix'] as List<dynamic>?)
          ?.map((e) => DataGeneral.fromJson(e as Map<String, dynamic>))
          .toList(),
      dataGroupWilayah: (json['data_group'] as List<dynamic>?)
          ?.map((e) => DataGeneral.fromJson(e as Map<String, dynamic>))
          .toList(),
      dataWilayahPenagihan: (json['data_wilayah_penagihan'] as List<dynamic>?)
          ?.map((e) => DataGeneral.fromJson(e as Map<String, dynamic>))
          .toList(),
      dataJatuhTempo: (json['data_jt'] as List<dynamic>?)
          ?.map((e) => DataGeneral.fromJson(e as Map<String, dynamic>))
          .toList(),
      dataCountry: (json['data_country'] as List<dynamic>?)
          ?.map((e) => DataGeneral.fromJson(e as Map<String, dynamic>))
          .toList(),
      dataProvinsi: (json['data_provinsi'] as List<dynamic>?)
          ?.map((e) => DataGeneral.fromJson(e as Map<String, dynamic>))
          .toList(),
      dataCity: (json['data_city'] as List<dynamic>?)
          ?.map((e) => DataGeneral.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BulkDataGeneralImplToJson(
        _$BulkDataGeneralImpl instance) =>
    <String, dynamic>{
      'data_prefix': instance.dataPrefix,
      'data_group': instance.dataGroupWilayah,
      'data_wilayah_penagihan': instance.dataWilayahPenagihan,
      'data_jt': instance.dataJatuhTempo,
      'data_country': instance.dataCountry,
      'data_provinsi': instance.dataProvinsi,
      'data_city': instance.dataCity,
    };
