import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_detail_calendar.freezed.dart';
part 'response_detail_calendar.g.dart';

@freezed
class ResponseDetailCalendar with _$ResponseDetailCalendar {
  const factory ResponseDetailCalendar({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") dynamic message,
    @JsonKey(name: "error") dynamic error,
    @JsonKey(name: "data") List<DataEventKalender>? data,
  }) = _ResponseDetailCalendar;

  factory ResponseDetailCalendar.fromJson(Map<String, dynamic> json) =>
      _$ResponseDetailCalendarFromJson(json);
}

@freezed
class DataEventKalender with _$DataEventKalender {
  const factory DataEventKalender({
    @JsonKey(name: "activity_date") String? activityDate,
    @JsonKey(name: "activity_time") String? activityTime,
    @JsonKey(name: "activity_type") String? activityType,
    @JsonKey(name: "m_cust_name") String? mCustName,
    @JsonKey(name: "activity_no") String? activityNo,
    @JsonKey(name: "ref_id") int? refId,
  }) = _DataEventKalender;

  factory DataEventKalender.fromJson(Map<String, dynamic> json) =>
      _$DataEventKalenderFromJson(json);
}
