import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_list_packing.freezed.dart';
part 'response_list_packing.g.dart';

@freezed
class ResponseListPacking with _$ResponseListPacking {
  const factory ResponseListPacking({
    @JsonKey(name: "msgServer") List<DataListPacking>? msgServer,
  }) = _ResponseListPacking;

  factory ResponseListPacking.fromJson(Map<String, dynamic> json) =>
      _$ResponseListPackingFromJson(json);
}

@freezed
class DataListPacking with _$DataListPacking {
  const factory DataListPacking({
    @JsonKey(name: "trnsjjualmstoid") int? trnsjjualmstoid,
    @JsonKey(name: "orderno") String? orderno,
    @JsonKey(name: "expedisi") String? expedisi,
    @JsonKey(name: "trnorderdate") String? trnorderdate,
  }) = _DataListPacking;

  factory DataListPacking.fromJson(Map<String, dynamic> json) =>
      _$DataListPackingFromJson(json);
}
