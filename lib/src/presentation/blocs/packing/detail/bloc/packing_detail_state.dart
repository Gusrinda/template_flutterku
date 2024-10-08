part of 'packing_detail_bloc.dart';

@freezed
class PackingDetailState with _$PackingDetailState {
  const factory PackingDetailState({
    @Default(LoadingPageStatus.initial) LoadingPageStatus statusPage,
    @Default(FormzStatus.pure) FormzStatus statusFormz,
    ResponseDetailPacking? responseDetailPacking,
    String? error,
  }) = _PackingDetailState;
}
