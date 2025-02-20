import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_summary_so.freezed.dart';
part 'response_summary_so.g.dart';

@freezed
class ResponseSummarySo with _$ResponseSummarySo {
  const factory ResponseSummarySo({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") dynamic message,
    @JsonKey(name: "error") dynamic error,
    @JsonKey(name: "data") DataSummarySO? data,
  }) = _ResponseSummarySo;

  factory ResponseSummarySo.fromJson(Map<String, dynamic> json) =>
      _$ResponseSummarySoFromJson(json);
}

@freezed
class DataSummarySO with _$DataSummarySO {
  const factory DataSummarySO({
    @JsonKey(name: "total_order") int? totalOrder,
    @JsonKey(name: "total_netto") dynamic totalNetto,
  }) = _DataSummarySO;

  factory DataSummarySO.fromJson(Map<String, dynamic> json) => _$DataSummarySOFromJson(json);
}
