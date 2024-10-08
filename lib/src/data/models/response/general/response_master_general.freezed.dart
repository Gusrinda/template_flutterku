// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_master_general.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseMasterGeneral _$ResponseMasterGeneralFromJson(
    Map<String, dynamic> json) {
  return _ResponseMasterGeneral.fromJson(json);
}

/// @nodoc
mixin _$ResponseMasterGeneral {
  @JsonKey(name: "data")
  List<DataGeneral>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "from")
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "to")
  int? get to => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: "has_next")
  bool? get hasNext => throw _privateConstructorUsedError;
  @JsonKey(name: "prev")
  dynamic get prev => throw _privateConstructorUsedError;
  @JsonKey(name: "next")
  dynamic get next => throw _privateConstructorUsedError;
  @JsonKey(name: "processed_time")
  double? get processedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseMasterGeneralCopyWith<ResponseMasterGeneral> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseMasterGeneralCopyWith<$Res> {
  factory $ResponseMasterGeneralCopyWith(ResponseMasterGeneral value,
          $Res Function(ResponseMasterGeneral) then) =
      _$ResponseMasterGeneralCopyWithImpl<$Res, ResponseMasterGeneral>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<DataGeneral>? data,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "has_next") bool? hasNext,
      @JsonKey(name: "prev") dynamic prev,
      @JsonKey(name: "next") dynamic next,
      @JsonKey(name: "processed_time") double? processedTime});
}

/// @nodoc
class _$ResponseMasterGeneralCopyWithImpl<$Res,
        $Val extends ResponseMasterGeneral>
    implements $ResponseMasterGeneralCopyWith<$Res> {
  _$ResponseMasterGeneralCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? total = freezed,
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? lastPage = freezed,
    Object? hasNext = freezed,
    Object? prev = freezed,
    Object? next = freezed,
    Object? processedTime = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNext: freezed == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as dynamic,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as dynamic,
      processedTime: freezed == processedTime
          ? _value.processedTime
          : processedTime // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseMasterGeneralImplCopyWith<$Res>
    implements $ResponseMasterGeneralCopyWith<$Res> {
  factory _$$ResponseMasterGeneralImplCopyWith(
          _$ResponseMasterGeneralImpl value,
          $Res Function(_$ResponseMasterGeneralImpl) then) =
      __$$ResponseMasterGeneralImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<DataGeneral>? data,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "has_next") bool? hasNext,
      @JsonKey(name: "prev") dynamic prev,
      @JsonKey(name: "next") dynamic next,
      @JsonKey(name: "processed_time") double? processedTime});
}

