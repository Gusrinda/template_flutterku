// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_detail_packing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDetailPackingImpl _$$ResponseDetailPackingImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDetailPackingImpl(
      msgServer: (json['msgServer'] as List<dynamic>?)
          ?.map((e) => DataDetailPacking.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseDetailPackingImplToJson(
        _$ResponseDetailPackingImpl instance) =>
    <String, dynamic>{
      'msgServer': instance.msgServer,
    };

_$DataDetailPackingImpl _$$DataDetailPackingImplFromJson(
        Map<String, dynamic> json) =>
    _$DataDetailPackingImpl(
      checkvalue: json['checkvalue'] as String?,
      trnsjjualdtlseq: (json['trnsjjualdtlseq'] as num?)?.toInt(),
      salesdeliverydtloid: (json['salesdeliverydtloid'] as num?)?.toInt(),
      salesdeliverymstoid: (json['salesdeliverymstoid'] as num?)?.toInt(),
      orderdtloid: (json['orderdtloid'] as num?)?.toInt(),
      salesdeliveryqty: (json['salesdeliveryqty'] as num?)?.toInt(),
      itemdeliverynote: json['itemdeliverynote'] as String?,
      salesdeliveryoid: (json['salesdeliveryoid'] as num?)?.toInt(),
      itemoid: (json['itemoid'] as num?)?.toInt(),
      itemunitoid: (json['itemunitoid'] as num?)?.toInt(),
      itemlongdesc: json['itemlongdesc'] as String?,
      itemcode: json['itemcode'] as String?,
      merk: json['merk'] as String?,
      unit: json['unit'] as String?,
      deliveredqty: (json['deliveredqty'] as num?)?.toInt(),
      referedqty: (json['referedqty'] as num?)?.toInt(),
      qtypak: (json['qtypak'] as num?)?.toInt(),
      itemloc: (json['itemloc'] as num?)?.toInt(),
      location: json['location'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$DataDetailPackingImplToJson(
        _$DataDetailPackingImpl instance) =>
    <String, dynamic>{
      'checkvalue': instance.checkvalue,
      'trnsjjualdtlseq': instance.trnsjjualdtlseq,
      'salesdeliverydtloid': instance.salesdeliverydtloid,
      'salesdeliverymstoid': instance.salesdeliverymstoid,
      'orderdtloid': instance.orderdtloid,
      'salesdeliveryqty': instance.salesdeliveryqty,
      'itemdeliverynote': instance.itemdeliverynote,
      'salesdeliveryoid': instance.salesdeliveryoid,
      'itemoid': instance.itemoid,
      'itemunitoid': instance.itemunitoid,
      'itemlongdesc': instance.itemlongdesc,
      'itemcode': instance.itemcode,
      'merk': instance.merk,
      'unit': instance.unit,
      'deliveredqty': instance.deliveredqty,
      'referedqty': instance.referedqty,
      'qtypak': instance.qtypak,
      'itemloc': instance.itemloc,
      'location': instance.location,
      'image': instance.image,
    };
