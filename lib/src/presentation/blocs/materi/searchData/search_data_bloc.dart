import 'dart:async';

import 'package:soa_jpt/src/core/model/status_page.dart';
import 'package:soa_jpt/src/data/models/response/general/response_master_general.dart';
import 'package:soa_jpt/src/domain/domain.dart';
import 'package:soa_jpt/src/domain/repository/general_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_data_event.dart';
part 'search_data_state.dart';
part 'search_data_bloc.freezed.dart';

class SearchDataBloc extends Bloc<SearchDataEvent, SearchDataState> {
  final String? _bearerToken;
  final GeneralRepository _repository;

  SearchDataBloc(
      {required GeneralRepository repository, required String? token})
      : _repository = repository,
        _bearerToken = token,
        super(const SearchDataState()) {
    on<GetDaftarData>(_onGetDaftarData);
    on<GetDaftarSearch>(_onGetDaftarSearch);
  }

  FutureOr<void> _onGetDaftarData(
      GetDaftarData event, Emitter<SearchDataState> emit) async {
    try {
      emit(state.copyWith(
        statusPage: LoadingPageStatus.loading,
      ));

      final getData = await _repository.getDaftarDataGeneral(
        token: _bearerToken ?? '',
        paginate: "200",
      );

      List<DataGeneral> daftarData = getData?.data ?? [];

      List<String> daftarKategori = [];

      if (daftarData.isNotEmpty) {
        daftarKategori.add("SEMUA");
        for (var data in daftarData) {
          daftarKategori.add(data.group ?? 'GROUP');
        }
      }

      // Menggunakan Set untuk membuat daftar menjadi unik
      Set<String> uniqueSet = Set<String>.from(daftarKategori);

      // Mengonversi kembali ke List jika perlu
      List<String> uniqueList = uniqueSet.toList();

      emit(state.copyWith(
        selectedFilter: uniqueList.first,
        daftarData: getData?.data ?? [],
        daftarGroup: uniqueList,
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

  FutureOr<void> _onGetDaftarSearch(
      GetDaftarSearch event, Emitter<SearchDataState> emit) async {
    try {
      print("SEARCH FILTER ? ${event.selectedGroup}");

      emit(state.copyWith(
        statusPage: LoadingPageStatus.loading,
        selectedFilter: event.selectedGroup,
      ));

      String searchText = event.searchText ?? '';
      String searchKategori =
          event.selectedGroup == "SEMUA" ? '' : event.selectedGroup ?? '';

      final getData = await _repository.getDaftarDataGeneral(
          token: _bearerToken ?? '',
          filterKategori: searchKategori,
          search: searchText,
          searchfield: 'value,value_2,group');

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
