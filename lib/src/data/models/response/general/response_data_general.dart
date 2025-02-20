import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_data_general.freezed.dart';
part 'response_data_general.g.dart';

@freezed
class ResponseDataGeneral with _$ResponseDataGeneral {
  const factory ResponseDataGeneral({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") dynamic message,
    @JsonKey(name: "error") dynamic error,
    @JsonKey(name: "data") List<DataGeneral>? data,
  }) = _ResponseDataGeneral;

  factory ResponseDataGeneral.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataGeneralFromJson(json);
}

@freezed
class DataGeneral with _$DataGeneral {
  const factory DataGeneral({
    @JsonKey(name: "Text") String? text,
    @JsonKey(name: "Value") String? value,
  }) = _DataGeneral;

  factory DataGeneral.fromJson(Map<String, dynamic> json) =>
      _$DataGeneralFromJson(json);
}

@freezed
class BulkDataGeneral with _$BulkDataGeneral {
  const factory BulkDataGeneral({
    @JsonKey(name: "data_prefix") List<DataGeneral>? dataPrefix,
    @JsonKey(name: "data_group") List<DataGeneral>? dataGroupWilayah,
    @JsonKey(name: "data_wilayah_penagihan")
    List<DataGeneral>? dataWilayahPenagihan,
    @JsonKey(name: "data_jt") List<DataGeneral>? dataJatuhTempo,
    @JsonKey(name: "data_country") List<DataGeneral>? dataCountry,
    @JsonKey(name: "data_provinsi") List<DataGeneral>? dataProvinsi,
    @JsonKey(name: "data_city") List<DataGeneral>? dataCity,
  }) = _BulkDataGeneral;

  factory BulkDataGeneral.fromJson(Map<String, dynamic> json) =>
      _$BulkDataGeneralFromJson(json);
}
