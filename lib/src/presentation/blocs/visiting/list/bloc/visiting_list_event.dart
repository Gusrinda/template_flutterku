part of 'visiting_list_bloc.dart';

abstract class VisitingListEvent extends Equatable {
  const VisitingListEvent();
}

class GetDaftarData extends VisitingListEvent {
  const GetDaftarData();
  @override
  List<Object?> get props => [];
}

class GetDetailSO extends VisitingListEvent {
  const GetDetailSO({required this.selectedPlan});
  final DataListPlan selectedPlan;
  @override
  List<Object?> get props => [];
}

class GetDetailSOUnplan extends VisitingListEvent {
  const GetDetailSOUnplan({required this.responseSavePlan});
  final ResponseSavePlan responseSavePlan;
  @override
  List<Object?> get props => [];
}
