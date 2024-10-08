// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_dummy_barang.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelDummyBarangImpl _$$ModelDummyBarangImplFromJson(
        Map<String, dynamic> json) =>
    _$ModelDummyBarangImpl(
      id: json['id'] as String?,
      nama: json['nama'] as String?,
      qty: (json['qty'] as num?)?.toInt(),
      urlImage: json['url_image'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$ModelDummyBarangImplToJson(
        _$ModelDummyBarangImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'qty': instance.qty,
      'url_image': instance.urlImage,
      'code': instance.code,
    };

_$ModelDummySelectedBarangImpl _$$ModelDummySelectedBarangImplFromJson(
        Map<String, dynamic> json) =>
    _$ModelDummySelectedBarangImpl(
      modelBarang: json['modelBarang'] == null
          ? null
          : ModelDummyBarang.fromJson(
              json['modelBarang'] as Map<String, dynamic>),
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$ModelDummySelectedBarangImplToJson(
        _$ModelDummySelectedBarangImpl instance) =>
    <String, dynamic>{
      'modelBarang': instance.modelBarang,
      'isSelected': instance.isSelected,
    };
