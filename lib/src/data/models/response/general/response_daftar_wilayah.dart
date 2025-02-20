import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_daftar_wilayah.freezed.dart';
part 'response_daftar_wilayah.g.dart';

@freezed
class ResponseDaftarWilayah with _$ResponseDaftarWilayah {
  const factory ResponseDaftarWilayah({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") dynamic message,
    @JsonKey(name: "error") dynamic error,
    @JsonKey(name: "data") List<DataWilayah>? data,
  }) = _ResponseDaftarWilayah;

  factory ResponseDaftarWilayah.fromJson(Map<String, dynamic> json) =>
      _$ResponseDaftarWilayahFromJson(json);
}

@freezed
class DataWilayah with _$DataWilayah {
  const factory DataWilayah({
    @JsonKey(name: "Text") String? text,
    @JsonKey(name: "Value") String? value,
  }) = _DataWilayah;

  factory DataWilayah.fromJson(Map<String, dynamic> json) => _$DataWilayahFromJson(json);
}
