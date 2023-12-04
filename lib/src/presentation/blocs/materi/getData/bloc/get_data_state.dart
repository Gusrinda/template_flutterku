part of 'get_data_bloc.dart';

@freezed
class GetDataState with _$GetDataState {
  const factory GetDataState({
    @Default(LoadingPageStatus.initial) statusPage,
    List<DataGeneral>? daftarData,
    String? errorMessage,
  }) = _GetDataState;
}
