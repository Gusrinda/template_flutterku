part of 'daftar_product_bloc.dart';

abstract class DaftarProductEvent extends Equatable {
  const DaftarProductEvent();
}

class GetListDaftarProduct extends DaftarProductEvent {
  const GetListDaftarProduct();

  @override
  List<Object?> get props => [];
}

// FilterData

// HapusData

// SendData