import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_list_calendar.freezed.dart';
part 'response_list_calendar.g.dart';

@freezed
class ResponseListCalendar with _$ResponseListCalendar {
  const factory ResponseListCalendar({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") dynamic message,
    @JsonKey(name: "error") dynamic error,
    @JsonKey(name: "data") List<DataKalender>? data,
  }) = _ResponseListCalendar;

  factory ResponseListCalendar.fromJson(Map<String, dynamic> json) =>
      _$ResponseListCalendarFromJson(json);
}

@freezed
class DataKalender with _$DataKalender {
  const factory DataKalender({
    @JsonKey(name: "activity_date") String? activityDate,
    @JsonKey(name: "count_order") int? countOrder,
    @JsonKey(name: "count_tagihan") int? countTagihan,
  }) = _DataKalender;

  factory DataKalender.fromJson(Map<String, dynamic> json) =>
      _$DataKalenderFromJson(json);
}
