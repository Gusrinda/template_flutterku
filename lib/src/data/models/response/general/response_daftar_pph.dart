import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_daftar_pph.freezed.dart';
part 'response_daftar_pph.g.dart';

@freezed
class ResponseDaftarPph with _$ResponseDaftarPph {
  const factory ResponseDaftarPph({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") dynamic message,
    @JsonKey(name: "error") dynamic error,
    @JsonKey(name: "data") List<DataPPH>? data,
  }) = _ResponseDaftarPph;

  factory ResponseDaftarPph.fromJson(Map<String, dynamic> json) =>
      _$ResponseDaftarPphFromJson(json);
}

@freezed
class DataPPH with _$DataPPH {
  const factory DataPPH({
    @JsonKey(name: "value_pct") double? valuePct,
    @JsonKey(name: "plus_min") int? plusMin,
    @JsonKey(name: "Text") String? text,
    @JsonKey(name: "Value") String? value,
  }) = _DataPPH;

  factory DataPPH.fromJson(Map<String, dynamic> json) =>
      _$DataPPHFromJson(json);
}
