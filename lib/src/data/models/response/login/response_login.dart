import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_login.freezed.dart';
part 'response_login.g.dart';

@freezed
class ResponseLogin with _$ResponseLogin {
  const factory ResponseLogin({
    @JsonKey(name: "msgServer") List<DataUserLogin>? msgServer,
  }) = _ResponseLogin;

  factory ResponseLogin.fromJson(Map<String, dynamic> json) =>
      _$ResponseLoginFromJson(json);
}

@freezed
class DataUserLogin with _$DataUserLogin {
  const factory DataUserLogin({
    @JsonKey(name: "USERID") String? userid,
    @JsonKey(name: "idSales") int? idSales,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "profpass") String? profpass,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "activeflag") String? activeflag,
  }) = _DataUserLogin;

  factory DataUserLogin.fromJson(Map<String, dynamic> json) =>
      _$DataUserLoginFromJson(json);
}
