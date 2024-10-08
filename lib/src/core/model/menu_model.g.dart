// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShiftModelImpl _$$ShiftModelImplFromJson(Map<String, dynamic> json) =>
    _$ShiftModelImpl(
      nama: json['nama'] as String?,
      mulai: json['mulai'] as String?,
      selesai: json['selesai'] as String?,
    );

Map<String, dynamic> _$$ShiftModelImplToJson(_$ShiftModelImpl instance) =>
    <String, dynamic>{
      'nama': instance.nama,
      'mulai': instance.mulai,
      'selesai': instance.selesai,
    };

_$FileModelImpl _$$FileModelImplFromJson(Map<String, dynamic> json) =>
    _$FileModelImpl(
      namaFile: json['namaFile'] as String?,
      urlFile: json['urlFile'] as String?,
      ukurangFile: (json['ukurangFile'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$FileModelImplToJson(_$FileModelImpl instance) =>
    <String, dynamic>{
      'namaFile': instance.namaFile,
      'urlFile': instance.urlFile,
      'ukurangFile': instance.ukurangFile,
    };
