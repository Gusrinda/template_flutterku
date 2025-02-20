// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseLogin _$ResponseLoginFromJson(Map<String, dynamic> json) {
  return _ResponseLogin.fromJson(json);
}

/// @nodoc
mixin _$ResponseLogin {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  dynamic get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  DataUserLogin? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseLoginCopyWith<ResponseLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseLoginCopyWith<$Res> {
  factory $ResponseLoginCopyWith(
          ResponseLogin value, $Res Function(ResponseLogin) then) =
      _$ResponseLoginCopyWithImpl<$Res, ResponseLogin>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "data") DataUserLogin? data});

  $DataUserLoginCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResponseLoginCopyWithImpl<$Res, $Val extends ResponseLogin>
    implements $ResponseLoginCopyWith<$Res> {
  _$ResponseLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataUserLogin?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataUserLoginCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataUserLoginCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseLoginImplCopyWith<$Res>
    implements $ResponseLoginCopyWith<$Res> {
  factory _$$ResponseLoginImplCopyWith(
          _$ResponseLoginImpl value, $Res Function(_$ResponseLoginImpl) then) =
      __$$ResponseLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "data") DataUserLogin? data});

  @override
  $DataUserLoginCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ResponseLoginImplCopyWithImpl<$Res>
    extends _$ResponseLoginCopyWithImpl<$Res, _$ResponseLoginImpl>
    implements _$$ResponseLoginImplCopyWith<$Res> {
  __$$ResponseLoginImplCopyWithImpl(
      _$ResponseLoginImpl _value, $Res Function(_$ResponseLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseLoginImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataUserLogin?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseLoginImpl implements _ResponseLogin {
  const _$ResponseLoginImpl(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data});

  factory _$ResponseLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseLoginImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final dynamic message;
  @override
  @JsonKey(name: "data")
  final DataUserLogin? data;

  @override
  String toString() {
    return 'ResponseLogin(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseLoginImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, const DeepCollectionEquality().hash(message), data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseLoginImplCopyWith<_$ResponseLoginImpl> get copyWith =>
      __$$ResponseLoginImplCopyWithImpl<_$ResponseLoginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseLoginImplToJson(
      this,
    );
  }
}

abstract class _ResponseLogin implements ResponseLogin {
  const factory _ResponseLogin(
      {@JsonKey(name: "success") final bool? success,
      @JsonKey(name: "message") final dynamic message,
      @JsonKey(name: "data") final DataUserLogin? data}) = _$ResponseLoginImpl;

  factory _ResponseLogin.fromJson(Map<String, dynamic> json) =
      _$ResponseLoginImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "message")
  dynamic get message;
  @override
  @JsonKey(name: "data")
  DataUserLogin? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseLoginImplCopyWith<_$ResponseLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataUserLogin _$DataUserLoginFromJson(Map<String, dynamic> json) {
  return _DataUserLogin.fromJson(json);
}

/// @nodoc
mixin _$DataUserLogin {
  @JsonKey(name: "user_name")
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "user_type")
  String? get userType => throw _privateConstructorUsedError;
  @JsonKey(name: "employee_id")
  int? get employeeId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "token")
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: "expires")
  String? get expires => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataUserLoginCopyWith<DataUserLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataUserLoginCopyWith<$Res> {
  factory $DataUserLoginCopyWith(
          DataUserLogin value, $Res Function(DataUserLogin) then) =
      _$DataUserLoginCopyWithImpl<$Res, DataUserLogin>;
  @useResult
  $Res call(
      {@JsonKey(name: "user_name") String? userName,
      @JsonKey(name: "user_type") String? userType,
      @JsonKey(name: "employee_id") int? employeeId,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "token") String? token,
      @JsonKey(name: "expires") String? expires});
}

/// @nodoc
class _$DataUserLoginCopyWithImpl<$Res, $Val extends DataUserLogin>
    implements $DataUserLoginCopyWith<$Res> {
  _$DataUserLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? userType = freezed,
    Object? employeeId = freezed,
    Object? userId = freezed,
    Object? token = freezed,
    Object? expires = freezed,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      expires: freezed == expires
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataUserLoginImplCopyWith<$Res>
    implements $DataUserLoginCopyWith<$Res> {
  factory _$$DataUserLoginImplCopyWith(
          _$DataUserLoginImpl value, $Res Function(_$DataUserLoginImpl) then) =
      __$$DataUserLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "user_name") String? userName,
      @JsonKey(name: "user_type") String? userType,
      @JsonKey(name: "employee_id") int? employeeId,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "token") String? token,
      @JsonKey(name: "expires") String? expires});
}

/// @nodoc
class __$$DataUserLoginImplCopyWithImpl<$Res>
    extends _$DataUserLoginCopyWithImpl<$Res, _$DataUserLoginImpl>
    implements _$$DataUserLoginImplCopyWith<$Res> {
  __$$DataUserLoginImplCopyWithImpl(
      _$DataUserLoginImpl _value, $Res Function(_$DataUserLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? userType = freezed,
    Object? employeeId = freezed,
    Object? userId = freezed,
    Object? token = freezed,
    Object? expires = freezed,
  }) {
    return _then(_$DataUserLoginImpl(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      expires: freezed == expires
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataUserLoginImpl implements _DataUserLogin {
  const _$DataUserLoginImpl(
      {@JsonKey(name: "user_name") this.userName,
      @JsonKey(name: "user_type") this.userType,
      @JsonKey(name: "employee_id") this.employeeId,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "token") this.token,
      @JsonKey(name: "expires") this.expires});

  factory _$DataUserLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataUserLoginImplFromJson(json);

  @override
  @JsonKey(name: "user_name")
  final String? userName;
  @override
  @JsonKey(name: "user_type")
  final String? userType;
  @override
  @JsonKey(name: "employee_id")
  final int? employeeId;
  @override
  @JsonKey(name: "user_id")
  final int? userId;
  @override
  @JsonKey(name: "token")
  final String? token;
  @override
  @JsonKey(name: "expires")
  final String? expires;

  @override
  String toString() {
    return 'DataUserLogin(userName: $userName, userType: $userType, employeeId: $employeeId, userId: $userId, token: $token, expires: $expires)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataUserLoginImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.expires, expires) || other.expires == expires));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userName, userType, employeeId, userId, token, expires);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataUserLoginImplCopyWith<_$DataUserLoginImpl> get copyWith =>
      __$$DataUserLoginImplCopyWithImpl<_$DataUserLoginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataUserLoginImplToJson(
      this,
    );
  }
}

abstract class _DataUserLogin implements DataUserLogin {
  const factory _DataUserLogin(
      {@JsonKey(name: "user_name") final String? userName,
      @JsonKey(name: "user_type") final String? userType,
      @JsonKey(name: "employee_id") final int? employeeId,
      @JsonKey(name: "user_id") final int? userId,
      @JsonKey(name: "token") final String? token,
      @JsonKey(name: "expires") final String? expires}) = _$DataUserLoginImpl;

  factory _DataUserLogin.fromJson(Map<String, dynamic> json) =
      _$DataUserLoginImpl.fromJson;

  @override
  @JsonKey(name: "user_name")
  String? get userName;
  @override
  @JsonKey(name: "user_type")
  String? get userType;
  @override
  @JsonKey(name: "employee_id")
  int? get employeeId;
  @override
  @JsonKey(name: "user_id")
  int? get userId;
  @override
  @JsonKey(name: "token")
  String? get token;
  @override
  @JsonKey(name: "expires")
  String? get expires;
  @override
  @JsonKey(ignore: true)
  _$$DataUserLoginImplCopyWith<_$DataUserLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
