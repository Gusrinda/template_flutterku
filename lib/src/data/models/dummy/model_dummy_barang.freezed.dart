// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_dummy_barang.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModelDummyBarang _$ModelDummyBarangFromJson(Map<String, dynamic> json) {
  return _ModelDummyBarang.fromJson(json);
}

/// @nodoc
mixin _$ModelDummyBarang {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "nama")
  String? get nama => throw _privateConstructorUsedError;
  @JsonKey(name: "qty")
  int? get qty => throw _privateConstructorUsedError;
  @JsonKey(name: "url_image")
  String? get urlImage => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelDummyBarangCopyWith<ModelDummyBarang> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelDummyBarangCopyWith<$Res> {
  factory $ModelDummyBarangCopyWith(
          ModelDummyBarang value, $Res Function(ModelDummyBarang) then) =
      _$ModelDummyBarangCopyWithImpl<$Res, ModelDummyBarang>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "nama") String? nama,
      @JsonKey(name: "qty") int? qty,
      @JsonKey(name: "url_image") String? urlImage,
      @JsonKey(name: "code") String? code});
}

/// @nodoc
class _$ModelDummyBarangCopyWithImpl<$Res, $Val extends ModelDummyBarang>
    implements $ModelDummyBarangCopyWith<$Res> {
  _$ModelDummyBarangCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? qty = freezed,
    Object? urlImage = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      urlImage: freezed == urlImage
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelDummyBarangImplCopyWith<$Res>
    implements $ModelDummyBarangCopyWith<$Res> {
  factory _$$ModelDummyBarangImplCopyWith(_$ModelDummyBarangImpl value,
          $Res Function(_$ModelDummyBarangImpl) then) =
      __$$ModelDummyBarangImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "nama") String? nama,
      @JsonKey(name: "qty") int? qty,
      @JsonKey(name: "url_image") String? urlImage,
      @JsonKey(name: "code") String? code});
}

/// @nodoc
class __$$ModelDummyBarangImplCopyWithImpl<$Res>
    extends _$ModelDummyBarangCopyWithImpl<$Res, _$ModelDummyBarangImpl>
    implements _$$ModelDummyBarangImplCopyWith<$Res> {
  __$$ModelDummyBarangImplCopyWithImpl(_$ModelDummyBarangImpl _value,
      $Res Function(_$ModelDummyBarangImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? qty = freezed,
    Object? urlImage = freezed,
    Object? code = freezed,
  }) {
    return _then(_$ModelDummyBarangImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      urlImage: freezed == urlImage
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelDummyBarangImpl implements _ModelDummyBarang {
  const _$ModelDummyBarangImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "nama") this.nama,
      @JsonKey(name: "qty") this.qty,
      @JsonKey(name: "url_image") this.urlImage,
      @JsonKey(name: "code") this.code});

  factory _$ModelDummyBarangImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelDummyBarangImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "nama")
  final String? nama;
  @override
  @JsonKey(name: "qty")
  final int? qty;
  @override
  @JsonKey(name: "url_image")
  final String? urlImage;
  @override
  @JsonKey(name: "code")
  final String? code;

  @override
  String toString() {
    return 'ModelDummyBarang(id: $id, nama: $nama, qty: $qty, urlImage: $urlImage, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelDummyBarangImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.urlImage, urlImage) ||
                other.urlImage == urlImage) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nama, qty, urlImage, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelDummyBarangImplCopyWith<_$ModelDummyBarangImpl> get copyWith =>
      __$$ModelDummyBarangImplCopyWithImpl<_$ModelDummyBarangImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelDummyBarangImplToJson(
      this,
    );
  }
}

abstract class _ModelDummyBarang implements ModelDummyBarang {
  const factory _ModelDummyBarang(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "nama") final String? nama,
      @JsonKey(name: "qty") final int? qty,
      @JsonKey(name: "url_image") final String? urlImage,
      @JsonKey(name: "code") final String? code}) = _$ModelDummyBarangImpl;

  factory _ModelDummyBarang.fromJson(Map<String, dynamic> json) =
      _$ModelDummyBarangImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "nama")
  String? get nama;
  @override
  @JsonKey(name: "qty")
  int? get qty;
  @override
  @JsonKey(name: "url_image")
  String? get urlImage;
  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$ModelDummyBarangImplCopyWith<_$ModelDummyBarangImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ModelDummySelectedBarang _$ModelDummySelectedBarangFromJson(
    Map<String, dynamic> json) {
  return _ModelDummySelectedBarang.fromJson(json);
}

