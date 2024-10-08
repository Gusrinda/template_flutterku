import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_checker_detail.freezed.dart';
part 'response_checker_detail.g.dart';

@freezed
class ResponseCheckerDetail with _$ResponseCheckerDetail {
  const factory ResponseCheckerDetail({
    @JsonKey(name: "msgServer") List<DataDetailChecker>? msgServer,
  }) = _ResponseCheckerDetail;

  factory ResponseCheckerDetail.fromJson(Map<String, dynamic> json) =>
      _$ResponseCheckerDetailFromJson(json);
}

@freezed
class DataDetailChecker with _$DataDetailChecker {
  const factory DataDetailChecker({
    @JsonKey(name: "checkvalue") String? checkvalue,
    @JsonKey(name: "itemlongdesc") String? itemlongdesc,
    @JsonKey(name: "itemgroupcode") String? itemgroupcode,
    @JsonKey(name: "itemcode") String? itemcode,
    @JsonKey(name: "merk") String? merk,
    @JsonKey(name: "keterangan") String? keterangan,
    @JsonKey(name: "maxqty") int? maxqty,
    @JsonKey(name: "salesdeliveryqty") int? salesdeliveryqty,
    @JsonKey(name: "itemoid") int? itemoid,
    @JsonKey(name: "trnorderdtloid") int? trnorderdtloid,
    @JsonKey(name: "trnorderdtlunitoid") int? trnorderdtlunitoid,
    @JsonKey(name: "unit") String? unit,
    @JsonKey(name: "trnordermstoid") int? trnordermstoid,
    @JsonKey(name: "whlocoid") int? whlocoid,
    @JsonKey(name: "lokasi") String? lokasi,
    @JsonKey(name: "itembarcode3") String? itembarcode3,
    @JsonKey(name: "konvbarcode3") int? konvbarcode3,
    @JsonKey(name: "itembarcode2") String? itembarcode2,
    @JsonKey(name: "konvbarcode2") int? konvbarcode2,
    @JsonKey(name: "itembarcode1") String? itembarcode1,
    @JsonKey(name: "konvbarcode1") int? konvbarcode1,
    @JsonKey(name: "image") String? image,
  }) = _DataDetailChecker;

  factory DataDetailChecker.fromJson(Map<String, dynamic> json) =>
      _$DataDetailCheckerFromJson(json);
}

@freezed
class DataCheckingScan with _$DataCheckingScan {
  const factory DataCheckingScan({
    @JsonKey(name: "checkvalue") DataDetailChecker? dataDetailChecker,
    @JsonKey(name: "isChecked") @Default(false) bool isChecked,
    @JsonKey(name: "qtySekarang") int? qtySekarang,
  }) = _DataCheckingScan;

  factory DataCheckingScan.fromJson(Map<String, dynamic> json) =>
      _$DataCheckingScanFromJson(json);
}
