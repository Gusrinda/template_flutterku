part of 'general_bloc.dart';

abstract class GeneralEvent extends Equatable {
  const GeneralEvent();
}

class FetchDataGeneral extends GeneralEvent {
  const FetchDataGeneral();

  @override
  List<Object?> get props => [];
}
