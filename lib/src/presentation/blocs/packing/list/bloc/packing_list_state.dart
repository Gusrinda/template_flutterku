part of 'packing_list_bloc.dart';

@freezed
class PackingListState with _$PackingListState {
  const factory PackingListState({
    @Default(LoadingPageStatus.initial) LoadingPageStatus statusPage,
    ResponseListPacking? responseListPacking,
    String? error,
  }) = _PackingListState;
}
