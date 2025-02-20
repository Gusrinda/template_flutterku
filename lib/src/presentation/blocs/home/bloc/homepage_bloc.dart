import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sulinda_sales/core.dart';
import 'package:sulinda_sales/src/core/model/status_page.dart';
import 'package:sulinda_sales/src/data/models/response/so/response_list_so.dart';
import 'package:sulinda_sales/src/data/models/response/so/response_summary_so.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_list_plan.dart';
import 'package:sulinda_sales/src/domain/exception/api_exception.dart';
import 'package:sulinda_sales/src/domain/repository/so_repository.dart';
import 'package:sulinda_sales/src/domain/repository/user_repository.dart';

part 'homepage_event.dart';
part 'homepage_state.dart';
part 'homepage_bloc.freezed.dart';

class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  UserRepository _userRepository;
  final VisitingRepository _visitingRepository;
  String _tokenUser;
  final SoRepository _repository;

  HomepageBloc({
    required UserRepository userRepository,
    required VisitingRepository visiitngRepository,
    required SoRepository soRepository,
    required String tokenUser,
  })  : _userRepository = userRepository,
        _tokenUser = tokenUser,
        _repository = soRepository,
        _visitingRepository = visiitngRepository,
        super(const HomepageState()) {
    on<FetchDataAwal>(_onFetchDataAwal);
    on<GetDetailPlan>(_onGetDetailPlan);
  }

  FutureOr<void> _onGetDetailPlan(
      GetDetailPlan event, Emitter<HomepageState> emit) async {
    try {
      emit(state.copyWith(
        statusGetDataDetail: LoadingPageStatus.initial,
      ));
      EasyLoading.show(status: 'Getting data...');
      final getData = await _visitingRepository.doGetVisitingDetail(
        token: _tokenUser ?? '',
        id: event.selectedPlan.tSalesActivityId.toString(),
      );

      emit(state.copyWith(
        selectedPlan: event.selectedPlan,
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
        error: "CATCH EXCEPTION : ${e.toString()}",
        statusGetDataDetail: LoadingPageStatus.failure,
      ));
    } catch (e) {
      EasyLoading.showError("System Error get data detail.\n${e.toString()}");
      emit(state.copyWith(
        error: "CATCH EXCEPTION : ${e.toString()}",
        statusGetDataDetail: LoadingPageStatus.failure,
      ));
    }
  }

  FutureOr<void> _onFetchDataAwal(
      FetchDataAwal event, Emitter<HomepageState> emit) async {
    try {
      emit(state.copyWith(statusPage: LoadingPageStatus.loading));

      final getInfoHome = await _userRepository.getSummarySO(
          mUserID: 'mUserID', tokenUser: _tokenUser);

      final getData = await _repository.getDaftarSO(
        token: _tokenUser ?? '',
      );

      final getDataTodayPlan = await _userRepository.getTodayTask(
        tokenUser: _tokenUser ?? '',
      );

      final getDataOnGoingPlan = await _userRepository.getOnGoingTask(
        tokenUser: _tokenUser ?? '',
      );

      emit(state.copyWith(
        responseListSo: getData,
        responseSummarySO: getInfoHome,
        responseListTodayPlan: getDataTodayPlan,
        responseListOnGoingPlan: getDataOnGoingPlan,
        statusPage: LoadingPageStatus.success,
      ));
    } on ApiException catch (e) {
      emit(state.copyWith(
        error: "API EXCEPTION : ${e.toString()}",
        statusPage: LoadingPageStatus.failure,
      ));
    } catch (e) {
      emit(state.copyWith(
        error: "CATCH EXCEPTION : ${e.toString()}",
        statusPage: LoadingPageStatus.failure,
      ));
    }
  }
}
