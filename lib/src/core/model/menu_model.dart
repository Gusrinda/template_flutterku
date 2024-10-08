import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_model.freezed.dart';
part 'menu_model.g.dart';

@freezed
class MenuModel with _$MenuModel {
  const factory MenuModel({
    @JsonKey(name: "judul") String? judul,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "icon_data") IconData? iconData,
  }) = _MenuModel;
}

@freezed
class ShiftModel with _$ShiftModel {
  const factory ShiftModel({
    @JsonKey(name: "nama") String? nama,
    @JsonKey(name: "mulai") String? mulai,
    @JsonKey(name: "selesai") String? selesai,
  }) = _ShiftModel;

  factory ShiftModel.fromJson(Map<String, dynamic> json) =>
      _$ShiftModelFromJson(json);
}

@freezed
class FileModel with _$FileModel {
  const factory FileModel({
    @JsonKey(name: "namaFile") String? namaFile,
    @JsonKey(name: "urlFile") String? urlFile,
    @JsonKey(name: "ukurangFile") double? ukurangFile,
  }) = _FileModel;

  factory FileModel.fromJson(Map<String, dynamic> json) =>
      _$FileModelFromJson(json);
}
