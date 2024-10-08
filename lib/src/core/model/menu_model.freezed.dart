// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MenuModel {
  @JsonKey(name: "judul")
  String? get judul => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "icon_data")
  IconData? get iconData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuModelCopyWith<MenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuModelCopyWith<$Res> {
  factory $MenuModelCopyWith(MenuModel value, $Res Function(MenuModel) then) =
      _$MenuModelCopyWithImpl<$Res, MenuModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "judul") String? judul,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "icon_data") IconData? iconData});
}

/// @nodoc
class _$MenuModelCopyWithImpl<$Res, $Val extends MenuModel>
    implements $MenuModelCopyWith<$Res> {
  _$MenuModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? judul = freezed,
    Object? image = freezed,
    Object? iconData = freezed,
  }) {
    return _then(_value.copyWith(
      judul: freezed == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      iconData: freezed == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuModelImplCopyWith<$Res>
    implements $MenuModelCopyWith<$Res> {
  factory _$$MenuModelImplCopyWith(
          _$MenuModelImpl value, $Res Function(_$MenuModelImpl) then) =
      __$$MenuModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "judul") String? judul,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "icon_data") IconData? iconData});
}

/// @nodoc
class __$$MenuModelImplCopyWithImpl<$Res>
    extends _$MenuModelCopyWithImpl<$Res, _$MenuModelImpl>
    implements _$$MenuModelImplCopyWith<$Res> {
  __$$MenuModelImplCopyWithImpl(
      _$MenuModelImpl _value, $Res Function(_$MenuModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? judul = freezed,
    Object? image = freezed,
    Object? iconData = freezed,
  }) {
    return _then(_$MenuModelImpl(
      judul: freezed == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      iconData: freezed == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData?,
    ));
  }
}

/// @nodoc

class _$MenuModelImpl implements _MenuModel {
  const _$MenuModelImpl(
      {@JsonKey(name: "judul") this.judul,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "icon_data") this.iconData});

  @override
  @JsonKey(name: "judul")
  final String? judul;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "icon_data")
  final IconData? iconData;

  @override
  String toString() {
    return 'MenuModel(judul: $judul, image: $image, iconData: $iconData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuModelImpl &&
            (identical(other.judul, judul) || other.judul == judul) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.iconData, iconData) ||
                other.iconData == iconData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, judul, image, iconData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuModelImplCopyWith<_$MenuModelImpl> get copyWith =>
      __$$MenuModelImplCopyWithImpl<_$MenuModelImpl>(this, _$identity);
}

abstract class _MenuModel implements MenuModel {
  const factory _MenuModel(
      {@JsonKey(name: "judul") final String? judul,
      @JsonKey(name: "image") final String? image,
      @JsonKey(name: "icon_data") final IconData? iconData}) = _$MenuModelImpl;

  @override
  @JsonKey(name: "judul")
  String? get judul;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "icon_data")
  IconData? get iconData;
  @override
  @JsonKey(ignore: true)
  _$$MenuModelImplCopyWith<_$MenuModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShiftModel _$ShiftModelFromJson(Map<String, dynamic> json) {
  return _ShiftModel.fromJson(json);
}

/// @nodoc
mixin _$ShiftModel {
  @JsonKey(name: "nama")
  String? get nama => throw _privateConstructorUsedError;
  @JsonKey(name: "mulai")
  String? get mulai => throw _privateConstructorUsedError;
  @JsonKey(name: "selesai")
  String? get selesai => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShiftModelCopyWith<ShiftModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftModelCopyWith<$Res> {
  factory $ShiftModelCopyWith(
          ShiftModel value, $Res Function(ShiftModel) then) =
      _$ShiftModelCopyWithImpl<$Res, ShiftModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "nama") String? nama,
      @JsonKey(name: "mulai") String? mulai,
      @JsonKey(name: "selesai") String? selesai});
}

