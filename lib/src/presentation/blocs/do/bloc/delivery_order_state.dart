part of 'delivery_order_bloc.dart';

@freezed
class DeliveryOrderState with _$DeliveryOrderState {
  const factory DeliveryOrderState(
      {@Default(LoadingPageStatus.initial) statusPage,
      ResponseListBelumKonfirm? responseListBelumKonfirm,
      List<ListSelectDO>? daftarSelectDO,
      String? error}) = _DeliveryOrderState;
}

// state initials
// state LoadingPageStatus
// state success
// state error