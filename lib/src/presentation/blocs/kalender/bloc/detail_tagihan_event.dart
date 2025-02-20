part of 'detail_tagihan_bloc.dart';

abstract class DetailTagihanEvent extends Equatable {
  const DetailTagihanEvent();
}

class GetDetailTagihan extends DetailTagihanEvent {
  const GetDetailTagihan({
    required this.id,
  });
  final String id;
  @override
  List<Object?> get props => [];
}
