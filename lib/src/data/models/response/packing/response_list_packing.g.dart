// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_list_packing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseListPackingImpl _$$ResponseListPackingImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseListPackingImpl(
      msgServer: (json['msgServer'] as List<dynamic>?)
          ?.map((e) => DataListPacking.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseListPackingImplToJson(
        _$ResponseListPackingImpl instance) =>
    <String, dynamic>{
      'msgServer': instance.msgServer,
    };

_$DataListPackingImpl _$$DataListPackingImplFromJson(
        Map<String, dynamic> json) =>
    _$DataListPackingImpl(
      trnsjjualmstoid: (json['trnsjjualmstoid'] as num?)?.toInt(),
      orderno: json['orderno'] as String?,
      expedisi: json['expedisi'] as String?,
      trnorderdate: json['trnorderdate'] as String?,
    );

Map<String, dynamic> _$$DataListPackingImplToJson(
        _$DataListPackingImpl instance) =>
    <String, dynamic>{
      'trnsjjualmstoid': instance.trnsjjualmstoid,
      'orderno': instance.orderno,
      'expedisi': instance.expedisi,
      'trnorderdate': instance.trnorderdate,
    };
