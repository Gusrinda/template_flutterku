part of 'so_list_bloc.dart';

abstract class SoListEvent extends Equatable {
  const SoListEvent();
}

class GetDaftarData extends SoListEvent {
  const GetDaftarData();
  @override
  List<Object?> get props => [];
}

class GetDetailSO extends SoListEvent {
  const GetDetailSO({required this.dataHeader});
  final DataListSO dataHeader;
  @override
  List<Object?> get props => [];
}
