import 'package:becca_supir/src/presentation/views/materi/materi_page/materi_list_data.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'data_materi.freezed.dart';
part 'data_materi.g.dart';

@freezed
class DataMateri with _$DataMateri {
  const factory DataMateri({
    @JsonKey(name: "judul") String? judul,
    @JsonKey(name: "deskripsi") String? deskripsi,
    @JsonKey(name: "function") dynamic function,
  }) = _DataMateri;

  factory DataMateri.fromJson(Map<String, dynamic> json) =>
      _$DataMateriFromJson(json);
}


