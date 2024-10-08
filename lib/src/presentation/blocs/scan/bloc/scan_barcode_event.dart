part of 'scan_barcode_bloc.dart';

@freezed
class ScanBarcodeEvent with _$ScanBarcodeEvent {
  const factory ScanBarcodeEvent.changeSearchField({
    required String search,
  }) = ChangeSearchField;
  const factory ScanBarcodeEvent.refreshBarcode() = RefreshBarcode;
  const factory ScanBarcodeEvent.saveChecker({
    required RequestSaveChecker request,
  }) = SaveChecker;
}
