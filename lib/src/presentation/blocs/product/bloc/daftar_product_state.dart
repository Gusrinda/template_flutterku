part of 'daftar_product_bloc.dart';

@freezed
class DaftarProductState with _$DaftarProductState {
  const factory DaftarProductState({
    @Default(LoadingPageStatus.initial) statusPage,
    ResponseListProduct? responseListProduct,
    String? error,
  }) = _DaftarProductState;
}
