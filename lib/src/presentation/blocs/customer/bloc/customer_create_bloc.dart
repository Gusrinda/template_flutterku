import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sulinda_sales/src/core/model/form_text_input.dart';
import 'package:sulinda_sales/src/core/model/status_page.dart';
import 'package:sulinda_sales/src/core/utils/compress.dart';
import 'package:sulinda_sales/src/data/models/request/request_create_customer.dart';
import 'package:sulinda_sales/src/data/models/response/general/response_data_general.dart';
import 'package:sulinda_sales/src/domain/exception/api_exception.dart';
import 'package:sulinda_sales/src/domain/repository/general_repository.dart';

part 'customer_create_event.dart';
part 'customer_create_state.dart';
part 'customer_create_bloc.freezed.dart';

class CustomerCreateBloc
    extends Bloc<CustomerCreateEvent, CustomerCreateState> {
  final String _bearerToken;
  final GeneralRepository _generalRepository;

  CustomerCreateBloc({
    required String bearerToken,
    required GeneralRepository generalRepository,
  })  : _bearerToken = bearerToken,
        _generalRepository = generalRepository,
        super(
          CustomerCreateState(
            fieldNamaCustomer: FormTextInput.pure(),
            fieldNamaCetak: FormTextInput.pure(),
            fieldNIK: FormTextInput.pure(),
            fieldNPWP: FormTextInput.pure(),
            fieldKarakter: FormTextInput.pure(),
            fieldCatatan: FormTextInput.pure(),
            fieldKreditLimit: FormTextInput.pure(),
            fieldNomorTelp1: FormTextInput.pure(),
            fieldNomorHP1: FormTextInput.pure(),
            fieldNomorTelp2: FormTextInput.pure(),
            fieldNomorHP2: FormTextInput.pure(),
            fieldFax: FormTextInput.pure(),
            fieldEmail: FormTextInput.pure(),
            fieldWebsite: FormTextInput.pure(),
          ),
        ) {
    on<OnSetupDataAwal>(_onOnSetupDataAwal);
    on<OnUpdateRequestCreateCustomer>(_onOnUpdateRequestCreateCustomer);

    //FORM1
    on<OnSelectTipeCustomer>(_onOnSelectTipeCustomer);
    on<OnLokasiCustomerDetermined>(_onOnLokasiCustomerDetermined);
    on<OnSelectPrefixName>(_onOnSelectPrefixName);
    on<OnSelectGroupWilayah>(_onOnSelectGroupWilayah);
    on<OnSelectPembayaranWilayah>(_onOnSelectPembayaranWilayah);
    on<OnNamaChanged>(_onOnNamaChanged);
    on<OnNamaCetakChanged>(_onOnNamaCetakChanged);
    on<OnNIKChanged>(_onOnNIKChanged);
    on<OnNPWPChanged>(_onOnNPWPChanged);
    on<OnKarakterCHanged>(_onOnKarakterCHanged);
    on<OnCatatanChanged>(_onOnCatatanChanged);

    //FORM2
    on<OnKreditLimitChange>(_onOnKreditLimitChange);
    on<OnSelectJatuhTempo>(_onOnSelectJatuhTempo);
    on<OnSelectBJTKhusus>(_onOnSelectBJTKhusus);
    on<OnTelp1Changed>(_onOnTelp1Changed);
    on<OnTelp2Changed>(_onOnTelp2Changed);
    on<OnHp1Changed>(_onOnHp1Changed);
    on<OnHp2Changed>(_onOnHp2Changed);
    on<OnFieldFaxChanged>(_onOnFieldFaxChanged);
    on<OnFieldEmailChanged>(_onOnFieldEmailChanged);
    on<OnFieldWebsiteChanged>(_onOnFieldWebsiteChanged);
    on<OnSelectFotoDokumen>(_onOnSelectFotoDokumen);

    //FORM3
    on<OnListAlamatChanged>(_onOnListAlamatChanged);
    on<OnListBankChanged>(_onOnListBankChanged);
    on<OnListPenagihanChanged>(_onOnListPenagihanChanged);
    on<OnSubmitCustomer>(_onOnSubmitCustomer);
  }

  FutureOr<void> _onOnSetupDataAwal(
      OnSetupDataAwal event, Emitter<CustomerCreateState> emit) async {
    try {
      emit(state.copyWith(statusPage: LoadingPageStatus.loading));

      final getDataAwal = await _generalRepository.getDaftarGeneralCustomer(
          tokenUser: _bearerToken);

      EasyLoading.dismiss();
      emit(state.copyWith(
        statusPage: LoadingPageStatus.success,
        bulkDataGeneral: getDataAwal,
      ));

      // emit(state.copyWith(statusPage: LoadingPageStatus.initial));
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

  FutureOr<void> _onOnSelectTipeCustomer(
      OnSelectTipeCustomer event, Emitter<CustomerCreateState> emit) async {
    emit(
      state.copyWith(
        selectedTipeCustoner: event.text,
      ),
    );
  }

  FutureOr<void> _onOnLokasiCustomerDetermined(OnLokasiCustomerDetermined event,
      Emitter<CustomerCreateState> emit) async {
    emit(
      state.copyWith(
        lokasiCustomer: event.lokasi,
      ),
    );
  }

  FutureOr<void> _onOnSelectPrefixName(
      OnSelectPrefixName event, Emitter<CustomerCreateState> emit) async {
    emit(
      state.copyWith(
        selectedFixed: event.data,
      ),
    );
  }

  FutureOr<void> _onOnSelectGroupWilayah(
      OnSelectGroupWilayah event, Emitter<CustomerCreateState> emit) async {
    emit(
      state.copyWith(
        selectedGroupWilayah: event.data,
      ),
    );
  }

  FutureOr<void> _onOnSelectPembayaranWilayah(OnSelectPembayaranWilayah event,
      Emitter<CustomerCreateState> emit) async {
    emit(
      state.copyWith(
        selectedWilayahPenagihan: event.data,
      ),
    );
  }

  FutureOr<void> _onOnNamaChanged(
      OnNamaChanged event, Emitter<CustomerCreateState> emit) async {
    final fieldNamaCustomer =
        state.fieldNamaCustomer.toDirty(value: event.text);
    emit(state.copyWith(
      formUpload: Formz.validate([
        fieldNamaCustomer,
        state.fieldNamaCetak,
        state.fieldNIK,
        state.fieldNPWP,
        state.fieldKarakter,
      ]),
      fieldNamaCustomer: fieldNamaCustomer,
    ));
  }

  FutureOr<void> _onOnNamaCetakChanged(
      OnNamaCetakChanged event, Emitter<CustomerCreateState> emit) async {
    final fieldNamaCetak = state.fieldNamaCetak.toDirty(value: event.text);
    emit(state.copyWith(
      formUpload: Formz.validate([
        fieldNamaCetak,
        state.fieldNamaCustomer,
        state.fieldNIK,
        state.fieldNPWP,
        state.fieldKarakter,
      ]),
      fieldNamaCetak: fieldNamaCetak,
    ));
  }

  FutureOr<void> _onOnNIKChanged(
      OnNIKChanged event, Emitter<CustomerCreateState> emit) async {
    final fieldNIK = state.fieldNIK.toDirty(value: event.text);
    emit(state.copyWith(
      formUpload: Formz.validate([
        fieldNIK,
        state.fieldNamaCetak,
        state.fieldNamaCustomer,
        state.fieldNPWP,
        state.fieldKarakter,
      ]),
      fieldNIK: fieldNIK,
    ));
  }

  FutureOr<void> _onOnKarakterCHanged(
      OnKarakterCHanged event, Emitter<CustomerCreateState> emit) async {
    final fieldKarakter = state.fieldKarakter.toDirty(value: event.text);
    emit(state.copyWith(
      formUpload: Formz.validate([
        fieldKarakter,
        state.fieldNamaCetak,
        state.fieldNIK,
        state.fieldNPWP,
        state.fieldKarakter,
      ]),
      fieldKarakter: fieldKarakter,
    ));
  }

  FutureOr<void> _onOnCatatanChanged(
      OnCatatanChanged event, Emitter<CustomerCreateState> emit) async {
    final fieldCatatan = state.fieldCatatan.toDirty(value: event.text);
    emit(state.copyWith(
      formUpload: Formz.validate([
        fieldCatatan,
        state.fieldNamaCetak,
        state.fieldNIK,
        state.fieldNPWP,
        state.fieldCatatan,
        state.fieldNamaCustomer,
      ]),
      fieldCatatan: fieldCatatan,
    ));
  }

  FutureOr<void> _onOnNPWPChanged(
      OnNPWPChanged event, Emitter<CustomerCreateState> emit) async {
    final fieldNPWP = state.fieldNPWP.toDirty(value: event.text);
    emit(state.copyWith(
      formUpload: Formz.validate([
        fieldNPWP,
        state.fieldNamaCetak,
        state.fieldNIK,
        state.fieldNPWP,
        state.fieldNamaCustomer,
      ]),
      fieldNPWP: fieldNPWP,
    ));
  }

  FutureOr<void> _onOnUpdateRequestCreateCustomer(
      OnUpdateRequestCreateCustomer event,
      Emitter<CustomerCreateState> emit) async {
    emit(
      state.copyWith(
        requestCreateCustomer: event.requestCreateCustomer,
      ),
    );
  }

  FutureOr<void> _onOnKreditLimitChange(
      OnKreditLimitChange event, Emitter<CustomerCreateState> emit) async {
    final fieldKreditLimit = state.fieldKreditLimit.toDirty(value: event.text);
    emit(state.copyWith(
      formUpload: Formz.validate([
        fieldKreditLimit,
        state.fieldNomorTelp1,
        state.fieldNomorTelp2,
        state.fieldNomorHP1,
        state.fieldNomorHP2,
        state.fieldEmail,
        state.fieldFax,
        state.fieldWebsite
      ]),
      fieldKreditLimit: fieldKreditLimit,
    ));
  }

  FutureOr<void> _onOnSelectJatuhTempo(
      OnSelectJatuhTempo event, Emitter<CustomerCreateState> emit) async {
    emit(
      state.copyWith(
        selectedJatuhTempo: event.data,
      ),
    );
  }

  FutureOr<void> _onOnSelectBJTKhusus(
      OnSelectBJTKhusus event, Emitter<CustomerCreateState> emit) async {
    emit(
      state.copyWith(
        selectedBJTKhusus: event.data,
      ),
    );
  }

  FutureOr<void> _onOnTelp1Changed(
      OnTelp1Changed event, Emitter<CustomerCreateState> emit) async {
    final fieldNomorTelp1 = state.fieldNomorTelp1.toDirty(value: event.text);
    emit(state.copyWith(
      formUpload: Formz.validate([
        fieldNomorTelp1,
        state.fieldKreditLimit,
        state.fieldNomorTelp2,
        state.fieldNomorHP1,
        state.fieldNomorHP2,
        state.fieldEmail,
        state.fieldFax,
        state.fieldWebsite
      ]),
      fieldNomorTelp1: fieldNomorTelp1,
    ));
  }

  FutureOr<void> _onOnTelp2Changed(
      OnTelp2Changed event, Emitter<CustomerCreateState> emit) async {
    final fieldNomorTelp2 = state.fieldNomorTelp2.toDirty(value: event.text);
    emit(state.copyWith(
      formUpload: Formz.validate([
        fieldNomorTelp2,
        state.fieldKreditLimit,
        state.fieldNomorTelp1,
        state.fieldNomorHP1,
        state.fieldNomorHP2,
        state.fieldEmail,
        state.fieldFax,
        state.fieldWebsite
      ]),
      fieldNomorTelp2: fieldNomorTelp2,
    ));
  }

  FutureOr<void> _onOnHp1Changed(
      OnHp1Changed event, Emitter<CustomerCreateState> emit) async {
    final fieldNomorHP1 = state.fieldNomorHP1.toDirty(value: event.text);
    emit(state.copyWith(
      formUpload: Formz.validate([
        fieldNomorHP1,
        state.fieldKreditLimit,
        state.fieldNomorTelp2,
        state.fieldNomorTelp1,
        state.fieldNomorHP2,
        state.fieldEmail,
        state.fieldFax,
        state.fieldWebsite
      ]),
      fieldNomorHP1: fieldNomorHP1,
    ));
  }

  FutureOr<void> _onOnHp2Changed(
      OnHp2Changed event, Emitter<CustomerCreateState> emit) async {
    final fieldNomorHP2 = state.fieldNomorHP2.toDirty(value: event.text);
    emit(state.copyWith(
      formUpload: Formz.validate([
        fieldNomorHP2,
        state.fieldKreditLimit,
        state.fieldNomorTelp2,
        state.fieldNomorHP1,
        state.fieldNomorTelp1,
        state.fieldEmail,
        state.fieldFax,
        state.fieldWebsite
      ]),
      fieldNomorHP2: fieldNomorHP2,
    ));
  }

  FutureOr<void> _onOnFieldFaxChanged(
      OnFieldFaxChanged event, Emitter<CustomerCreateState> emit) async {
    final fieldFax = state.fieldFax.toDirty(value: event.text);
    emit(state.copyWith(
      formUpload: Formz.validate([
        fieldFax,
        state.fieldKreditLimit,
        state.fieldNomorTelp2,
        state.fieldNomorHP1,
        state.fieldNomorHP2,
        state.fieldEmail,
        state.fieldNomorTelp1,
        state.fieldWebsite
      ]),
      fieldFax: fieldFax,
    ));
  }

  FutureOr<void> _onOnFieldEmailChanged(
      OnFieldEmailChanged event, Emitter<CustomerCreateState> emit) async {
    final fieldEmail = state.fieldEmail.toDirty(value: event.text);
    emit(state.copyWith(
      formUpload: Formz.validate([
        fieldEmail,
        state.fieldKreditLimit,
        state.fieldNomorTelp2,
        state.fieldNomorHP1,
        state.fieldNomorHP2,
        state.fieldNomorTelp1,
        state.fieldFax,
        state.fieldWebsite
      ]),
      fieldEmail: fieldEmail,
    ));
  }

  FutureOr<void> _onOnFieldWebsiteChanged(
      OnFieldWebsiteChanged event, Emitter<CustomerCreateState> emit) async {
    final fieldWebsite = state.fieldWebsite.toDirty(value: event.text);
    emit(state.copyWith(
      formUpload: Formz.validate([
        fieldWebsite,
        state.fieldKreditLimit,
        state.fieldNomorTelp2,
        state.fieldNomorHP1,
        state.fieldNomorHP2,
        state.fieldNomorTelp1,
        state.fieldFax,
        state.fieldNomorTelp1
      ]),
      fieldWebsite: fieldWebsite,
    ));
  }

  FutureOr<void> _onOnSelectFotoDokumen(
      OnSelectFotoDokumen event, Emitter<CustomerCreateState> emit) async {
    final file = await getImage();

    if (file != null) {
      var imageCapture = await compressFile(file);
      String base64 = await convertXFileToBase64(imageCapture!);

      emit(
        state.copyWith(
          selectedFoto: file,
          string64Foto: base64,
        ),
      );
    }
  }

  Future<File?> getImage() async {
    final key = GlobalKey();

    final ImagePicker _picker = ImagePicker();

    try {
      final pickFile = await _picker.pickImage(
          source: ImageSource.camera, requestFullMetadata: true);

      if (pickFile == null) {
        EasyLoading.showError("Gagal ambil gambar !");
        return null;
      }

      File image = File(pickFile.path);

      // createScreenshot(image);

      return image;
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
      return null;
    }
  }

  FutureOr<void> _onOnListAlamatChanged(
      OnListAlamatChanged event, Emitter<CustomerCreateState> emit) async {
    emit(
      state.copyWith(daftarAlamat: event.daftarAlamat),
    );
  }

  FutureOr<void> _onOnListBankChanged(
      OnListBankChanged event, Emitter<CustomerCreateState> emit) async {
    emit(
      state.copyWith(daftarBank: event.daftarBank),
    );
  }

  FutureOr<void> _onOnListPenagihanChanged(
      OnListPenagihanChanged event, Emitter<CustomerCreateState> emit) async {
    emit(
      state.copyWith(daftarPenagihan: event.daftarPenagihan),
    );
  }

  FutureOr<void> _onOnSubmitCustomer(
      OnSubmitCustomer event, Emitter<CustomerCreateState> emit) async {
    try {
      emit(state.copyWith(
        formUpload: FormzStatus.submissionInProgress,
      ));
      EasyLoading.show(status: "Creating data.");

      await _generalRepository.doCreateCustomer(
        token: _bearerToken,
        request: state.requestCreateCustomer!,
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
}
