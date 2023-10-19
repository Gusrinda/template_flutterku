import 'dart:async';

import 'package:becca_supir/src/core/model/status_page.dart';
import 'package:becca_supir/src/data/models/request/request_save_konfirm.dart';
import 'package:becca_supir/src/data/models/response/response_list_belum_konfirm/response_list_belum_konfirm.dart';
import 'package:becca_supir/src/domain/exception/api_exception.dart';
import 'package:becca_supir/src/domain/repository/doRepository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_order_event.dart';
part 'delivery_order_state.dart';
part 'delivery_order_bloc.freezed.dart';

class DeliveryOrderBloc extends Bloc<DeliveryOrderEvent, DeliveryOrderState> {
  final DoRepository _doRepository;

  DeliveryOrderBloc({
    required DoRepository orderRepository,
  })  : _doRepository = orderRepository,
        super(const DeliveryOrderState()) {
    on<FetchDataAwal>(_onFetchDataAwal);
    on<OnSelectDO>(_onOnSelectDO);
    on<OnSimpanKonfirm>(_onOnSimpanKonfirm);
  }

  FutureOr<void> _onFetchDataAwal(
      FetchDataAwal event, Emitter<DeliveryOrderState> emit) async {
    try {
      emit(state.copyWith(statusPage: LoadingPageStatus.loading));

      final getInfoOrder = await _doRepository.getDaftarDOBelumKonfirm(
        username: event.mUserName,
      );

      List<ListSelectDO> daftarSelectDo = [];

      for (var dataDO in getInfoOrder!.dataBelumKonfirm!) {
        daftarSelectDo
            .add(ListSelectDO(isSelected: false, dataBelumKonfirm: dataDO));
      }

      emit(state.copyWith(
        responseListBelumKonfirm: getInfoOrder,
        daftarSelectDO: daftarSelectDo,
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

  FutureOr<void> _onOnSelectDO(
      OnSelectDO event, Emitter<DeliveryOrderState> emit) async {
    List<ListSelectDO> daftarDO = List.from(state.daftarSelectDO!);

    int indexSelected = event.index;

    for (int i = 0; i < daftarDO.length; i++) {
      if (i == indexSelected) {
        daftarDO[i] = ListSelectDO(
            isSelected: !daftarDO[i].isSelected,
            dataBelumKonfirm: daftarDO[i].dataBelumKonfirm);
        break; // Keluar dari perulangan setelah mengubah nilai
      }
    }

    emit(state.copyWith(daftarSelectDO: daftarDO));
  }

  FutureOr<void> _onOnSimpanKonfirm(
      OnSimpanKonfirm event, Emitter<DeliveryOrderState> emit) async {
    try {
      EasyLoading.show(status: "Menyimpan data.");
      List<ListSelectDO> daftarSelected = List.from(
          state.daftarSelectDO!.where((element) => element.isSelected));

      List<Detail> dataDetail = [];

      for (var dataDO in daftarSelected) {
        dataDetail.add(Detail(
          tDoHId: dataDO.dataBelumKonfirm?.tDoHId ?? 0,
          tDpHId: dataDO.dataBelumKonfirm?.tDpHId ?? 0,
        ));
      }

      RequestSaveKonfirm dataRequest = RequestSaveKonfirm(
          mUserId: 1028, mUserName: 'mimin', detail: dataDetail);

      print("REQUEST YANG DIKIRIM \n ${dataRequest}");

      final simpanDO =
          await _doRepository.simpanKonfirmDO(requestData: dataRequest);

      if (simpanDO != "Data berhasil disimpan!") {
        throw ApiException("Error");
      }

      EasyLoading.showSuccess(simpanDO);
      emit(state.copyWith(statusPage: LoadingPageStatus.success));
    } on ApiException catch (e) {
      EasyLoading.dismiss();
      emit(state.copyWith(
        error: "API EXCEPTION : ${e.toString()}",
        statusPage: LoadingPageStatus.failure,
      ));
    } catch (e) {
      EasyLoading.dismiss();
      emit(state.copyWith(
        error: "CATCH EXCEPTION : ${e.toString()}",
        statusPage: LoadingPageStatus.failure,
      ));
    }
  }
}
