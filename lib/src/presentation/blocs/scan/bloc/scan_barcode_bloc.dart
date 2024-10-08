import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soa_jpt/src/core/model/status_page.dart';
import 'package:soa_jpt/src/data/models/request/request_save_checker.dart';
import 'package:soa_jpt/src/data/models/response/scan/response_checker_detail.dart';
import 'package:soa_jpt/src/data/models/response/scan/response_checker_so.dart';
import 'package:soa_jpt/src/domain/repository/scan_repository.dart';

part 'scan_barcode_event.dart';
part 'scan_barcode_state.dart';
part 'scan_barcode_bloc.freezed.dart';

class ScanBarcodeBloc extends Bloc<ScanBarcodeEvent, ScanBarcodeState> {
  final ScanRepository scanRepository;
  final String idUser;

  ScanBarcodeBloc({
    required this.scanRepository,
    required this.idUser,
  }) : super(ScanBarcodeState()) {
    on<ChangeSearchField>(_onChangeSearchField);
    on<RefreshBarcode>(_onRefreshBarcode);
    on<SaveChecker>(_onRequestSaveChecker);
  }

  FutureOr<void> _onChangeSearchField(
      ChangeSearchField event, Emitter<ScanBarcodeState> emit) async {
    try {
      emit(state.copyWith(statusSearch: LoadingPageStatus.loading));
      EasyLoading.show(status: "Getting data");

      final result = await scanRepository.doGetCheckerSO(
        search: event.search,
        idSales: idUser,
      );

      if (result == null) {
        emit(state.copyWith(
            // statusPage: LoadingPageStatus.failure,
            error: 'Gagal memperoleh data barcode',
            statusSearch: LoadingPageStatus.success));
        EasyLoading.showError("Gagal memperoleh data barcode");
        return;
      }

      final resultDetail = await scanRepository.doGetCheckerDetail(
        idChecker: result.msgServer!.first.ordermstoid.toString(),
        idSales: idUser,
      );

      EasyLoading.dismiss();
      emit(state.copyWith(
        // statusPage: LoadingPageStatus.success,
        statusSearch: LoadingPageStatus.success,
        barcodeString: event.search,
        responseCheckerSO: result,
        resopnseCheckerDetail: resultDetail,
      ));
    } catch (e) {
      emit(state.copyWith(statusSearch: LoadingPageStatus.success));
      log('Bloc catch GetCustomer: $e');
      EasyLoading.showError("Code SO Plan tidak ada.");
      emit(state.copyWith(
        // statusPage: LoadingPageStatus.failure,
        error: '$e',
      ));
    }
  }

  FutureOr<void> _onRefreshBarcode(
      RefreshBarcode event, Emitter<ScanBarcodeState> emit) async {
    emit(ScanBarcodeState());
  }

  FutureOr<void> _onRequestSaveChecker(
      SaveChecker event, Emitter<ScanBarcodeState> emit) async {
    try {
      emit(state.copyWith(
        statusForm: FormzStatus.submissionInProgress,
      ));
      EasyLoading.show(status: "Submitting data.");
      // log('Request data: ${event.requestLending}');

      await scanRepository.doSaveChecker(
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
