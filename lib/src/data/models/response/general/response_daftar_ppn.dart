import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_daftar_ppn.freezed.dart';
part 'response_daftar_ppn.g.dart';

@freezed
class ResponseDaftarPpn with _$ResponseDaftarPpn {
  const factory ResponseDaftarPpn({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") dynamic message,
    @JsonKey(name: "error") dynamic error,
    @JsonKey(name: "data") List<DataPPN>? data,
  }) = _ResponseDaftarPpn;

  factory ResponseDaftarPpn.fromJson(Map<String, dynamic> json) =>
      _$ResponseDaftarPpnFromJson(json);
}

@freezed
class DataPPN with _$DataPPN {
  const factory DataPPN({
    @JsonKey(name: "value_pct") int? valuePct,
    @JsonKey(name: "plus_min") int? plusMin,
    @JsonKey(name: "Text") String? text,
    @JsonKey(name: "Value") String? value,
  }) = _DataPPN;

  factory DataPPN.fromJson(Map<String, dynamic> json) =>
      _$DataPPNFromJson(json);
}
