part of 'calendar_bloc.dart';

abstract class CalendarEvent extends Equatable {
  const CalendarEvent();
}

class GetDaftarData extends CalendarEvent {
  const GetDaftarData({
    required this.startDate,
    required this.endDate,
  });
  final String startDate;
  final String endDate;
  @override
  List<Object?> get props => [];
}

class GetDetailKalender extends CalendarEvent {
  const GetDetailKalender({
    required this.date,
  });
  final String date;

  @override
  List<Object?> get props => [];
}

class GetDetailSO extends CalendarEvent {
  const GetDetailSO({
    required this.idSO,
  });
  final String idSO;

  @override
  List<Object?> get props => [];
}
