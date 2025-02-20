part of 'visiting_plan_bloc.dart';

@freezed
class VisitingPlanEvent with _$VisitingPlanEvent {
  const factory VisitingPlanEvent.getData() = GetData;

  const factory VisitingPlanEvent.saveVisiting({
    required RequestCreatePlan request,
  }) = SaveChecker;

  const factory VisitingPlanEvent.saveCheckin({
    required RequestSaveAbsensi request,
  }) = SaveCheckin;

  const factory VisitingPlanEvent.saveRealisasi({
    required RequestSaveTagihan request,
  }) = SaveRealisasi;
}
