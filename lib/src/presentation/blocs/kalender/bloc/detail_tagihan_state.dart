part of 'detail_tagihan_bloc.dart';

@freezed
class DetailTagihanState with _$DetailTagihanState {
  const factory DetailTagihanState({
    @Default(LoadingPageStatus.initial) statusPage,
    ResponseDetailTagihan? responseDetailTagihan,
    String? alamatCheckIn,
    String? alamatCheckOut,
    String? errorMessage,
  }) = _DetailTagihanState;
}
