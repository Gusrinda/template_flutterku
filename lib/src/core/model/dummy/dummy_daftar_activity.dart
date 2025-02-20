import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'dummy_daftar_activity.freezed.dart';
part 'dummy_daftar_activity.g.dart';

@freezed
class DummyDaftarActivity with _$DummyDaftarActivity {
  const factory DummyDaftarActivity({
    @JsonKey(name: "namaPT") String? namaPt,
    @JsonKey(name: "nomorPenagihan") String? nomorPenagihan,
    @JsonKey(name: "tanggalPlan") DateTime? tanggalPlan,
    @JsonKey(name: "namaLokasi") String? namaLokasi,
    @JsonKey(name: "alamatLokasi") String? alamatLokasi,
    @JsonKey(name: "nominalPiutang") int? nominalPiutang,
  }) = _DummyDaftarActivity;

  factory DummyDaftarActivity.fromJson(Map<String, dynamic> json) =>
      _$DummyDaftarActivityFromJson(json);
}

// Decode JSON string menjadi List
final List<dynamic> jsonList = json.decode(jsonData);

// Convert setiap elemen JSON ke dalam model DummyDaftarActivity
final List<DummyDaftarActivity> daftarActivityDummy = jsonList
    .map((json) => DummyDaftarActivity.fromJson(json as Map<String, dynamic>))
    .toList();

const jsonData = '''
[
  {
    "namaPT": "PT. Maju Bersama",
    "nomorPenagihan": "INV-2023-XR45",
    "tanggalPlan": "2024-11-23",
    "namaLokasi": "Jakarta Pusat",
    "alamatLokasi": "Jl. Thamrin No. 20",
    "nominalPiutang": 2500000
  },
  {
    "namaPT": "PT. Sukses Abadi",
    "nomorPenagihan": "INV-2024-AB12",
    "tanggalPlan": "2024-11-24",
    "namaLokasi": "Bandung Timur",
    "alamatLokasi": "Jl. Asia Afrika No. 10",
    "nominalPiutang": 12500000
  },
  {
    "namaPT": "PT. Sentosa Jaya",
    "nomorPenagihan": "INV-2024-KY89",
    "tanggalPlan": "2024-11-25",
    "namaLokasi": "Surabaya Barat",
    "alamatLokasi": "Jl. Mayjend Sungkono No. 50",
    "nominalPiutang": 5400000
  },
  {
    "namaPT": "PT. Harmoni Sejahtera",
    "nomorPenagihan": "INV-2024-PQ23",
    "tanggalPlan": "2024-11-26",
    "namaLokasi": "Semarang Utara",
    "alamatLokasi": "Jl. Pandanaran No. 15",
    "nominalPiutang": 7800000
  },
  {
    "namaPT": "PT. Karya Mandiri",
    "nomorPenagihan": "INV-2024-LM34",
    "tanggalPlan": "2024-11-27",
    "namaLokasi": "Medan Kota",
    "alamatLokasi": "Jl. Gatot Subroto No. 22",
    "nominalPiutang": 6200000
  }
]
''';
