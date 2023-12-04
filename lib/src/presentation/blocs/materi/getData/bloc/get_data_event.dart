part of 'get_data_bloc.dart';

abstract class GetDataEvent extends Equatable {
  const GetDataEvent();
}

class GetDaftarData extends GetDataEvent {
  const GetDaftarData();
  @override
  List<Object?> get props => [];
}
