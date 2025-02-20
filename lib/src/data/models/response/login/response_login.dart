import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_login.freezed.dart';
part 'response_login.g.dart';

@freezed
class ResponseLogin with _$ResponseLogin {
    const factory ResponseLogin({
        @JsonKey(name: "success")
        bool? success,
        @JsonKey(name: "message")
        dynamic message,
        @JsonKey(name: "data")
        DataUserLogin? data,
    }) = _ResponseLogin;

    factory ResponseLogin.fromJson(Map<String, dynamic> json) => _$ResponseLoginFromJson(json);
}

@freezed
class DataUserLogin with _$DataUserLogin {
    const factory DataUserLogin({
        @JsonKey(name: "user_name")
        String? userName,
        @JsonKey(name: "user_type")
        String? userType,
        @JsonKey(name: "employee_id")
        int? employeeId,
        @JsonKey(name: "user_id")
        int? userId,
        @JsonKey(name: "token")
        String? token,
        @JsonKey(name: "expires")
        String? expires,
    }) = _DataUserLogin;

    factory DataUserLogin.fromJson(Map<String, dynamic> json) => _$DataUserLoginFromJson(json);
}
