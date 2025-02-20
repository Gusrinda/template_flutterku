import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sulinda_sales/src/core/model/status_page.dart';
import 'package:sulinda_sales/src/data/models/response/barang/response_daftar_barang.dart';
import 'package:sulinda_sales/src/domain/exception/api_exception.dart';
import 'package:sulinda_sales/src/domain/repository/general_repository.dart';

part 'katalog_barang_event.dart';
part 'katalog_barang_state.dart';
part 'katalog_barang_bloc.freezed.dart';

class KatalogBarangBloc extends Bloc<KatalogBarangEvent, KatalogBarangState> {
  final String? _bearerToken;
  final GeneralRepository _repository;

  KatalogBarangBloc(
      {required GeneralRepository repository, required String? token})
      : _repository = repository,
        _bearerToken = token,
        super(const KatalogBarangState()) {
    on<GetDaftarData>(_onGetDaftarData);
  }

  FutureOr<void> _onGetDaftarData(
      GetDaftarData event, Emitter<KatalogBarangState> emit) async {
    try {
      emit(state.copyWith(statusPage: LoadingPageStatus.loading));

      final getData = await _repository.getDaftarBarang(
        tokenUser: _bearerToken ?? '',
        idKategoriBarang: event.idBarang,
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
