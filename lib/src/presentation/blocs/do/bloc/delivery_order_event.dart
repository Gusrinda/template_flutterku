part of 'delivery_order_bloc.dart';

abstract class DeliveryOrderEvent extends Equatable {
  const DeliveryOrderEvent();
}

class FetchDataAwal extends DeliveryOrderEvent {
  const FetchDataAwal({required this.mUserName});
  final String mUserName;

  @override
  List<Object?> get props => [mUserName];
}

class OnSelectDO extends DeliveryOrderEvent {
  const OnSelectDO({required this.index});
  final int index;

  @override
  List<Object?> get props => [index];
}

class OnSimpanKonfirm extends DeliveryOrderEvent {
  const OnSimpanKonfirm();

  @override
  List<Object?> get props => [];
}
