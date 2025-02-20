import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sulinda_sales/src/core/model/status_page.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_plan.dart';
import 'package:sulinda_sales/src/data/models/request/request_save_absensi.dart';
import 'package:sulinda_sales/src/data/models/request/request_save_tagihan.dart';
import 'package:sulinda_sales/src/data/models/response/customer/response_customer_visiting.dart';
import 'package:sulinda_sales/src/data/models/response/visiting/response_save_plan.dart';
import 'package:sulinda_sales/src/domain/repository/visiting_repository.dart';

part 'visiting_plan_event.dart';
part 'visiting_plan_state.dart';
part 'visiting_plan_bloc.freezed.dart';

class VisitingPlanBloc extends Bloc<VisitingPlanEvent, VisitingPlanState> {
  final VisitingRepository visitingRepository;
  final String token;

  VisitingPlanBloc({
    required this.visitingRepository,
    required this.token,
  }) : super(VisitingPlanState()) {
    on<GetData>(_onGetData);
    on<SaveChecker>(_onRequestSaveChecker);
    on<SaveCheckin>(_onRequestSaveCheckin);
    on<SaveRealisasi>(_onRequestSaveRealisasi);
  }

  FutureOr<void> _onGetData(
      GetData event, Emitter<VisitingPlanState> emit) async {
    try {
      emit(state.copyWith(
        statusPage: LoadingPageStatus.loading,
      ));

      final result =
          await visitingRepository.getDaftarCustomerVisiting(token: token);

      if (result == null) {
        emit(state.copyWith(
          statusPage: LoadingPageStatus.failure,
          error: 'Gagal memperoleh data packing list',
        ));
        return;
      }

      emit(state.copyWith(
        statusPage: LoadingPageStatus.success,
        repsonseCustomerVisiting: result,
      ));
    } catch (e) {
      log('Bloc catch GetCustomer: $e');
      emit(state.copyWith(
        statusPage: LoadingPageStatus.failure,
        error: '$e',
      ));
    }
  }

  FutureOr<void> _onRequestSaveChecker(
      SaveChecker event, Emitter<VisitingPlanState> emit) async {
    try {
      emit(state.copyWith(
        statusForm: FormzStatus.submissionInProgress,
      ));
      EasyLoading.show(status: "Creating data.");
      // log('Request data: ${event.requestLending}');

      final result = await visitingRepository.doCreatePlan(
        token: token,
        request: event.request,
      );
      EasyLoading.dismiss();
      emit(state.copyWith(
        statusForm: FormzStatus.submissionSuccess,
        responseSavePlan: result
      ));
    } catch (e) {
      log('Bloc catch Submit Visit: $e');
      EasyLoading.showError('${e}');
      emit(state.copyWith(
        statusForm: FormzStatus.submissionFailure,
        error: '$e',
      ));
    }
  }

  FutureOr<void> _onRequestSaveCheckin(
      SaveCheckin event, Emitter<VisitingPlanState> emit) async {
    try {
      emit(state.copyWith(
        statusForm: FormzStatus.submissionInProgress,
      ));
      EasyLoading.show(status: "Creating data.");
      // log('Request data: ${event.requestLending}');

      await visitingRepository.doSaveCheckin(
        token: token,
        request: event.request,
      );
      EasyLoading.dismiss();
      emit(state.copyWith(
        dataRequest: event.request,
        statusForm: FormzStatus.submissionSuccess,
      ));
    } catch (e) {
      log('Bloc catch Submit Visit: $e');
      EasyLoading.showError('${e}');
      emit(state.copyWith(
        statusForm: FormzStatus.submissionFailure,
        error: '$e',
      ));
    }
  }

  FutureOr<void> _onRequestSaveRealisasi(
      SaveRealisasi event, Emitter<VisitingPlanState> emit) async {
    try {
      emit(state.copyWith(
        statusForm: FormzStatus.submissionInProgress,
      ));
      EasyLoading.show(status: "Creating data.");
      // log('Request data: ${event.requestLending}');

      await visitingRepository.doSaveTagihan(
        token: token,
        request: event.request,
      );
      EasyLoading.dismiss();
      emit(state.copyWith(
        statusForm: FormzStatus.submissionSuccess,
      ));
    } catch (e) {
      log('Bloc catch Submit Visit: $e');
      EasyLoading.showError('${e}');
      emit(state.copyWith(
        statusForm: FormzStatus.submissionFailure,
        error: '$e',
      ));
    }
  }
}
