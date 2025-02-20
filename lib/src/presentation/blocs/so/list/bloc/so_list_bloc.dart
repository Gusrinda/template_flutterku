import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sulinda_sales/src/core/model/status_page.dart';
import 'package:sulinda_sales/src/data/models/response/so/response_detail_so.dart';
import 'package:sulinda_sales/src/data/models/response/so/response_list_so.dart';
import 'package:sulinda_sales/src/domain/exception/api_exception.dart';
import 'package:sulinda_sales/src/domain/repository/general_repository.dart';
import 'package:sulinda_sales/src/domain/repository/so_repository.dart';

part 'so_list_event.dart';
part 'so_list_state.dart';
part 'so_list_bloc.freezed.dart';

class SoListBloc extends Bloc<SoListEvent, SoListState> {
  final String? _bearerToken;
  final SoRepository _repository;

  SoListBloc({required SoRepository repository, required String? token})
      : _repository = repository,
        _bearerToken = token,
        super(const SoListState()) {
    on<GetDaftarData>(_onGetDaftarData);
    on<GetDetailSO>(_onGetDetailSO);
  }

  FutureOr<void> _onGetDaftarData(
      GetDaftarData event, Emitter<SoListState> emit) async {
    try {
      emit(state.copyWith(
          statusGetDataDetail: LoadingPageStatus.initial,
          statusPage: LoadingPageStatus.loading));

      final getData = await _repository.getDaftarSO(
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
      GetDetailSO event, Emitter<SoListState> emit) async {
    try {
      emit(state.copyWith(
        statusGetDataDetail: LoadingPageStatus.initial,
      ));
      EasyLoading.show(status: 'Getting data...');
      final getData = await _repository.getDetailSO(
          token: _bearerToken ?? '', id: event.dataHeader.tSoHId.toString());

      emit(state.copyWith(
        dataHeaderSO: event.dataHeader,
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
}
