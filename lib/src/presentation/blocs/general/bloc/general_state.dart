part of 'general_bloc.dart';

@freezed
class GeneralState with _$GeneralState {
  const factory GeneralState({
    List<DataWilayah>? daftarWilayah,
    List<DataBarang>? daftarBarang,
    List<DataGeneral>? daftarKategoriBarang,
    List<DataPPH>? daftarPPH,
    List<DataPPN>? daftarPPN,
    BulkDataGeneral? daftarDataBulk,
    String? error,
  }) = _GeneralState;

  factory GeneralState.fromJson(Map<String, dynamic> json) =>
      _$GeneralStateFromJson(json);
}
