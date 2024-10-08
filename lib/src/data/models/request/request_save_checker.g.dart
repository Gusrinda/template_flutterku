// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_save_checker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestSaveCheckerImpl _$$RequestSaveCheckerImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestSaveCheckerImpl(
      jsonHdr: (json['JsonHdr'] as List<dynamic>?)
          ?.map((e) => JsonHdr.fromJson(e as Map<String, dynamic>))
          .toList(),
      jsonDtl: (json['JsonDtl'] as List<dynamic>?)
          ?.map((e) => JsonDtl.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RequestSaveCheckerImplToJson(
        _$RequestSaveCheckerImpl instance) =>
    <String, dynamic>{
      'JsonHdr': instance.jsonHdr,
      'JsonDtl': instance.jsonDtl,
    };

_$JsonDtlImpl _$$JsonDtlImplFromJson(Map<String, dynamic> json) =>
    _$JsonDtlImpl(
      salesdeliveryqty: json['salesdeliveryqty'] as String?,
      orderdtloid: json['orderdtloid'] as String?,
      itemoid: json['itemoid'] as String?,
      trnordermstoid: json['trnordermstoid'] as String?,
      trnorderdtlunitoid: json['trnorderdtlunitoid'] as String?,
    );

Map<String, dynamic> _$$JsonDtlImplToJson(_$JsonDtlImpl instance) =>
    <String, dynamic>{
      'salesdeliveryqty': instance.salesdeliveryqty,
      'orderdtloid': instance.orderdtloid,
      'itemoid': instance.itemoid,
      'trnordermstoid': instance.trnordermstoid,
      'trnorderdtlunitoid': instance.trnorderdtlunitoid,
    };

_$JsonHdrImpl _$$JsonHdrImplFromJson(Map<String, dynamic> json) =>
    _$JsonHdrImpl(
      trnordernote: json['trnordernote'] as String?,
      orderno: json['orderno'] as String?,
      userid: json['userid'] as String?,
      ekspedisioid: json['ekspedisioid'] as String?,
    );

Map<String, dynamic> _$$JsonHdrImplToJson(_$JsonHdrImpl instance) =>
    <String, dynamic>{
      'trnordernote': instance.trnordernote,
      'orderno': instance.orderno,
      'userid': instance.userid,
      'ekspedisioid': instance.ekspedisioid,
    };