/// @nodoc
class __$$ResponseMasterGeneralImplCopyWithImpl<$Res>
    extends _$ResponseMasterGeneralCopyWithImpl<$Res,
        _$ResponseMasterGeneralImpl>
    implements _$$ResponseMasterGeneralImplCopyWith<$Res> {
  __$$ResponseMasterGeneralImplCopyWithImpl(_$ResponseMasterGeneralImpl _value,
      $Res Function(_$ResponseMasterGeneralImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? total = freezed,
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? lastPage = freezed,
    Object? hasNext = freezed,
    Object? prev = freezed,
    Object? next = freezed,
    Object? processedTime = freezed,
  }) {
    return _then(_$ResponseMasterGeneralImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataGeneral>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNext: freezed == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as dynamic,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as dynamic,
      processedTime: freezed == processedTime
          ? _value.processedTime
          : processedTime // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseMasterGeneralImpl implements _ResponseMasterGeneral {
  const _$ResponseMasterGeneralImpl(
      {@JsonKey(name: "data") final List<DataGeneral>? data,
      @JsonKey(name: "total") this.total,
      @JsonKey(name: "current_page") this.currentPage,
      @JsonKey(name: "per_page") this.perPage,
      @JsonKey(name: "from") this.from,
      @JsonKey(name: "to") this.to,
      @JsonKey(name: "last_page") this.lastPage,
      @JsonKey(name: "has_next") this.hasNext,
      @JsonKey(name: "prev") this.prev,
      @JsonKey(name: "next") this.next,
      @JsonKey(name: "processed_time") this.processedTime})
      : _data = data;

  factory _$ResponseMasterGeneralImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseMasterGeneralImplFromJson(json);

  final List<DataGeneral>? _data;
  @override
  @JsonKey(name: "data")
  List<DataGeneral>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "total")
  final int? total;
  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  @override
  @JsonKey(name: "from")
  final int? from;
  @override
  @JsonKey(name: "to")
  final int? to;
  @override
  @JsonKey(name: "last_page")
  final int? lastPage;
  @override
  @JsonKey(name: "has_next")
  final bool? hasNext;
  @override
  @JsonKey(name: "prev")
  final dynamic prev;
  @override
  @JsonKey(name: "next")
  final dynamic next;
  @override
  @JsonKey(name: "processed_time")
  final double? processedTime;

  @override
  String toString() {
    return 'ResponseMasterGeneral(data: $data, total: $total, currentPage: $currentPage, perPage: $perPage, from: $from, to: $to, lastPage: $lastPage, hasNext: $hasNext, prev: $prev, next: $next, processedTime: $processedTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseMasterGeneralImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            const DeepCollectionEquality().equals(other.prev, prev) &&
            const DeepCollectionEquality().equals(other.next, next) &&
            (identical(other.processedTime, processedTime) ||
                other.processedTime == processedTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      total,
      currentPage,
      perPage,
      from,
      to,
      lastPage,
      hasNext,
      const DeepCollectionEquality().hash(prev),
      const DeepCollectionEquality().hash(next),
      processedTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseMasterGeneralImplCopyWith<_$ResponseMasterGeneralImpl>
      get copyWith => __$$ResponseMasterGeneralImplCopyWithImpl<
          _$ResponseMasterGeneralImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseMasterGeneralImplToJson(
      this,
    );
  }
}

abstract class _ResponseMasterGeneral implements ResponseMasterGeneral {
  const factory _ResponseMasterGeneral(
          {@JsonKey(name: "data") final List<DataGeneral>? data,
          @JsonKey(name: "total") final int? total,
          @JsonKey(name: "current_page") final int? currentPage,
          @JsonKey(name: "per_page") final int? perPage,
          @JsonKey(name: "from") final int? from,
          @JsonKey(name: "to") final int? to,
          @JsonKey(name: "last_page") final int? lastPage,
          @JsonKey(name: "has_next") final bool? hasNext,
          @JsonKey(name: "prev") final dynamic prev,
          @JsonKey(name: "next") final dynamic next,
          @JsonKey(name: "processed_time") final double? processedTime}) =
      _$ResponseMasterGeneralImpl;

  factory _ResponseMasterGeneral.fromJson(Map<String, dynamic> json) =
      _$ResponseMasterGeneralImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<DataGeneral>? get data;
  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  @JsonKey(name: "from")
  int? get from;
  @override
  @JsonKey(name: "to")
  int? get to;
  @override
  @JsonKey(name: "last_page")
  int? get lastPage;
  @override
  @JsonKey(name: "has_next")
  bool? get hasNext;
  @override
  @JsonKey(name: "prev")
  dynamic get prev;
  @override
  @JsonKey(name: "next")
  dynamic get next;
  @override
  @JsonKey(name: "processed_time")
  double? get processedTime;
  @override
  @JsonKey(ignore: true)
  _$$ResponseMasterGeneralImplCopyWith<_$ResponseMasterGeneralImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataGeneral _$DataGeneralFromJson(Map<String, dynamic> json) {
  return _DataGeneral.fromJson(json);
}

/// @nodoc
mixin _$DataGeneral {
  @JsonKey(name: "meta_read")
  bool? get metaRead => throw _privateConstructorUsedError;
  @JsonKey(name: "meta_delete")
  bool? get metaDelete => throw _privateConstructorUsedError;
  @JsonKey(name: "meta_update")
  bool? get metaUpdate => throw _privateConstructorUsedError;
  @JsonKey(name: "meta_create")
  bool? get metaCreate => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "group")
  String? get group => throw _privateConstructorUsedError;
  @JsonKey(name: "key")
  String? get key => throw _privateConstructorUsedError;
  @JsonKey(name: "kode")
  String? get kode => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String? get value => throw _privateConstructorUsedError;
  @JsonKey(name: "value_2")
  String? get value2 => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataGeneralCopyWith<DataGeneral> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataGeneralCopyWith<$Res> {
  factory $DataGeneralCopyWith(
          DataGeneral value, $Res Function(DataGeneral) then) =
      _$DataGeneralCopyWithImpl<$Res, DataGeneral>;
  @useResult
  $Res call(
      {@JsonKey(name: "meta_read") bool? metaRead,
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
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$DataGeneralCopyWithImpl<$Res, $Val extends DataGeneral>
    implements $DataGeneralCopyWith<$Res> {
  _$DataGeneralCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metaRead = freezed,
    Object? metaDelete = freezed,
    Object? metaUpdate = freezed,
    Object? metaCreate = freezed,
    Object? id = freezed,
    Object? group = freezed,
    Object? key = freezed,
    Object? kode = freezed,
    Object? value = freezed,
    Object? value2 = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      metaRead: freezed == metaRead
          ? _value.metaRead
          : metaRead // ignore: cast_nullable_to_non_nullable
              as bool?,
      metaDelete: freezed == metaDelete
          ? _value.metaDelete
          : metaDelete // ignore: cast_nullable_to_non_nullable
              as bool?,
      metaUpdate: freezed == metaUpdate
          ? _value.metaUpdate
          : metaUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      metaCreate: freezed == metaCreate
          ? _value.metaCreate
          : metaCreate // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      kode: freezed == kode
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      value2: freezed == value2
          ? _value.value2
          : value2 // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataGeneralImplCopyWith<$Res>
    implements $DataGeneralCopyWith<$Res> {
  factory _$$DataGeneralImplCopyWith(
          _$DataGeneralImpl value, $Res Function(_$DataGeneralImpl) then) =
      __$$DataGeneralImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "meta_read") bool? metaRead,
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
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$DataGeneralImplCopyWithImpl<$Res>
    extends _$DataGeneralCopyWithImpl<$Res, _$DataGeneralImpl>
    implements _$$DataGeneralImplCopyWith<$Res> {
  __$$DataGeneralImplCopyWithImpl(
      _$DataGeneralImpl _value, $Res Function(_$DataGeneralImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metaRead = freezed,
    Object? metaDelete = freezed,
    Object? metaUpdate = freezed,
    Object? metaCreate = freezed,
    Object? id = freezed,
    Object? group = freezed,
    Object? key = freezed,
    Object? kode = freezed,
    Object? value = freezed,
    Object? value2 = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DataGeneralImpl(
      metaRead: freezed == metaRead
          ? _value.metaRead
          : metaRead // ignore: cast_nullable_to_non_nullable
              as bool?,
      metaDelete: freezed == metaDelete
          ? _value.metaDelete
          : metaDelete // ignore: cast_nullable_to_non_nullable
              as bool?,
      metaUpdate: freezed == metaUpdate
          ? _value.metaUpdate
          : metaUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      metaCreate: freezed == metaCreate
          ? _value.metaCreate
          : metaCreate // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      kode: freezed == kode
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      value2: freezed == value2
          ? _value.value2
          : value2 // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataGeneralImpl implements _DataGeneral {
  const _$DataGeneralImpl(
      {@JsonKey(name: "meta_read") this.metaRead,
      @JsonKey(name: "meta_delete") this.metaDelete,
      @JsonKey(name: "meta_update") this.metaUpdate,
      @JsonKey(name: "meta_create") this.metaCreate,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "group") this.group,
      @JsonKey(name: "key") this.key,
      @JsonKey(name: "kode") this.kode,
      @JsonKey(name: "value") this.value,
      @JsonKey(name: "value_2") this.value2,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$DataGeneralImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataGeneralImplFromJson(json);

  @override
  @JsonKey(name: "meta_read")
  final bool? metaRead;
  @override
  @JsonKey(name: "meta_delete")
  final bool? metaDelete;
  @override
  @JsonKey(name: "meta_update")
  final bool? metaUpdate;
  @override
  @JsonKey(name: "meta_create")
  final bool? metaCreate;
  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "group")
  final String? group;
  @override
  @JsonKey(name: "key")
  final String? key;
  @override
  @JsonKey(name: "kode")
  final String? kode;
  @override
  @JsonKey(name: "value")
  final String? value;
  @override
  @JsonKey(name: "value_2")
  final String? value2;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'DataGeneral(metaRead: $metaRead, metaDelete: $metaDelete, metaUpdate: $metaUpdate, metaCreate: $metaCreate, id: $id, group: $group, key: $key, kode: $kode, value: $value, value2: $value2, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataGeneralImpl &&
            (identical(other.metaRead, metaRead) ||
                other.metaRead == metaRead) &&
            (identical(other.metaDelete, metaDelete) ||
                other.metaDelete == metaDelete) &&
            (identical(other.metaUpdate, metaUpdate) ||
                other.metaUpdate == metaUpdate) &&
            (identical(other.metaCreate, metaCreate) ||
                other.metaCreate == metaCreate) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.kode, kode) || other.kode == kode) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.value2, value2) || other.value2 == value2) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      metaRead,
      metaDelete,
      metaUpdate,
      metaCreate,
      id,
      group,
      key,
      kode,
      value,
      value2,
      status,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataGeneralImplCopyWith<_$DataGeneralImpl> get copyWith =>
      __$$DataGeneralImplCopyWithImpl<_$DataGeneralImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataGeneralImplToJson(
      this,
    );
  }
}

abstract class _DataGeneral implements DataGeneral {
  const factory _DataGeneral(
          {@JsonKey(name: "meta_read") final bool? metaRead,
          @JsonKey(name: "meta_delete") final bool? metaDelete,
          @JsonKey(name: "meta_update") final bool? metaUpdate,
          @JsonKey(name: "meta_create") final bool? metaCreate,
          @JsonKey(name: "id") final int? id,
          @JsonKey(name: "group") final String? group,
          @JsonKey(name: "key") final String? key,
          @JsonKey(name: "kode") final String? kode,
          @JsonKey(name: "value") final String? value,
          @JsonKey(name: "value_2") final String? value2,
          @JsonKey(name: "status") final String? status,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "updated_at") final String? updatedAt}) =
      _$DataGeneralImpl;

  factory _DataGeneral.fromJson(Map<String, dynamic> json) =
      _$DataGeneralImpl.fromJson;

  @override
  @JsonKey(name: "meta_read")
  bool? get metaRead;
  @override
  @JsonKey(name: "meta_delete")
  bool? get metaDelete;
  @override
  @JsonKey(name: "meta_update")
  bool? get metaUpdate;
  @override
  @JsonKey(name: "meta_create")
  bool? get metaCreate;
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "group")
  String? get group;
  @override
  @JsonKey(name: "key")
  String? get key;
  @override
  @JsonKey(name: "kode")
  String? get kode;
  @override
  @JsonKey(name: "value")
  String? get value;
  @override
  @JsonKey(name: "value_2")
  String? get value2;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$DataGeneralImplCopyWith<_$DataGeneralImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
