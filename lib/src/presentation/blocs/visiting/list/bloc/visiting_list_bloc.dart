import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sulinda_sales/src/core/model/status_page.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_detail_plan.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_list_plan.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_save_plan.dart';
import 'package:sulinda_sales/src/domain/exception/api_exception.dart';
import 'package:sulinda_sales/src/domain/repository/visiting_repository.dart';

part 'visiting_list_event.dart';
part 'visiting_list_state.dart';
part 'visiting_list_bloc.freezed.dart';

class VisitingListBloc extends Bloc<VisitingListEvent, VisitingListState> {
  final String? _bearerToken;
  final VisitingRepository _repository;

  VisitingListBloc(
      {required VisitingRepository repository, required String? token})
      : _repository = repository,
        _bearerToken = token,
        super(const VisitingListState()) {
    on<GetDaftarData>(_onGetDaftarData);
    on<GetDetailSO>(_onGetDetailSO);
    on<GetDetailSOUnplan>(_onGetDetailSOUnplan);
  }

  FutureOr<void> _onGetDaftarData(
      GetDaftarData event, Emitter<VisitingListState> emit) async {
    try {
      emit(state.copyWith(statusPage: LoadingPageStatus.loading));

      final getData = await _repository.getDaftarVisitingPlan(
        token: _bearerToken ?? '',
      );

      emit(state.copyWith(
        responseListSo: getData,
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

  FutureOr<void> _onGetDetailSO(
      GetDetailSO event, Emitter<VisitingListState> emit) async {
    try {
      emit(state.copyWith(
        statusGetDataDetail: LoadingPageStatus.initial,
      ));
      EasyLoading.show(status: 'Getting data...');
      final getData = await _repository.doGetVisitingDetail(
        token: _bearerToken ?? '',
        id: event.selectedPlan.tSalesActivityId.toString(),
      );

      emit(state.copyWith(
        selectedPlan: event.selectedPlan,
        responseDetailSO: getData,
        statusGetDataDetail: LoadingPageStatus.success,
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

  FutureOr<void> _onGetDetailSOUnplan(
      GetDetailSOUnplan event, Emitter<VisitingListState> emit) async {
    try {
      emit(state.copyWith(
        statusGetDataDetail: LoadingPageStatus.initial,
      ));
      EasyLoading.show(status: 'Getting data...');

      final getData = await _repository.getDaftarVisitingPlan(
        token: _bearerToken ?? '',
      );

      DataListPlan? selectedPlan;

      List<DataListPlan> daftarPlan = List.from(getData?.data ?? []);

      for (var element in daftarPlan) {
        if (element.tSalesActivityId ==
            event.responseSavePlan.data?.tSalesActivityId) {
          selectedPlan = element;
        }
      }

      final getDataDetail = await _repository.doGetVisitingDetail(
        token: _bearerToken ?? '',
        id: event.responseSavePlan.data?.tSalesActivityId.toString() ?? '0',
      );

      emit(state.copyWith(
        responseListSo: getData,
        selectedPlan: selectedPlan,
        responseDetailSO: getDataDetail,
        statusGetDataDetail: LoadingPageStatus.success,
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
}
