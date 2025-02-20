import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:sulinda_sales/src/data/models/response/barang/response_daftar_barang.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_daftar_pph.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_daftar_ppn.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_daftar_wilayah.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_data_general.dart';
import 'package:sulinda_sales/src/domain/exception/api_exception.dart';
import 'package:sulinda_sales/src/domain/repository/general_repository.dart';

part 'general_event.dart';
part 'general_state.dart';
part 'general_bloc.freezed.dart';
part 'general_bloc.g.dart';

class GeneralBloc extends HydratedBloc<GeneralEvent, GeneralState> {
  GeneralRepository _generalRepository;
  String _tokenUser;

  GeneralBloc({
    required GeneralRepository generalRepository,
    required String tokenUser,
  })  : _generalRepository = generalRepository,
        _tokenUser = tokenUser,
        super(const GeneralState()) {
    on<FetchDataGeneral>(_onFetchDataGeneral);
  }

  FutureOr<void> _onFetchDataGeneral(
      FetchDataGeneral event, Emitter<GeneralState> emit) async {
    try {
      EasyLoading.show(status: 'Setup Data...');
      final getDaftarWilayah =
          await _generalRepository.getDaftarWilayah(tokenUser: _tokenUser);

      final getDaftarKategoriBarang = await _generalRepository
          .getDaftarKategoriBarang(tokenUser: _tokenUser);

      final getDaftarPPH =
          await _generalRepository.getDaftarPPH(tokenUser: _tokenUser);

      final getDaftarPPN =
          await _generalRepository.getDaftarPPN(tokenUser: _tokenUser);

      final getDataBULKCountry = await _generalRepository
          .getDaftarCountryProvinsiCity(tokenUser: _tokenUser);

      emit(
        state.copyWith(
          daftarWilayah: getDaftarWilayah?.data ?? [],
          daftarPPH: getDaftarPPH?.data ?? [],
          daftarPPN: getDaftarPPN?.data ?? [],
          daftarKategoriBarang: getDaftarKategoriBarang?.data ?? [],
          daftarDataBulk: getDataBULKCountry,
        ),
      );
      EasyLoading.dismiss();
    } on ApiException catch (e) {
      EasyLoading.showError("API Error get list wilayah");
    } catch (e) {
      EasyLoading.showError("System Error get list wilayah");
    }
  }

  @override
  GeneralState? fromJson(Map<String, dynamic> json) {
    GeneralState? state;
    try {
      state = GeneralState.fromJson(json);
    } catch (_) {}
    return state;
  }

  @override
  Map<String, dynamic>? toJson(GeneralState state) {
    return state.toJson();
  }
}
