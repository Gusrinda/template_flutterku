import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sulinda_sales/src/core/model/status_page.dart';
import 'package:sulinda_sales/src/data/models/response/packing/response_detail_packing.dart';
import 'package:sulinda_sales/src/domain/repository/packing_repository.dart';

part 'packing_detail_event.dart';
part 'packing_detail_state.dart';
part 'packing_detail_bloc.freezed.dart';

class PackingDetailBloc extends Bloc<PackingDetailEvent, PackingDetailState> {
  final String userId;
  final PackingRepository packingRepository;

  PackingDetailBloc({
    required this.userId,
    required this.packingRepository,
  }) : super(PackingDetailState()) {
    on<GetDataDetail>(_onGetDataDetail);
    on<UpdateDataPacking>(_onUpdateDataPacking);
  }

  FutureOr<void> _onGetDataDetail(
      GetDataDetail event, Emitter<PackingDetailState> emit) async {
    try {
      emit(state.copyWith(
        statusPage: LoadingPageStatus.loading,
      ));

      final result = await packingRepository.doGetPackingDetail(
          idPacking: event.idPacking, idSales: userId
          // page:
          // paginate: 1000,
          );

      if (result == null) {
        emit(state.copyWith(
          statusPage: LoadingPageStatus.failure,
          error: 'Gagal memperoleh data detail packing',
        ));
        return;
      }

      emit(state.copyWith(
        statusPage: LoadingPageStatus.success,
        responseDetailPacking: result,
      ));
    } catch (e) {
      log('Bloc catch GetCustomer: $e');
      emit(state.copyWith(
        statusPage: LoadingPageStatus.failure,
        error: '$e',
      ));
    }
  }

  FutureOr<void> _onUpdateDataPacking(
      UpdateDataPacking event, Emitter<PackingDetailState> emit) async {
    try {
      emit(state.copyWith(
        statusFormz: FormzStatus.submissionInProgress,
      ));
      log("1");
      EasyLoading.show(status: "Submitting data.");
      // log('Request data: ${event.requestLending}');
      log("2");
      await packingRepository.doUpdatePackingQty(
        id: event.idPacking,
        qtyIkat: event.qtyIkat,
        qtyKresek: event.qtyKresek,
        qtyPeti: event.qtyPeti,
      );
      log("3");
      EasyLoading.dismiss();
      emit(state.copyWith(
        statusFormz: FormzStatus.submissionSuccess,
      ));
    } catch (e) {
      log('Bloc catch Submit Visit: $e');
      EasyLoading.showError('${e}');
      emit(state.copyWith(
        statusFormz: FormzStatus.submissionFailure,
        error: '$e',
      ));
    }
  }
}
