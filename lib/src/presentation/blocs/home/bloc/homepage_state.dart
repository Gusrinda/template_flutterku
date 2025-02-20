part of 'homepage_bloc.dart';

@freezed
class HomepageState with _$HomepageState {
  const factory HomepageState(
      {@Default(LoadingPageStatus.initial) statusPage,
      ResponseSummarySo? responseSummarySO,
      ResponseListSo? responseListSo,
      ResponseListPlan? responseListTodayPlan,
      ResponseListPlan? responseListOnGoingPlan,
      @Default(LoadingPageStatus.initial) statusGetDataDetail,
      DataListPlan? selectedPlan,
      ResponseDetailPlan? responseDetailSO,
      String? error}) = _HomepageState;
}
