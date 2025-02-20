part of 'visiting_list_bloc.dart';

@freezed
class VisitingListState with _$VisitingListState {
  const factory VisitingListState({
    @Default(LoadingPageStatus.initial) statusPage,
    ResponseListPlan? responseListSo,
    @Default(LoadingPageStatus.initial) statusGetDataDetail,
    DataListPlan? selectedPlan,
    ResponseDetailPlan? responseDetailSO,
    String? errorMessage,
  }) = _VisitingListState;
}
