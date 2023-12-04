import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_save_konfirm.freezed.dart';
part 'request_save_konfirm.g.dart';

@freezed
class RequestSaveKonfirm with _$RequestSaveKonfirm {
  const factory RequestSaveKonfirm({
    @JsonKey(name: "m_user_id") int? mUserId,
    @JsonKey(name: "m_user_name") String? mUserName,
    @JsonKey(name: "detail") List<Detail>? detail,
  }) = _RequestSaveKonfirm;

  factory RequestSaveKonfirm.fromJson(Map<String, dynamic> json) =>
      _$RequestSaveKonfirmFromJson(json);
}

@freezed
class Detail with _$Detail {
  const factory Detail({
    @JsonKey(name: "t_do_h_id") int? tDoHId,
    @JsonKey(name: "t_dp_h_id") int? tDpHId,
  }) = _Detail;

  factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);
}
