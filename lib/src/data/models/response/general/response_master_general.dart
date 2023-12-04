import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_master_general.freezed.dart';
part 'response_master_general.g.dart';

@freezed
class ResponseMasterGeneral with _$ResponseMasterGeneral {
  const factory ResponseMasterGeneral({
    @JsonKey(name: "data") List<DataGeneral>? data,
    @JsonKey(name: "total") int? total,
    @JsonKey(name: "current_page") int? currentPage,
    @JsonKey(name: "per_page") int? perPage,
    @JsonKey(name: "from") int? from,
    @JsonKey(name: "to") int? to,
    @JsonKey(name: "last_page") int? lastPage,
    @JsonKey(name: "has_next") bool? hasNext,
    @JsonKey(name: "prev") dynamic prev,
    @JsonKey(name: "next") dynamic next,
    @JsonKey(name: "processed_time") double? processedTime,
  }) = _ResponseMasterGeneral;

  factory ResponseMasterGeneral.fromJson(Map<String, dynamic> json) =>
      _$ResponseMasterGeneralFromJson(json);
}

@freezed
class DataGeneral with _$DataGeneral {
  const factory DataGeneral({
    @JsonKey(name: "meta_read") bool? metaRead,
    @JsonKey(name: "meta_delete") bool? metaDelete,
    @JsonKey(name: "meta_update") bool? metaUpdate,
    @JsonKey(name: "meta_create") bool? metaCreate,
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "group") String? group,
    @JsonKey(name: "key") String? key,
    @JsonKey(name: "kode") String? kode,
    @JsonKey(name: "value") String? value,
    @JsonKey(name: "value_2") String? value2,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _DataGeneral;

  factory DataGeneral.fromJson(Map<String, dynamic> json) =>
      _$DataGeneralFromJson(json);
}
