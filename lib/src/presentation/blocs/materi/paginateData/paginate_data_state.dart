part of 'paginate_data_bloc.dart';

@freezed
class PaginateDataState with _$PaginateDataState {
  const factory PaginateDataState({
    @Default(LoadingPageStatus.initial) statusPage,
    @Default(LoadingPageStatus.initial) paginationStatus,
    List<DataGeneral>? daftarData,
    @Default(1) int currentPage,
    int? totalPage,
    @Default(false) bool hasReachedMax,
    String? errorMessage,
  }) = _PaginateDataState;
}
