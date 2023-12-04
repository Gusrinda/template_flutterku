import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_response.freezed.dart';
part 'public_response.g.dart';

@freezed
class PublicResponse with _$PublicResponse {
  factory PublicResponse({
    String? message,
    List<dynamic>? success,
    List<dynamic>? errors,
    dynamic id,
    @JsonKey(name: 'processed_time') double? processedTime,
  }) = _PublicResponse;

  factory PublicResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicResponseFromJson(json);
}
