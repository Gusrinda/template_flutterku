part of 'search_data_bloc.dart';

abstract class SearchDataEvent extends Equatable {
  const SearchDataEvent();
}

class GetDaftarData extends SearchDataEvent {
  const GetDaftarData();
  @override
  List<Object?> get props => [];
}

class GetDaftarSearch extends SearchDataEvent {
  const GetDaftarSearch(
      {required this.searchText, required this.selectedGroup});
  final String? selectedGroup;
  final String? searchText;
  @override
  List<Object?> get props => [searchText, selectedGroup];
}
