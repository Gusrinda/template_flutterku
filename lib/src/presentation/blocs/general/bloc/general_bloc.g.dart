// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeneralStateImpl _$$GeneralStateImplFromJson(Map<String, dynamic> json) =>
    _$GeneralStateImpl(
      daftarWilayah: (json['daftarWilayah'] as List<dynamic>?)
          ?.map((e) => DataWilayah.fromJson(e as Map<String, dynamic>))
          .toList(),
      daftarBarang: (json['daftarBarang'] as List<dynamic>?)
          ?.map((e) => DataBarang.fromJson(e as Map<String, dynamic>))
          .toList(),
      daftarKategoriBarang: (json['daftarKategoriBarang'] as List<dynamic>?)
          ?.map((e) => DataGeneral.fromJson(e as Map<String, dynamic>))
          .toList(),
      daftarPPH: (json['daftarPPH'] as List<dynamic>?)
          ?.map((e) => DataPPH.fromJson(e as Map<String, dynamic>))
          .toList(),
      daftarPPN: (json['daftarPPN'] as List<dynamic>?)
          ?.map((e) => DataPPN.fromJson(e as Map<String, dynamic>))
          .toList(),
      daftarDataBulk: json['daftarDataBulk'] == null
          ? null
          : BulkDataGeneral.fromJson(
              json['daftarDataBulk'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$GeneralStateImplToJson(_$GeneralStateImpl instance) =>
    <String, dynamic>{
      'daftarWilayah': instance.daftarWilayah,
      'daftarBarang': instance.daftarBarang,
      'daftarKategoriBarang': instance.daftarKategoriBarang,
      'daftarPPH': instance.daftarPPH,
      'daftarPPN': instance.daftarPPN,
      'daftarDataBulk': instance.daftarDataBulk,
      'error': instance.error,
    };
