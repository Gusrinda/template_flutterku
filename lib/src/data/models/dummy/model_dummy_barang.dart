import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'model_dummy_barang.freezed.dart';
part 'model_dummy_barang.g.dart';

@freezed
class ModelDummyBarang with _$ModelDummyBarang {
  const factory ModelDummyBarang({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "nama") String? nama,
    @JsonKey(name: "qty") int? qty,
    @JsonKey(name: "url_image") String? urlImage,
    @JsonKey(name: "code") String? code,
  }) = _ModelDummyBarang;

  factory ModelDummyBarang.fromJson(Map<String, dynamic> json) =>
      _$ModelDummyBarangFromJson(json);
}

@freezed
class ModelDummySelectedBarang with _$ModelDummySelectedBarang {
  const factory ModelDummySelectedBarang({
    @JsonKey(name: "modelBarang") ModelDummyBarang? modelBarang,
    @JsonKey(name: "isSelected") @Default(false) bool isSelected,
  }) = _ModelDummySelectedBarang;

  factory ModelDummySelectedBarang.fromJson(Map<String, dynamic> json) =>
      _$ModelDummySelectedBarangFromJson(json);
}

List<ModelDummyBarang> daftarDummyBarang = daftarItemDummy.map(
  (e) {
    return ModelDummyBarang.fromJson(e);
  },
).toList();

final List<Map<String, dynamic>> daftarItemDummy = [
  {
    "id": "1",
    "nama": "Produk A",
    "qty": 3,
    "url_image": "https://example.com/image1.jpg",
    "code": "PRODA123"
  },
  {
    "id": "2",
    "nama": "Produk B",
    "qty": 5,
    "url_image": "https://example.com/image2.jpg",
    "code": "PRODB456"
  },
  {
    "id": "3",
    "nama": "Produk C",
    "qty": 2,
    "url_image": "https://example.com/image3.jpg",
    "code": "PRODC789"
  },
  {
    "id": "4",
    "nama": "Produk D",
    "qty": 10,
    "url_image": "https://example.com/image4.jpg",
    "code": "PRODD012"
  },
  {
    "id": "5",
    "nama": "Produk E",
    "qty": 1,
    "url_image": "https://example.com/image5.jpg",
    "code": "PRODE345"
  }
];
