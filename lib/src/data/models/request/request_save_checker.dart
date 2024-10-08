import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'request_save_checker.freezed.dart';
part 'request_save_checker.g.dart';

@freezed
class RequestSaveChecker with _$RequestSaveChecker {
  const factory RequestSaveChecker({
    @JsonKey(name: "JsonHdr") List<JsonHdr>? jsonHdr,
    @JsonKey(name: "JsonDtl") List<JsonDtl>? jsonDtl,
  }) = _RequestSaveChecker;

  factory RequestSaveChecker.fromJson(Map<String, dynamic> json) =>
      _$RequestSaveCheckerFromJson(json);
}

@freezed
class JsonDtl with _$JsonDtl {
  const factory JsonDtl({
    @JsonKey(name: "salesdeliveryqty") String? salesdeliveryqty,
    @JsonKey(name: "orderdtloid") String? orderdtloid,
    @JsonKey(name: "itemoid") String? itemoid,
    @JsonKey(name: "trnordermstoid") String? trnordermstoid,
    @JsonKey(name: "trnorderdtlunitoid") String? trnorderdtlunitoid,
  }) = _JsonDtl;

  factory JsonDtl.fromJson(Map<String, dynamic> json) =>
      _$JsonDtlFromJson(json);
}

@freezed
class JsonHdr with _$JsonHdr {
  const factory JsonHdr({
    @JsonKey(name: "trnordernote") String? trnordernote,
    @JsonKey(name: "orderno") String? orderno,
    @JsonKey(name: "userid") String? userid,
    @JsonKey(name: "ekspedisioid") String? ekspedisioid,
  }) = _JsonHdr;

  factory JsonHdr.fromJson(Map<String, dynamic> json) =>
      _$JsonHdrFromJson(json);
}
