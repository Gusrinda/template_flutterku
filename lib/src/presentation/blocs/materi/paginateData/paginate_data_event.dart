part of 'paginate_data_bloc.dart';

abstract class PaginateDataEvent extends Equatable {
  const PaginateDataEvent();
}

class GetDaftarData extends PaginateDataEvent {
  const GetDaftarData();
  @override
  List<Object?> get props => [];
}

class PagenationData extends PaginateDataEvent {
  const PagenationData();

  @override
  List<Object?> get props => [];
}
