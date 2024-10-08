// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_checker_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseCheckerDetailImpl _$$ResponseCheckerDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseCheckerDetailImpl(
      msgServer: (json['msgServer'] as List<dynamic>?)
          ?.map((e) => DataDetailChecker.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseCheckerDetailImplToJson(
        _$ResponseCheckerDetailImpl instance) =>
    <String, dynamic>{
      'msgServer': instance.msgServer,
    };

_$DataDetailCheckerImpl _$$DataDetailCheckerImplFromJson(
        Map<String, dynamic> json) =>
    _$DataDetailCheckerImpl(
      checkvalue: json['checkvalue'] as String?,
      itemlongdesc: json['itemlongdesc'] as String?,
      itemgroupcode: json['itemgroupcode'] as String?,
      itemcode: json['itemcode'] as String?,
      merk: json['merk'] as String?,
      keterangan: json['keterangan'] as String?,
      maxqty: (json['maxqty'] as num?)?.toInt(),
      salesdeliveryqty: (json['salesdeliveryqty'] as num?)?.toInt(),
      itemoid: (json['itemoid'] as num?)?.toInt(),
      trnorderdtloid: (json['trnorderdtloid'] as num?)?.toInt(),
      trnorderdtlunitoid: (json['trnorderdtlunitoid'] as num?)?.toInt(),
      unit: json['unit'] as String?,
      trnordermstoid: (json['trnordermstoid'] as num?)?.toInt(),
      whlocoid: (json['whlocoid'] as num?)?.toInt(),
      lokasi: json['lokasi'] as String?,
      itembarcode3: json['itembarcode3'] as String?,
      konvbarcode3: (json['konvbarcode3'] as num?)?.toInt(),
      itembarcode2: json['itembarcode2'] as String?,
      konvbarcode2: (json['konvbarcode2'] as num?)?.toInt(),
      itembarcode1: json['itembarcode1'] as String?,
      konvbarcode1: (json['konvbarcode1'] as num?)?.toInt(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$DataDetailCheckerImplToJson(
        _$DataDetailCheckerImpl instance) =>
    <String, dynamic>{
      'checkvalue': instance.checkvalue,
      'itemlongdesc': instance.itemlongdesc,
      'itemgroupcode': instance.itemgroupcode,
      'itemcode': instance.itemcode,
      'merk': instance.merk,
      'keterangan': instance.keterangan,
      'maxqty': instance.maxqty,
      'salesdeliveryqty': instance.salesdeliveryqty,
      'itemoid': instance.itemoid,
      'trnorderdtloid': instance.trnorderdtloid,
      'trnorderdtlunitoid': instance.trnorderdtlunitoid,
      'unit': instance.unit,
      'trnordermstoid': instance.trnordermstoid,
      'whlocoid': instance.whlocoid,
      'lokasi': instance.lokasi,
      'itembarcode3': instance.itembarcode3,
      'konvbarcode3': instance.konvbarcode3,
      'itembarcode2': instance.itembarcode2,
      'konvbarcode2': instance.konvbarcode2,
      'itembarcode1': instance.itembarcode1,
      'konvbarcode1': instance.konvbarcode1,
      'image': instance.image,
    };

_$DataCheckingScanImpl _$$DataCheckingScanImplFromJson(
        Map<String, dynamic> json) =>
    _$DataCheckingScanImpl(
      dataDetailChecker: json['checkvalue'] == null
          ? null
          : DataDetailChecker.fromJson(
              json['checkvalue'] as Map<String, dynamic>),
      isChecked: json['isChecked'] as bool? ?? false,
      qtySekarang: (json['qtySekarang'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataCheckingScanImplToJson(
        _$DataCheckingScanImpl instance) =>
    <String, dynamic>{
      'checkvalue': instance.dataDetailChecker,
      'isChecked': instance.isChecked,
      'qtySekarang': instance.qtySekarang,
    };
