import 'dart:async';

import 'package:becca_supir/src/core/model/status_page.dart';
import 'package:becca_supir/src/data/models/response/general/response_master_general.dart';
import 'package:becca_supir/src/domain/domain.dart';
import 'package:becca_supir/src/domain/repository/general_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_data_event.dart';
part 'get_data_state.dart';
part 'get_data_bloc.freezed.dart';

class GetDataBloc extends Bloc<GetDataEvent, GetDataState> {
  final String? _bearerToken;
  final GeneralRepository _repository;

  GetDataBloc({required GeneralRepository repository, required String? token})
      : _repository = repository,
        _bearerToken = token,
        super(const GetDataState()) {
    on<GetDaftarData>(_onGetDaftarData);
  }

  FutureOr<void> _onGetDaftarData(
      GetDaftarData event, Emitter<GetDataState> emit) async {
    try {
      emit(state.copyWith(statusPage: LoadingPageStatus.loading));
      
      final getData = await _repository.getDaftarDataGeneral(
        token: _bearerToken ?? '',
      );

      emit(state.copyWith(
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
}
