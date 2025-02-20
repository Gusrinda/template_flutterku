part of 'calendar_bloc.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState({
    @Default(LoadingPageStatus.initial) statusPage,
    @Default(LoadingPageStatus.initial) statusGetDataDetail,
    @Default(LoadingPageStatus.initial) statusDetailTanggal,
    ResponseListCalendar? responseListCalendar,
    ResponseDetailSo? responseDetailSO,
    ResponseDetailCalendar? repsonseDetailKalender,
    String? errorMessage,
  }) = _CalendarState;
}
