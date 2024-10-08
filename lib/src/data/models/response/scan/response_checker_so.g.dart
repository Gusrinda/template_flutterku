// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_checker_so.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseCheckerSoImpl _$$ResponseCheckerSoImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseCheckerSoImpl(
      msgServer: (json['msgServer'] as List<dynamic>?)
          ?.map((e) => DataCheckerSO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseCheckerSoImplToJson(
        _$ResponseCheckerSoImpl instance) =>
    <String, dynamic>{
      'msgServer': instance.msgServer,
    };

_$DataCheckerSOImpl _$$DataCheckerSOImplFromJson(Map<String, dynamic> json) =>
    _$DataCheckerSOImpl(
      ordermstoid: (json['ordermstoid'] as num?)?.toInt(),
      orderno: json['orderno'] as String?,
      trnorderdate: json['trnorderdate'] as String?,
      trncustoid: (json['trncustoid'] as num?)?.toInt(),
      custname: json['custname'] as String?,
      delivdate: json['delivdate'] as String?,
      trnordernote: json['trnordernote'] as String?,
      ekspedisioid: (json['ekspedisioid'] as num?)?.toInt(),
      infostatus: json['infostatus'] as String?,
    );

Map<String, dynamic> _$$DataCheckerSOImplToJson(_$DataCheckerSOImpl instance) =>
    <String, dynamic>{
      'ordermstoid': instance.ordermstoid,
      'orderno': instance.orderno,
      'trnorderdate': instance.trnorderdate,
      'trncustoid': instance.trncustoid,
      'custname': instance.custname,
      'delivdate': instance.delivdate,
      'trnordernote': instance.trnordernote,
      'ekspedisioid': instance.ekspedisioid,
      'infostatus': instance.infostatus,
    };
