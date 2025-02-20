part of 'so_list_bloc.dart';

@freezed
class SoListState with _$SoListState {
  const factory SoListState({
    @Default(LoadingPageStatus.initial) statusPage,
    @Default(LoadingPageStatus.initial) statusGetDataDetail,
    ResponseListSo? responseListSo,
    DataListSO? dataHeaderSO,
    ResponseDetailSo? responseDetailSO,
    String? errorMessage,
  }) = _SoListState;
}