/// @nodoc
class _$ShiftModelCopyWithImpl<$Res, $Val extends ShiftModel>
    implements $ShiftModelCopyWith<$Res> {
  _$ShiftModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nama = freezed,
    Object? mulai = freezed,
    Object? selesai = freezed,
  }) {
    return _then(_value.copyWith(
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      mulai: freezed == mulai
          ? _value.mulai
          : mulai // ignore: cast_nullable_to_non_nullable
              as String?,
      selesai: freezed == selesai
          ? _value.selesai
          : selesai // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShiftModelImplCopyWith<$Res>
    implements $ShiftModelCopyWith<$Res> {
  factory _$$ShiftModelImplCopyWith(
          _$ShiftModelImpl value, $Res Function(_$ShiftModelImpl) then) =
      __$$ShiftModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "nama") String? nama,
      @JsonKey(name: "mulai") String? mulai,
      @JsonKey(name: "selesai") String? selesai});
}

/// @nodoc
class __$$ShiftModelImplCopyWithImpl<$Res>
    extends _$ShiftModelCopyWithImpl<$Res, _$ShiftModelImpl>
    implements _$$ShiftModelImplCopyWith<$Res> {
  __$$ShiftModelImplCopyWithImpl(
      _$ShiftModelImpl _value, $Res Function(_$ShiftModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nama = freezed,
    Object? mulai = freezed,
    Object? selesai = freezed,
  }) {
    return _then(_$ShiftModelImpl(
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      mulai: freezed == mulai
          ? _value.mulai
          : mulai // ignore: cast_nullable_to_non_nullable
              as String?,
      selesai: freezed == selesai
          ? _value.selesai
          : selesai // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShiftModelImpl implements _ShiftModel {
  const _$ShiftModelImpl(
      {@JsonKey(name: "nama") this.nama,
      @JsonKey(name: "mulai") this.mulai,
      @JsonKey(name: "selesai") this.selesai});

  factory _$ShiftModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShiftModelImplFromJson(json);

  @override
  @JsonKey(name: "nama")
  final String? nama;
  @override
  @JsonKey(name: "mulai")
  final String? mulai;
  @override
  @JsonKey(name: "selesai")
  final String? selesai;

  @override
  String toString() {
    return 'ShiftModel(nama: $nama, mulai: $mulai, selesai: $selesai)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShiftModelImpl &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.mulai, mulai) || other.mulai == mulai) &&
            (identical(other.selesai, selesai) || other.selesai == selesai));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nama, mulai, selesai);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShiftModelImplCopyWith<_$ShiftModelImpl> get copyWith =>
      __$$ShiftModelImplCopyWithImpl<_$ShiftModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShiftModelImplToJson(
      this,
    );
  }
}

abstract class _ShiftModel implements ShiftModel {
  const factory _ShiftModel(
      {@JsonKey(name: "nama") final String? nama,
      @JsonKey(name: "mulai") final String? mulai,
      @JsonKey(name: "selesai") final String? selesai}) = _$ShiftModelImpl;

  factory _ShiftModel.fromJson(Map<String, dynamic> json) =
      _$ShiftModelImpl.fromJson;

  @override
  @JsonKey(name: "nama")
  String? get nama;
  @override
  @JsonKey(name: "mulai")
  String? get mulai;
  @override
  @JsonKey(name: "selesai")
  String? get selesai;
  @override
  @JsonKey(ignore: true)
  _$$ShiftModelImplCopyWith<_$ShiftModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FileModel _$FileModelFromJson(Map<String, dynamic> json) {
  return _FileModel.fromJson(json);
}

/// @nodoc
mixin _$FileModel {
  @JsonKey(name: "namaFile")
  String? get namaFile => throw _privateConstructorUsedError;
  @JsonKey(name: "urlFile")
  String? get urlFile => throw _privateConstructorUsedError;
  @JsonKey(name: "ukurangFile")
  double? get ukurangFile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileModelCopyWith<FileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileModelCopyWith<$Res> {
  factory $FileModelCopyWith(FileModel value, $Res Function(FileModel) then) =
      _$FileModelCopyWithImpl<$Res, FileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "namaFile") String? namaFile,
      @JsonKey(name: "urlFile") String? urlFile,
      @JsonKey(name: "ukurangFile") double? ukurangFile});
}

