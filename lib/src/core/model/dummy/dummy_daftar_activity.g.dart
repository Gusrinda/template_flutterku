// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dummy_daftar_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DummyDaftarActivityImpl _$$DummyDaftarActivityImplFromJson(
        Map<String, dynamic> json) =>
    _$DummyDaftarActivityImpl(
      namaPt: json['namaPT'] as String?,
      nomorPenagihan: json['nomorPenagihan'] as String?,
      tanggalPlan: json['tanggalPlan'] == null
          ? null
          : DateTime.parse(json['tanggalPlan'] as String),
      namaLokasi: json['namaLokasi'] as String?,
      alamatLokasi: json['alamatLokasi'] as String?,
      nominalPiutang: (json['nominalPiutang'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DummyDaftarActivityImplToJson(
        _$DummyDaftarActivityImpl instance) =>
    <String, dynamic>{
      'namaPT': instance.namaPt,
      'nomorPenagihan': instance.nomorPenagihan,
      'tanggalPlan': instance.tanggalPlan?.toIso8601String(),
      'namaLokasi': instance.namaLokasi,
      'alamatLokasi': instance.alamatLokasi,
      'nominalPiutang': instance.nominalPiutang,
    };
