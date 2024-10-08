import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_checker_so.freezed.dart';
part 'response_checker_so.g.dart';

@freezed
class ResponseCheckerSo with _$ResponseCheckerSo {
  const factory ResponseCheckerSo({
    @JsonKey(name: "msgServer") List<DataCheckerSO>? msgServer,
  }) = _ResponseCheckerSo;

  factory ResponseCheckerSo.fromJson(Map<String, dynamic> json) =>
      _$ResponseCheckerSoFromJson(json);
}

@freezed
class DataCheckerSO with _$DataCheckerSO {
  const factory DataCheckerSO({
    @JsonKey(name: "ordermstoid") int? ordermstoid,
    @JsonKey(name: "orderno") String? orderno,
    @JsonKey(name: "trnorderdate") String? trnorderdate,
    @JsonKey(name: "trncustoid") int? trncustoid,
    @JsonKey(name: "custname") String? custname,
    @JsonKey(name: "delivdate") String? delivdate,
    @JsonKey(name: "trnordernote") String? trnordernote,
    @JsonKey(name: "ekspedisioid") int? ekspedisioid,
    @JsonKey(name: "infostatus") String? infostatus,
  }) = _DataCheckerSO;

  factory DataCheckerSO.fromJson(Map<String, dynamic> json) =>
      _$DataCheckerSOFromJson(json);
}