/// @nodoc
class _$FileModelCopyWithImpl<$Res, $Val extends FileModel>
    implements $FileModelCopyWith<$Res> {
  _$FileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? namaFile = freezed,
    Object? urlFile = freezed,
    Object? ukurangFile = freezed,
  }) {
    return _then(_value.copyWith(
      namaFile: freezed == namaFile
          ? _value.namaFile
          : namaFile // ignore: cast_nullable_to_non_nullable
              as String?,
      urlFile: freezed == urlFile
          ? _value.urlFile
          : urlFile // ignore: cast_nullable_to_non_nullable
              as String?,
      ukurangFile: freezed == ukurangFile
          ? _value.ukurangFile
          : ukurangFile // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileModelImplCopyWith<$Res>
    implements $FileModelCopyWith<$Res> {
  factory _$$FileModelImplCopyWith(
          _$FileModelImpl value, $Res Function(_$FileModelImpl) then) =
      __$$FileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "namaFile") String? namaFile,
      @JsonKey(name: "urlFile") String? urlFile,
      @JsonKey(name: "ukurangFile") double? ukurangFile});
}

/// @nodoc
class __$$FileModelImplCopyWithImpl<$Res>
    extends _$FileModelCopyWithImpl<$Res, _$FileModelImpl>
    implements _$$FileModelImplCopyWith<$Res> {
  __$$FileModelImplCopyWithImpl(
      _$FileModelImpl _value, $Res Function(_$FileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? namaFile = freezed,
    Object? urlFile = freezed,
    Object? ukurangFile = freezed,
  }) {
    return _then(_$FileModelImpl(
      namaFile: freezed == namaFile
          ? _value.namaFile
          : namaFile // ignore: cast_nullable_to_non_nullable
              as String?,
      urlFile: freezed == urlFile
          ? _value.urlFile
          : urlFile // ignore: cast_nullable_to_non_nullable
              as String?,
      ukurangFile: freezed == ukurangFile
          ? _value.ukurangFile
          : ukurangFile // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileModelImpl implements _FileModel {
  const _$FileModelImpl(
      {@JsonKey(name: "namaFile") this.namaFile,
      @JsonKey(name: "urlFile") this.urlFile,
      @JsonKey(name: "ukurangFile") this.ukurangFile});

  factory _$FileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileModelImplFromJson(json);

  @override
  @JsonKey(name: "namaFile")
  final String? namaFile;
  @override
  @JsonKey(name: "urlFile")
  final String? urlFile;
  @override
  @JsonKey(name: "ukurangFile")
  final double? ukurangFile;

  @override
  String toString() {
    return 'FileModel(namaFile: $namaFile, urlFile: $urlFile, ukurangFile: $ukurangFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileModelImpl &&
            (identical(other.namaFile, namaFile) ||
                other.namaFile == namaFile) &&
            (identical(other.urlFile, urlFile) || other.urlFile == urlFile) &&
            (identical(other.ukurangFile, ukurangFile) ||
                other.ukurangFile == ukurangFile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, namaFile, urlFile, ukurangFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileModelImplCopyWith<_$FileModelImpl> get copyWith =>
      __$$FileModelImplCopyWithImpl<_$FileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileModelImplToJson(
      this,
    );
  }
}

abstract class _FileModel implements FileModel {
  const factory _FileModel(
          {@JsonKey(name: "namaFile") final String? namaFile,
          @JsonKey(name: "urlFile") final String? urlFile,
          @JsonKey(name: "ukurangFile") final double? ukurangFile}) =
      _$FileModelImpl;

  factory _FileModel.fromJson(Map<String, dynamic> json) =
      _$FileModelImpl.fromJson;

  @override
  @JsonKey(name: "namaFile")
  String? get namaFile;
  @override
  @JsonKey(name: "urlFile")
  String? get urlFile;
  @override
  @JsonKey(name: "ukurangFile")
  double? get ukurangFile;
  @override
  @JsonKey(ignore: true)
  _$$FileModelImplCopyWith<_$FileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
