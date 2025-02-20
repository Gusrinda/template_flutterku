part of 'katalog_barang_bloc.dart';

abstract class KatalogBarangEvent extends Equatable {
  const KatalogBarangEvent();
}

class GetDaftarData extends KatalogBarangEvent {
  GetDaftarData({
    this.idBarang,
  });
  final String? idBarang;

  @override
  List<Object?> get props => [];
}
