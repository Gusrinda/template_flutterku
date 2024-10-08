import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_detail_packing.freezed.dart';
part 'response_detail_packing.g.dart';

@freezed
class ResponseDetailPacking with _$ResponseDetailPacking {
  const factory ResponseDetailPacking({
    @JsonKey(name: "msgServer") List<DataDetailPacking>? msgServer,
  }) = _ResponseDetailPacking;

  factory ResponseDetailPacking.fromJson(Map<String, dynamic> json) =>
      _$ResponseDetailPackingFromJson(json);
}

@freezed
class DataDetailPacking with _$DataDetailPacking {
  const factory DataDetailPacking({
    @JsonKey(name: "checkvalue") String? checkvalue,
    @JsonKey(name: "trnsjjualdtlseq") int? trnsjjualdtlseq,
    @JsonKey(name: "salesdeliverydtloid") int? salesdeliverydtloid,
    @JsonKey(name: "salesdeliverymstoid") int? salesdeliverymstoid,
    @JsonKey(name: "orderdtloid") int? orderdtloid,
    @JsonKey(name: "salesdeliveryqty") int? salesdeliveryqty,
    @JsonKey(name: "itemdeliverynote") String? itemdeliverynote,
    @JsonKey(name: "salesdeliveryoid") int? salesdeliveryoid,
    @JsonKey(name: "itemoid") int? itemoid,
    @JsonKey(name: "itemunitoid") int? itemunitoid,
    @JsonKey(name: "itemlongdesc") String? itemlongdesc,
    @JsonKey(name: "itemcode") String? itemcode,
    @JsonKey(name: "merk") String? merk,
    @JsonKey(name: "unit") String? unit,
    @JsonKey(name: "deliveredqty") int? deliveredqty,
    @JsonKey(name: "referedqty") int? referedqty,
    @JsonKey(name: "qtypak") int? qtypak,
    @JsonKey(name: "itemloc") int? itemloc,
    @JsonKey(name: "location") String? location,
    @JsonKey(name: "image") String? image,
  }) = _DataDetailPacking;

  factory DataDetailPacking.fromJson(Map<String, dynamic> json) =>
      _$DataDetailPackingFromJson(json);
}
