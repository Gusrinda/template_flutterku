part of 'search_data_bloc.dart';

@freezed
class SearchDataState with _$SearchDataState {
  const factory SearchDataState({
    @Default(LoadingPageStatus.initial) statusPage,
    List<DataGeneral>? daftarData,
    List<String>? daftarGroup,
    String? selectedFilter,
    String? errorMessage,
  }) = _SearchDataState;
}
