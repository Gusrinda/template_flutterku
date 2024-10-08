import 'dart:async';

import 'package:soa_jpt/src/core/model/status_page.dart';
import 'package:soa_jpt/src/data/models/response/general/response_master_general.dart';
import 'package:soa_jpt/src/domain/domain.dart';
import 'package:soa_jpt/src/domain/repository/general_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginate_data_event.dart';
part 'paginate_data_state.dart';
part 'paginate_data_bloc.freezed.dart';

class PaginateDataBloc extends Bloc<PaginateDataEvent, PaginateDataState> {
  final String? _bearerToken;
  final GeneralRepository _repository;

  PaginateDataBloc(
      {required GeneralRepository repository, required String? token})
      : _repository = repository,
        _bearerToken = token,
        super(const PaginateDataState()) {
    on<GetDaftarData>(_onGetDaftarData);
    on<PagenationData>(_onPagenationData);
  }

  FutureOr<void> _onGetDaftarData(
      GetDaftarData event, Emitter<PaginateDataState> emit) async {
    try {
      emit(state.copyWith(statusPage: LoadingPageStatus.loading));

      final getData = await _repository.getDaftarDataGeneral(
          token: _bearerToken ?? '', paginate: "10");

      emit(state.copyWith(
        currentPage: 1,
        totalPage: getData?.lastPage,
        hasReachedMax: getData?.currentPage == getData?.lastPage,
        daftarData: getData?.data ?? [],
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

  FutureOr<void> _onPagenationData(
      PagenationData event, Emitter<PaginateDataState> emit) async {
    emit(state.copyWith(
      paginationStatus: LoadingPageStatus.initial,
    ));

    emit(state.copyWith(paginationStatus: LoadingPageStatus.loading));

    final getDataPagenation = await _repository.getDaftarDataGeneral(
        token: _bearerToken ?? '',
        page: "${state.currentPage + 1}",
        paginate: "10");

    if (getDataPagenation == null) {
      emit(state.copyWith(
          paginationStatus: LoadingPageStatus.failure,
          hasReachedMax: true,
          errorMessage: "Page Error Kosong !"));
      return;
    }

    final customerList = getDataPagenation.data;

    emit(state.copyWith(
        daftarData: List.of(state.daftarData as Iterable<DataGeneral>)
          ..addAll(customerList!),
        currentPage: state.currentPage + 1,
        totalPage: getDataPagenation.lastPage,
        hasReachedMax:
            getDataPagenation.currentPage == getDataPagenation.lastPage,
        paginationStatus: LoadingPageStatus.success));
  }
}
