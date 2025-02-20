import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sulinda_sales/src/core/model/form_text_input.dart';
import 'package:sulinda_sales/src/core/model/status_page.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_so.dart';
import 'package:sulinda_sales/src/data/models/response/customer/response_daftar_customer.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_daftar_pph.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_daftar_ppn.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_daftar_wilayah.dart';
import 'package:sulinda_sales/src/domain/repository/general_repository.dart';
import 'package:sulinda_sales/src/domain/repository/so_repository.dart';

part 'so_create_event.dart';
part 'so_create_state.dart';
part 'so_create_bloc.freezed.dart';

class SoCreateBloc extends Bloc<SoCreateEvent, SoCreateState> {
  final String _bearerToken;
  final String _userID;
  final GeneralRepository _generalRepository;
  final SoRepository _soRepository;

  SoCreateBloc({
    required String bearerToken,
    required String userID,
    required GeneralRepository generalRepository,
    required SoRepository soRepository,
    required EditingDataSO? request,
  })  : _bearerToken = bearerToken,
        _userID = userID,
        _generalRepository = generalRepository,
        _soRepository = soRepository,
        super(
          request != null
              ? SoCreateState.edit(request)
              : SoCreateState(
                  fieldCatatanPOCustomer: FormTextInput.pure(),
                  fieldNomorPoCustomer: FormTextInput.pure(),
                  tanggalCreateSO: DateTime.now(),
                  fieldAmountDiskon: FormTextInput.pure(),
                  fieldBiayaKirim: FormTextInput.pure(),
                ),
        ) {
    on<OnSetupDataAwal>(_onOnSetupDataAwal);
    on<OnSelectWilayahCustomer>(_onOnSelectWilayahCustomer);
    on<OnSelectCustomer>(_onOnSelectCustomer);
    on<OnUpdateRequestCreateSO>(_onOnUpdateRequestCreateSO);

    //FIELD1
    on<OnNomorPOChanged>(_onOnNomorPOChanged);
    on<OnCatatanPOChanged>(_onOnCatatanPOChanged);
    on<OnDatePoChanged>(_onOnDatePoChanged);

    //FIELD2
    on<OnBiayaKirimChanged>(_onOnBiayaKirimChanged);
    on<OnTipeDiskonChanged>(_onOnTipeDiskonChanged);
    on<OnTipePengirimanChanged>(_onOnTipePengirimanChanged);
    on<OnAmountDiskonChanged>(_onOnAmountDiskonChanged);
    on<ONSelectedPPNChanged>(_onONSelectedPPNChanged);
    on<OnSelectedPPH1Changed>(_onOnSelectedPPH1Changed);
    on<OnSelectedPPH2Changed>(_onOnSelectedPPH2Changed);
    on<OnSubmitSO>(_onOnSubmitSO);
    on<OnPostingSO>(_onOnPostingSO);
    on<SetupEditSO>(_onSetupEditSO);
  }

  FutureOr<void> _onOnSetupDataAwal(
      OnSetupDataAwal event, Emitter<SoCreateState> emit) async {}

  FutureOr<void> _onOnSelectWilayahCustomer(
      OnSelectWilayahCustomer event, Emitter<SoCreateState> emit) async {
    EasyLoading.show(status: "Fetching customer");
    try {
      final responseDaftarCustomer = await _generalRepository.getDaftarCustomer(
          tokenUser: _bearerToken, idWilayah: event.dataWilayah.value ?? '15');

      emit(
        state.copyWith(
          formUpload: FormzStatus.submissionInProgress,
          daftarCustomer: responseDaftarCustomer?.data ?? [],
          selectedCustomer: null,
          selectedWilayah: event.dataWilayah,
        ),
      );
      EasyLoading.dismiss();
    } catch (e) {
      EasyLoading.showError("Error");
    }
  }

  FutureOr<void> _onOnSelectCustomer(
      OnSelectCustomer event, Emitter<SoCreateState> emit) async {
    emit(
      state.copyWith(
        selectedCustomer: event.dataCustomer,
      ),
    );
  }

  FutureOr<void> _onOnUpdateRequestCreateSO(
      OnUpdateRequestCreateSO event, Emitter<SoCreateState> emit) async {
    emit(
      state.copyWith(
        requestCreateSo: event.requestSO,
      ),
    );
  }

  FutureOr<void> _onOnNomorPOChanged(
      OnNomorPOChanged event, Emitter<SoCreateState> emit) async {
    final fieldNomorPoCustomer =
        state.fieldNomorPoCustomer.toDirty(value: event.text);
    emit(state.copyWith(
      formUpload: Formz.validate([
        fieldNomorPoCustomer,
        state.fieldCatatanPOCustomer,
      ]),
      fieldNomorPoCustomer: fieldNomorPoCustomer,
    ));
  }

  FutureOr<void> _onOnCatatanPOChanged(
      OnCatatanPOChanged event, Emitter<SoCreateState> emit) async {
    final fieldCatatanPOCustomer =
        state.fieldCatatanPOCustomer.toDirty(value: event.text);
    emit(state.copyWith(
      formUpload:
          Formz.validate([fieldCatatanPOCustomer, state.fieldNomorPoCustomer]),
      fieldCatatanPOCustomer: fieldCatatanPOCustomer,
    ));
  }