/// @nodoc
mixin _$ModelDummySelectedBarang {
  @JsonKey(name: "modelBarang")
  ModelDummyBarang? get modelBarang => throw _privateConstructorUsedError;
  @JsonKey(name: "isSelected")
  bool get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelDummySelectedBarangCopyWith<ModelDummySelectedBarang> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelDummySelectedBarangCopyWith<$Res> {
  factory $ModelDummySelectedBarangCopyWith(ModelDummySelectedBarang value,
          $Res Function(ModelDummySelectedBarang) then) =
      _$ModelDummySelectedBarangCopyWithImpl<$Res, ModelDummySelectedBarang>;
  @useResult
  $Res call(
      {@JsonKey(name: "modelBarang") ModelDummyBarang? modelBarang,
      @JsonKey(name: "isSelected") bool isSelected});

  $ModelDummyBarangCopyWith<$Res>? get modelBarang;
}

/// @nodoc
class _$ModelDummySelectedBarangCopyWithImpl<$Res,
        $Val extends ModelDummySelectedBarang>
    implements $ModelDummySelectedBarangCopyWith<$Res> {
  _$ModelDummySelectedBarangCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelBarang = freezed,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      modelBarang: freezed == modelBarang
          ? _value.modelBarang
          : modelBarang // ignore: cast_nullable_to_non_nullable
              as ModelDummyBarang?,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ModelDummyBarangCopyWith<$Res>? get modelBarang {
    if (_value.modelBarang == null) {
      return null;
    }

    return $ModelDummyBarangCopyWith<$Res>(_value.modelBarang!, (value) {
      return _then(_value.copyWith(modelBarang: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModelDummySelectedBarangImplCopyWith<$Res>
    implements $ModelDummySelectedBarangCopyWith<$Res> {
  factory _$$ModelDummySelectedBarangImplCopyWith(
          _$ModelDummySelectedBarangImpl value,
          $Res Function(_$ModelDummySelectedBarangImpl) then) =
      __$$ModelDummySelectedBarangImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "modelBarang") ModelDummyBarang? modelBarang,
      @JsonKey(name: "isSelected") bool isSelected});

  @override
  $ModelDummyBarangCopyWith<$Res>? get modelBarang;
}

/// @nodoc
class __$$ModelDummySelectedBarangImplCopyWithImpl<$Res>
    extends _$ModelDummySelectedBarangCopyWithImpl<$Res,
        _$ModelDummySelectedBarangImpl>
    implements _$$ModelDummySelectedBarangImplCopyWith<$Res> {
  __$$ModelDummySelectedBarangImplCopyWithImpl(
      _$ModelDummySelectedBarangImpl _value,
      $Res Function(_$ModelDummySelectedBarangImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelBarang = freezed,
    Object? isSelected = null,
  }) {
    return _then(_$ModelDummySelectedBarangImpl(
      modelBarang: freezed == modelBarang
          ? _value.modelBarang
          : modelBarang // ignore: cast_nullable_to_non_nullable
              as ModelDummyBarang?,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelDummySelectedBarangImpl implements _ModelDummySelectedBarang {
  const _$ModelDummySelectedBarangImpl(
      {@JsonKey(name: "modelBarang") this.modelBarang,
      @JsonKey(name: "isSelected") this.isSelected = false});

  factory _$ModelDummySelectedBarangImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelDummySelectedBarangImplFromJson(json);

  @override
  @JsonKey(name: "modelBarang")
  final ModelDummyBarang? modelBarang;
  @override
  @JsonKey(name: "isSelected")
  final bool isSelected;

  @override
  String toString() {
    return 'ModelDummySelectedBarang(modelBarang: $modelBarang, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelDummySelectedBarangImpl &&
            (identical(other.modelBarang, modelBarang) ||
                other.modelBarang == modelBarang) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, modelBarang, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelDummySelectedBarangImplCopyWith<_$ModelDummySelectedBarangImpl>
      get copyWith => __$$ModelDummySelectedBarangImplCopyWithImpl<
          _$ModelDummySelectedBarangImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelDummySelectedBarangImplToJson(
      this,
    );
  }
}

abstract class _ModelDummySelectedBarang implements ModelDummySelectedBarang {
  const factory _ModelDummySelectedBarang(
          {@JsonKey(name: "modelBarang") final ModelDummyBarang? modelBarang,
          @JsonKey(name: "isSelected") final bool isSelected}) =
      _$ModelDummySelectedBarangImpl;

  factory _ModelDummySelectedBarang.fromJson(Map<String, dynamic> json) =
      _$ModelDummySelectedBarangImpl.fromJson;

  @override
  @JsonKey(name: "modelBarang")
  ModelDummyBarang? get modelBarang;
  @override
  @JsonKey(name: "isSelected")
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$ModelDummySelectedBarangImplCopyWith<_$ModelDummySelectedBarangImpl>
      get copyWith => throw _privateConstructorUsedError;
}
