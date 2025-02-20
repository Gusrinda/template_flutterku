part of 'customer_create_bloc.dart';

@freezed
class CustomerCreateState with _$CustomerCreateState {
  const factory CustomerCreateState({
    @Default(LoadingPageStatus.initial) LoadingPageStatus statusPage,
    @Default(FormzStatus.pure) FormzStatus formUpload,
    BulkDataGeneral? bulkDataGeneral,

    //FORM1
    String? selectedTipeCustoner,
    LatLng? lokasiCustomer,
    DataGeneral? selectedFixed,
    DataGeneral? selectedGroupWilayah,
    DataGeneral? selectedWilayahPenagihan,
    required FormTextInput fieldNamaCustomer,
    required FormTextInput fieldNamaCetak,
    required FormTextInput fieldNIK,
    required FormTextInput fieldNPWP,
    required FormTextInput fieldKarakter,
    required FormTextInput fieldCatatan,

    //FORM2
    required FormTextInput fieldKreditLimit,
    DataGeneral? selectedJatuhTempo,
    DataGeneral? selectedBJTKhusus,
    required FormTextInput fieldNomorTelp1,
    required FormTextInput fieldNomorHP1,
    required FormTextInput fieldNomorTelp2,
    required FormTextInput fieldNomorHP2,
    required FormTextInput fieldFax,
    required FormTextInput fieldEmail,
    required FormTextInput fieldWebsite,
    File? selectedFoto,
    String? string64Foto,

    //FORM3
    List<MCustDAddress>? daftarAlamat,
    List<MCustDBank>? daftarBank,
    List<MCustDTagihan>? daftarPenagihan,
    DataGeneral? selectedCountry,
    DataGeneral? selectedProvinsi,
    DataGeneral? selectedKota,

    //FORM UTAMA
    RequestCreateCustomer? requestCreateCustomer,
    String? error,
  }) = _CustomerCreateState;
}