  FutureOr<void> _onOnDatePoChanged(
      OnDatePoChanged event, Emitter<SoCreateState> emit) async {
    emit(
      state.copyWith(
        tanggalCreateSO: event.tanggal,
      ),
    );
  }

  FutureOr<void> _onOnBiayaKirimChanged(
      OnBiayaKirimChanged event, Emitter<SoCreateState> emit) async {
    final fieldBiayaKirim = state.fieldBiayaKirim.toDirty(value: event.text);
    emit(state.copyWith(
      formUpload: Formz.validate([fieldBiayaKirim]),
      fieldBiayaKirim: fieldBiayaKirim,
    ));
  }

  FutureOr<void> _onOnTipePengirimanChanged(
      OnTipePengirimanChanged event, Emitter<SoCreateState> emit) async {
    emit(
      state.copyWith(
        selectedTipePengiriman: event.text,
      ),
    );
  }

  FutureOr<void> _onOnTipeDiskonChanged(
      OnTipeDiskonChanged event, Emitter<SoCreateState> emit) async {
    emit(
      state.copyWith(
        selectedTipeDiskon: event.text,
      ),
    );
  }

  FutureOr<void> _onOnAmountDiskonChanged(
      OnAmountDiskonChanged event, Emitter<SoCreateState> emit) async {
    final fieldAmountDiskon =
        state.fieldAmountDiskon.toDirty(value: event.text);
    emit(state.copyWith(
      fieldAmountDiskon: fieldAmountDiskon,
    ));
  }

  FutureOr<void> _onONSelectedPPNChanged(
      ONSelectedPPNChanged event, Emitter<SoCreateState> emit) async {
    emit(
      state.copyWith(
        selectedPPN: event.text,
      ),
    );
  }

  FutureOr<void> _onOnSelectedPPH1Changed(
      OnSelectedPPH1Changed event, Emitter<SoCreateState> emit) async {
    emit(
      state.copyWith(
        selectedPPH1: event.text,
      ),
    );
  }

  FutureOr<void> _onOnSelectedPPH2Changed(
      OnSelectedPPH2Changed event, Emitter<SoCreateState> emit) async {
    emit(
      state.copyWith(
        selectedPPH2: event.text,
      ),
    );
  }

  FutureOr<void> _onOnSubmitSO(
      OnSubmitSO event, Emitter<SoCreateState> emit) async {
    try {
      emit(state.copyWith(
        formUpload: FormzStatus.submissionInProgress,
      ));
      EasyLoading.show(status: "Inputing data.");

      log("REQUEST DATA AKHIR\n${jsonEncode(state.requestCreateSo)}");

      await _soRepository.doCreateSO(
        token: _bearerToken,
        request: state.requestCreateSo!.copyWith(tstatus: 'In Process'),
      );
      EasyLoading.dismiss();
      emit(state.copyWith(
        formUpload: FormzStatus.submissionSuccess,
      ));
    } catch (e) {
      log('Bloc catch Submit Visit: $e');
      EasyLoading.showError('${e}');
      emit(state.copyWith(
        formUpload: FormzStatus.submissionFailure,
        error: '$e',
      ));
    }
  }

  FutureOr<void> _onOnPostingSO(
      OnPostingSO event, Emitter<SoCreateState> emit) async {
    try {
      emit(state.copyWith(
        formUpload: FormzStatus.submissionInProgress,
      ));
      EasyLoading.show(status: "Posting data.");

      await _soRepository.doPostingSO(
        token: _bearerToken,
        idSO: event.idSO,
      );
      EasyLoading.dismiss();
      emit(state.copyWith(
        formUpload: FormzStatus.submissionSuccess,
      ));
    } catch (e) {
      log('Bloc catch Submit Visit: $e');
      EasyLoading.showError('${e}');
      emit(state.copyWith(
        formUpload: FormzStatus.submissionFailure,
        error: '$e',
      ));
    }
  }

  FutureOr<void> _onSetupEditSO(
      SetupEditSO event, Emitter<SoCreateState> emit) async {
    try {
      emit(state.copyWith(
        formSetupEditSO: FormzStatus.submissionInProgress,
      ));
      EasyLoading.show(status: "Setup Data.");

      final responseDaftarCustomer = await _generalRepository.getDaftarCustomer(
          tokenUser: _bearerToken,
          idWilayah: event.request.tSoHGrupWilayahId.toString() ?? '15');

      List<DataCustomer> daftarCustomer =
          List.from(responseDaftarCustomer?.data ?? []);

      EditingDataSO editingDataSO = event.editingData.copyWith(
        daftarCustomer: daftarCustomer,
        selectedCustomer: daftarCustomer
            .where(
              (element) => element.mCustId == event.request.mCustId,
            )
            .first,
      );

      // log("EDITING SO DATA\n${jsonEncode(editingDataSO)}");

      EasyLoading.dismiss();
      emit(state.copyWith(
        editingDataSo: editingDataSO,
        formSetupEditSO: FormzStatus.submissionSuccess,
      ));

      emit(state.copyWith(
        formSetupEditSO: FormzStatus.pure,
      ));
    } catch (e) {
      log('Bloc catch Submit Visit: $e');
      EasyLoading.showError('${e}');
      emit(state.copyWith(
        formSetupEditSO: FormzStatus.submissionFailure,
        error: '$e',
      ));
    }
  }


  
}
