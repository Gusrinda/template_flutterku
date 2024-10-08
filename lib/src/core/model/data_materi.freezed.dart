// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_materi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DataMateri _$DataMateriFromJson(Map<String, dynamic> json) {
  return _DataMateri.fromJson(json);
}

/// @nodoc
mixin _$DataMateri {
  @JsonKey(name: "judul")
  String? get judul => throw _privateConstructorUsedError;
  @JsonKey(name: "deskripsi")
  String? get deskripsi => throw _privateConstructorUsedError;
  @JsonKey(name: "function")
  dynamic get function => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataMateriCopyWith<DataMateri> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataMateriCopyWith<$Res> {
  factory $DataMateriCopyWith(
          DataMateri value, $Res Function(DataMateri) then) =
      _$DataMateriCopyWithImpl<$Res, DataMateri>;
  @useResult
  $Res call(
      {@JsonKey(name: "judul") String? judul,
      @JsonKey(name: "deskripsi") String? deskripsi,
      @JsonKey(name: "function") dynamic function});
}

/// @nodoc
class _$DataMateriCopyWithImpl<$Res, $Val extends DataMateri>
    implements $DataMateriCopyWith<$Res> {
  _$DataMateriCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? judul = freezed,
    Object? deskripsi = freezed,
    Object? function = freezed,
  }) {
    return _then(_value.copyWith(
      judul: freezed == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      function: freezed == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataMateriImplCopyWith<$Res>
    implements $DataMateriCopyWith<$Res> {
  factory _$$DataMateriImplCopyWith(
          _$DataMateriImpl value, $Res Function(_$DataMateriImpl) then) =
      __$$DataMateriImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "judul") String? judul,
      @JsonKey(name: "deskripsi") String? deskripsi,
      @JsonKey(name: "function") dynamic function});
}

/// @nodoc
class __$$DataMateriImplCopyWithImpl<$Res>
    extends _$DataMateriCopyWithImpl<$Res, _$DataMateriImpl>
    implements _$$DataMateriImplCopyWith<$Res> {
  __$$DataMateriImplCopyWithImpl(
      _$DataMateriImpl _value, $Res Function(_$DataMateriImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? judul = freezed,
    Object? deskripsi = freezed,
    Object? function = freezed,
  }) {
    return _then(_$DataMateriImpl(
      judul: freezed == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      function: freezed == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataMateriImpl implements _DataMateri {
  const _$DataMateriImpl(
      {@JsonKey(name: "judul") this.judul,
      @JsonKey(name: "deskripsi") this.deskripsi,
      @JsonKey(name: "function") this.function});

  factory _$DataMateriImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataMateriImplFromJson(json);

  @override
  @JsonKey(name: "judul")
  final String? judul;
  @override
  @JsonKey(name: "deskripsi")
  final String? deskripsi;
  @override
  @JsonKey(name: "function")
  final dynamic function;

  @override
  String toString() {
    return 'DataMateri(judul: $judul, deskripsi: $deskripsi, function: $function)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataMateriImpl &&
            (identical(other.judul, judul) || other.judul == judul) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            const DeepCollectionEquality().equals(other.function, function));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, judul, deskripsi,
      const DeepCollectionEquality().hash(function));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataMateriImplCopyWith<_$DataMateriImpl> get copyWith =>
      __$$DataMateriImplCopyWithImpl<_$DataMateriImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataMateriImplToJson(
      this,
    );
  }
}

abstract class _DataMateri implements DataMateri {
  const factory _DataMateri(
      {@JsonKey(name: "judul") final String? judul,
      @JsonKey(name: "deskripsi") final String? deskripsi,
      @JsonKey(name: "function") final dynamic function}) = _$DataMateriImpl;

  factory _DataMateri.fromJson(Map<String, dynamic> json) =
      _$DataMateriImpl.fromJson;

  @override
  @JsonKey(name: "judul")
  String? get judul;
  @override
  @JsonKey(name: "deskripsi")
  String? get deskripsi;
  @override
  @JsonKey(name: "function")
  dynamic get function;
  @override
  @JsonKey(ignore: true)
  _$$DataMateriImplCopyWith<_$DataMateriImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
