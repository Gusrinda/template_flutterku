part of 'katalog_barang_bloc.dart';

@freezed
class KatalogBarangState with _$KatalogBarangState {
  const factory KatalogBarangState({
    @Default(LoadingPageStatus.initial) statusPage,
    List<DataBarang>? daftarData,
    String? errorMessage,
  }) = _KatalogBarangState;
}
