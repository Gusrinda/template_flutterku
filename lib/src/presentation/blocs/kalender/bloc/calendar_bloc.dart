import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sulinda_sales/core.dart';
import 'package:sulinda_sales/src/core/model/status_page.dart';
import 'package:sulinda_sales/src/data/models/response/kalender/response_detail_calendar.dart';
import 'package:sulinda_sales/src/domain/repository/general_repository.dart';

import '../../../../data/models/response/kalender/response_list_calendar.dart';

part 'calendar_event.dart';
part 'calendar_state.dart';
part 'calendar_bloc.freezed.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  final String? _bearerToken;
  final GeneralRepository _repository;
  final SoRepository _soRepository;

  CalendarBloc(
      {required GeneralRepository repository,
      required SoRepository soRepository,
      required String? token})
      : _repository = repository,
        _soRepository = soRepository,
        _bearerToken = token,
        super(const CalendarState()) {
    on<GetDaftarData>(_onGetDaftarData);
    on<GetDetailSO>(_onGetDetailSO);
    on<GetDetailKalender>(_onGetDetailKalender);
  }

  FutureOr<void> _onGetDetailSO(
      GetDetailSO event, Emitter<CalendarState> emit) async {
    try {
      emit(state.copyWith(
        statusGetDataDetail: LoadingPageStatus.initial,
      ));
      EasyLoading.show(status: 'Getting data...');
      final getData = await _soRepository.getDetailSO(
          token: _bearerToken ?? '', id: event.idSO);

      emit(state.copyWith(
        responseDetailSO: getData,
        statusGetDataDetail: LoadingPageStatus.success,
      ));
      emit(state.copyWith(
        statusGetDataDetail: LoadingPageStatus.initial,
      ));

      EasyLoading.dismiss();
    } on ApiException catch (e) {
      EasyLoading.showError("API Error get data detail.\n${e.toString()}");
      emit(state.copyWith(
        errorMessage: "CATCH EXCEPTION : ${e.toString()}",
        statusGetDataDetail: LoadingPageStatus.failure,
      ));
    } catch (e) {
      EasyLoading.showError("System Error get data detail.\n${e.toString()}");
      emit(state.copyWith(
        errorMessage: "CATCH EXCEPTION : ${e.toString()}",
        statusGetDataDetail: LoadingPageStatus.failure,
      ));
    }
  }

  FutureOr<void> _onGetDaftarData(
      GetDaftarData event, Emitter<CalendarState> emit) async {
    try {
      emit(state.copyWith(statusPage: LoadingPageStatus.loading));

      final getData = await _repository.getDaftarKalender(
        tokenUser: _bearerToken ?? '',
        startDate: event.startDate,
        endDate: event.endDate,
      );

      emit(state.copyWith(
        responseListCalendar: getData,
        statusPage: LoadingPageStatus.success,
      ));
    } on ApiException catch (e) {
      EasyLoading.showError("API Error get data general.\n${e.toString()}");
      emit(state.copyWith(
        errorMessage: "CATCH EXCEPTION : ${e.toString()}",
        statusPage: LoadingPageStatus.failure,
      ));
    } catch (e) {
      EasyLoading.showError("System Error get data general.\n${e.toString()}");
      emit(state.copyWith(
        errorMessage: "CATCH EXCEPTION : ${e.toString()}",
        statusPage: LoadingPageStatus.failure,
      ));
    }
  }

  FutureOr<void> _onGetDetailKalender(
      GetDetailKalender event, Emitter<CalendarState> emit) async {
    try {
      EasyLoading.show();
      emit(state.copyWith(statusDetailTanggal: LoadingPageStatus.loading));

      final getData = await _repository.getDetailKalender(
          tokenUser: _bearerToken ?? '', date: event.date);

      emit(state.copyWith(
        repsonseDetailKalender: getData,
        statusDetailTanggal: LoadingPageStatus.success,
      ));
      EasyLoading.dismiss();
    } on ApiException catch (e) {
      EasyLoading.dismiss();
      EasyLoading.showError(
          "API Error get data detail kalender.\n${e.toString()}");
      emit(state.copyWith(
        errorMessage: "CATCH EXCEPTION : ${e.toString()}",
        statusDetailTanggal: LoadingPageStatus.failure,
      ));
    } catch (e) {
      EasyLoading.dismiss();
      EasyLoading.showError("System Error get data general.\n${e.toString()}");
      emit(state.copyWith(
        errorMessage: "CATCH EXCEPTION : ${e.toString()}",
        statusDetailTanggal: LoadingPageStatus.failure,
      ));
    }
  }
}
