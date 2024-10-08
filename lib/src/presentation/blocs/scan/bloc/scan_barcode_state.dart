part of 'scan_barcode_bloc.dart';

@freezed
class ScanBarcodeState with _$ScanBarcodeState {
  const factory ScanBarcodeState({
    @Default(FormzStatus.pure) FormzStatus statusForm,
    @Default(LoadingPageStatus.initial) LoadingPageStatus statusSearch,
    ResponseCheckerSo? responseCheckerSO,
    ResponseCheckerDetail? resopnseCheckerDetail,
    // List<Datum>? daftarKunjungan,
    // required FormTextInput searchField,
    String? barcodeString,
    String? error,
  }) = _ScanBarcodeState;
}
