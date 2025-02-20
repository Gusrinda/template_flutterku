part of 'visiting_plan_bloc.dart';

@freezed
class VisitingPlanState with _$VisitingPlanState {
  const factory VisitingPlanState({
    @Default(FormzStatus.pure) FormzStatus statusForm,
    @Default(LoadingPageStatus.initial) LoadingPageStatus statusPage,
    ResponseCustomerVisiting? repsonseCustomerVisiting,
    RequestSaveAbsensi? dataRequest,
    ResponseSavePlan? responseSavePlan,
    // List<Datum>? daftarKunjungan,
    // required FormTextInput searchField,

    String? barcodeString,
    String? error,
  }) = _VisitingPlanState;
}
