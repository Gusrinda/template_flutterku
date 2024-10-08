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
  @JsonKey(name: "msgServer")
  List<DataUserLogin>? get msgServer => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: "msgServer") List<DataUserLogin>? msgServer});
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
    Object? msgServer = freezed,
  }) {
    return _then(_value.copyWith(
      msgServer: freezed == msgServer
          ? _value.msgServer
          : msgServer // ignore: cast_nullable_to_non_nullable
              as List<DataUserLogin>?,
    ) as $Val);
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
  $Res call({@JsonKey(name: "msgServer") List<DataUserLogin>? msgServer});
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
    Object? msgServer = freezed,
  }) {
    return _then(_$ResponseLoginImpl(
      msgServer: freezed == msgServer
          ? _value._msgServer
          : msgServer // ignore: cast_nullable_to_non_nullable
              as List<DataUserLogin>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseLoginImpl implements _ResponseLogin {
  const _$ResponseLoginImpl(
      {@JsonKey(name: "msgServer") final List<DataUserLogin>? msgServer})
      : _msgServer = msgServer;

  factory _$ResponseLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseLoginImplFromJson(json);

  final List<DataUserLogin>? _msgServer;
  @override
  @JsonKey(name: "msgServer")
  List<DataUserLogin>? get msgServer {
    final value = _msgServer;
    if (value == null) return null;
    if (_msgServer is EqualUnmodifiableListView) return _msgServer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseLogin(msgServer: $msgServer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseLoginImpl &&
            const DeepCollectionEquality()
                .equals(other._msgServer, _msgServer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_msgServer));

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
          {@JsonKey(name: "msgServer") final List<DataUserLogin>? msgServer}) =
      _$ResponseLoginImpl;

  factory _ResponseLogin.fromJson(Map<String, dynamic> json) =
      _$ResponseLoginImpl.fromJson;

  @override
  @JsonKey(name: "msgServer")
  List<DataUserLogin>? get msgServer;
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
  @JsonKey(name: "USERID")
  String? get userid => throw _privateConstructorUsedError;
  @JsonKey(name: "idSales")
  int? get idSales => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "profpass")
  String? get profpass => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "activeflag")
  String? get activeflag => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "USERID") String? userid,
      @JsonKey(name: "idSales") int? idSales,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "profpass") String? profpass,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "activeflag") String? activeflag});
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
    Object? userid = freezed,
    Object? idSales = freezed,
    Object? name = freezed,
    Object? profpass = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? activeflag = freezed,
  }) {
    return _then(_value.copyWith(
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String?,
      idSales: freezed == idSales
          ? _value.idSales
          : idSales // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profpass: freezed == profpass
          ? _value.profpass
          : profpass // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      activeflag: freezed == activeflag
          ? _value.activeflag
          : activeflag // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "USERID") String? userid,
      @JsonKey(name: "idSales") int? idSales,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "profpass") String? profpass,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "activeflag") String? activeflag});
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
    Object? userid = freezed,
    Object? idSales = freezed,
    Object? name = freezed,
    Object? profpass = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? activeflag = freezed,
  }) {
    return _then(_$DataUserLoginImpl(
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String?,
      idSales: freezed == idSales
          ? _value.idSales
          : idSales // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profpass: freezed == profpass
          ? _value.profpass
          : profpass // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      activeflag: freezed == activeflag
          ? _value.activeflag
          : activeflag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataUserLoginImpl implements _DataUserLogin {
  const _$DataUserLoginImpl(
      {@JsonKey(name: "USERID") this.userid,
      @JsonKey(name: "idSales") this.idSales,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "profpass") this.profpass,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "address") this.address,
      @JsonKey(name: "activeflag") this.activeflag});

  factory _$DataUserLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataUserLoginImplFromJson(json);

  @override
  @JsonKey(name: "USERID")
  final String? userid;
  @override
  @JsonKey(name: "idSales")
  final int? idSales;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "profpass")
  final String? profpass;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "address")
  final String? address;
  @override
  @JsonKey(name: "activeflag")
  final String? activeflag;

  @override
  String toString() {
    return 'DataUserLogin(userid: $userid, idSales: $idSales, name: $name, profpass: $profpass, email: $email, address: $address, activeflag: $activeflag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataUserLoginImpl &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.idSales, idSales) || other.idSales == idSales) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profpass, profpass) ||
                other.profpass == profpass) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.activeflag, activeflag) ||
                other.activeflag == activeflag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userid, idSales, name, profpass, email, address, activeflag);

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
          {@JsonKey(name: "USERID") final String? userid,
          @JsonKey(name: "idSales") final int? idSales,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "profpass") final String? profpass,
          @JsonKey(name: "email") final String? email,
          @JsonKey(name: "address") final String? address,
          @JsonKey(name: "activeflag") final String? activeflag}) =
      _$DataUserLoginImpl;

  factory _DataUserLogin.fromJson(Map<String, dynamic> json) =
      _$DataUserLoginImpl.fromJson;

  @override
  @JsonKey(name: "USERID")
  String? get userid;
  @override
  @JsonKey(name: "idSales")
  int? get idSales;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "profpass")
  String? get profpass;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "address")
  String? get address;
  @override
  @JsonKey(name: "activeflag")
  String? get activeflag;
  @override
  @JsonKey(ignore: true)
  _$$DataUserLoginImplCopyWith<_$DataUserLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
