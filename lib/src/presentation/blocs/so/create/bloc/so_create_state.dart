part of 'so_create_bloc.dart';

@freezed
class SoCreateState with _$SoCreateState {
  const factory SoCreateState(
      {EditingDataSO? editingDataSo,
      @Default(LoadingPageStatus.initial) LoadingPageStatus statusPage,
      @Default(FormzStatus.pure) FormzStatus formUpload,
      @Default(FormzStatus.pure) FormzStatus formSetupEditSO,
      //FORM1
      DataWilayah? selectedWilayah,
      List<DataCustomer>? daftarCustomer,
      DataCustomer? selectedCustomer,
      required FormTextInput fieldNomorPoCustomer,
      required FormTextInput fieldCatatanPOCustomer,
      DateTime? tanggalCreateSO,

      //FORM2
      DataPPN? selectedPPN,
      DataPPH? selectedPPH1,
      DataPPH? selectedPPH2,
      String? selectedTipeDiskon,
      String? selectedTipePengiriman,
      required FormTextInput fieldAmountDiskon,
      required FormTextInput fieldBiayaKirim,

      //FORM UTAMA
      RequestCreateSo? requestCreateSo,
      String? error}) = _SoCreateState;

  factory SoCreateState.edit(EditingDataSO editingDataSO) {
    EasyLoading.showSuccess('Editing data');

    String valueDiskon = '0';

    if (editingDataSO.selectedTipeDiskon == 'P') {
      valueDiskon =
          editingDataSO.requestCreateSo?.tSoHDiscpct.toString() ?? '0';
    } else {
      valueDiskon =
          editingDataSO.requestCreateSo?.tSoHDiscamt.toString() ?? '0';
    }

    return SoCreateState(
      requestCreateSo: editingDataSO.requestCreateSo,
      daftarCustomer: editingDataSO.daftarCustomer,
      selectedCustomer: editingDataSO.selectedCustomer,
      selectedPPH1: editingDataSO.selectedPPH1,
      selectedPPH2: editingDataSO.selectedPPH2,
      selectedPPN: editingDataSO.selectedPPN,
      selectedTipeDiskon: editingDataSO.selectedTipeDiskon,
      selectedWilayah: editingDataSO.selectedWilayah,
      tanggalCreateSO: editingDataSO.tanggalCreateSO,
      fieldNomorPoCustomer: FormTextInput.dirty(
          value: editingDataSO.requestCreateSo?.tSoHCustPoNo.toString() ?? ""),
      fieldCatatanPOCustomer: FormTextInput.dirty(
          value: editingDataSO.requestCreateSo?.tSoHNote.toString() ?? ""),
      fieldAmountDiskon: FormTextInput.dirty(value: valueDiskon),
      fieldBiayaKirim: FormTextInput.dirty(
          value:
              editingDataSO.requestCreateSo?.tSoHTotalBykirim.toString() ?? ""),
    );
  }
}
