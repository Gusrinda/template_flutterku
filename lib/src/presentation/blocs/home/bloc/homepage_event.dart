part of 'homepage_bloc.dart';

abstract class HomepageEvent extends Equatable {
  const HomepageEvent();
}

class FetchDataAwal extends HomepageEvent {
  const FetchDataAwal(this.userID);
  final String userID;
  @override
  List<Object?> get props => [userID];
}

class GetDetailPlan extends HomepageEvent {
  const GetDetailPlan({required this.selectedPlan});
  final DataListPlan selectedPlan;
  @override
  List<Object?> get props => [];
}