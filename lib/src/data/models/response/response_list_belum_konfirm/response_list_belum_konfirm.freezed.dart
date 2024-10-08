// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_list_belum_konfirm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseListBelumKonfirm _$ResponseListBelumKonfirmFromJson(
    Map<String, dynamic> json) {
  return _ResponseListBelumKonfirm.fromJson(json);
}

/// @nodoc
mixin _$ResponseListBelumKonfirm {
  @JsonKey(name: "msg")
  String? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: "tbl")
  List<DataBelumKonfirm>? get dataBelumKonfirm =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseListBelumKonfirmCopyWith<ResponseListBelumKonfirm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseListBelumKonfirmCopyWith<$Res> {
  factory $ResponseListBelumKonfirmCopyWith(ResponseListBelumKonfirm value,
          $Res Function(ResponseListBelumKonfirm) then) =
      _$ResponseListBelumKonfirmCopyWithImpl<$Res, ResponseListBelumKonfirm>;
  @useResult
  $Res call(
      {@JsonKey(name: "msg") String? msg,
      @JsonKey(name: "tbl") List<DataBelumKonfirm>? dataBelumKonfirm});
}

/// @nodoc
class _$ResponseListBelumKonfirmCopyWithImpl<$Res,
        $Val extends ResponseListBelumKonfirm>
    implements $ResponseListBelumKonfirmCopyWith<$Res> {
  _$ResponseListBelumKonfirmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
    Object? dataBelumKonfirm = freezed,
  }) {
    return _then(_value.copyWith(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      dataBelumKonfirm: freezed == dataBelumKonfirm
          ? _value.dataBelumKonfirm
          : dataBelumKonfirm // ignore: cast_nullable_to_non_nullable
              as List<DataBelumKonfirm>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseListBelumKonfirmImplCopyWith<$Res>
    implements $ResponseListBelumKonfirmCopyWith<$Res> {
  factory _$$ResponseListBelumKonfirmImplCopyWith(
          _$ResponseListBelumKonfirmImpl value,
          $Res Function(_$ResponseListBelumKonfirmImpl) then) =
      __$$ResponseListBelumKonfirmImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "msg") String? msg,
      @JsonKey(name: "tbl") List<DataBelumKonfirm>? dataBelumKonfirm});
}

/// @nodoc
class __$$ResponseListBelumKonfirmImplCopyWithImpl<$Res>
    extends _$ResponseListBelumKonfirmCopyWithImpl<$Res,
        _$ResponseListBelumKonfirmImpl>
    implements _$$ResponseListBelumKonfirmImplCopyWith<$Res> {
  __$$ResponseListBelumKonfirmImplCopyWithImpl(
      _$ResponseListBelumKonfirmImpl _value,
      $Res Function(_$ResponseListBelumKonfirmImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
    Object? dataBelumKonfirm = freezed,
  }) {
    return _then(_$ResponseListBelumKonfirmImpl(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      dataBelumKonfirm: freezed == dataBelumKonfirm
          ? _value._dataBelumKonfirm
          : dataBelumKonfirm // ignore: cast_nullable_to_non_nullable
              as List<DataBelumKonfirm>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseListBelumKonfirmImpl implements _ResponseListBelumKonfirm {
  const _$ResponseListBelumKonfirmImpl(
      {@JsonKey(name: "msg") this.msg,
      @JsonKey(name: "tbl") final List<DataBelumKonfirm>? dataBelumKonfirm})
      : _dataBelumKonfirm = dataBelumKonfirm;

  factory _$ResponseListBelumKonfirmImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseListBelumKonfirmImplFromJson(json);

  @override
  @JsonKey(name: "msg")
  final String? msg;
  final List<DataBelumKonfirm>? _dataBelumKonfirm;
  @override
  @JsonKey(name: "tbl")
  List<DataBelumKonfirm>? get dataBelumKonfirm {
    final value = _dataBelumKonfirm;
    if (value == null) return null;
    if (_dataBelumKonfirm is EqualUnmodifiableListView)
      return _dataBelumKonfirm;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseListBelumKonfirm(msg: $msg, dataBelumKonfirm: $dataBelumKonfirm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseListBelumKonfirmImpl &&
            (identical(other.msg, msg) || other.msg == msg) &&
            const DeepCollectionEquality()
                .equals(other._dataBelumKonfirm, _dataBelumKonfirm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, msg, const DeepCollectionEquality().hash(_dataBelumKonfirm));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseListBelumKonfirmImplCopyWith<_$ResponseListBelumKonfirmImpl>
      get copyWith => __$$ResponseListBelumKonfirmImplCopyWithImpl<
          _$ResponseListBelumKonfirmImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseListBelumKonfirmImplToJson(
      this,
    );
  }
}

abstract class _ResponseListBelumKonfirm implements ResponseListBelumKonfirm {
  const factory _ResponseListBelumKonfirm(
          {@JsonKey(name: "msg") final String? msg,
          @JsonKey(name: "tbl")
          final List<DataBelumKonfirm>? dataBelumKonfirm}) =
      _$ResponseListBelumKonfirmImpl;

  factory _ResponseListBelumKonfirm.fromJson(Map<String, dynamic> json) =
      _$ResponseListBelumKonfirmImpl.fromJson;

  @override
  @JsonKey(name: "msg")
  String? get msg;
  @override
  @JsonKey(name: "tbl")
  List<DataBelumKonfirm>? get dataBelumKonfirm;
  @override
  @JsonKey(ignore: true)
  _$$ResponseListBelumKonfirmImplCopyWith<_$ResponseListBelumKonfirmImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataBelumKonfirm _$DataBelumKonfirmFromJson(Map<String, dynamic> json) {
  return _DataBelumKonfirm.fromJson(json);
}

/// @nodoc
mixin _$DataBelumKonfirm {
  @JsonKey(name: "t_do_h_id")
  int? get tDoHId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_do_no")
  String? get tDoNo => throw _privateConstructorUsedError;
  @JsonKey(name: "t_do_date")
  String? get tDoDate => throw _privateConstructorUsedError;
  @JsonKey(name: "t_dp_h_id")
  int? get tDpHId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_name")
  String? get mCustName => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_shipto_addr")
  String? get mCustShiptoAddr => throw _privateConstructorUsedError;
  @JsonKey(name: "m_user_id")
  int? get mUserId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_user_name")
  String? get mUserName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataBelumKonfirmCopyWith<DataBelumKonfirm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataBelumKonfirmCopyWith<$Res> {
  factory $DataBelumKonfirmCopyWith(
          DataBelumKonfirm value, $Res Function(DataBelumKonfirm) then) =
      _$DataBelumKonfirmCopyWithImpl<$Res, DataBelumKonfirm>;
  @useResult
  $Res call(
      {@JsonKey(name: "t_do_h_id") int? tDoHId,
      @JsonKey(name: "t_do_no") String? tDoNo,
      @JsonKey(name: "t_do_date") String? tDoDate,
      @JsonKey(name: "t_dp_h_id") int? tDpHId,
      @JsonKey(name: "m_cust_name") String? mCustName,
      @JsonKey(name: "m_cust_shipto_addr") String? mCustShiptoAddr,
      @JsonKey(name: "m_user_id") int? mUserId,
      @JsonKey(name: "m_user_name") String? mUserName});
}

/// @nodoc
class _$DataBelumKonfirmCopyWithImpl<$Res, $Val extends DataBelumKonfirm>
    implements $DataBelumKonfirmCopyWith<$Res> {
  _$DataBelumKonfirmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tDoHId = freezed,
    Object? tDoNo = freezed,
    Object? tDoDate = freezed,
    Object? tDpHId = freezed,
    Object? mCustName = freezed,
    Object? mCustShiptoAddr = freezed,
    Object? mUserId = freezed,
    Object? mUserName = freezed,
  }) {
    return _then(_value.copyWith(
      tDoHId: freezed == tDoHId
          ? _value.tDoHId
          : tDoHId // ignore: cast_nullable_to_non_nullable
              as int?,
      tDoNo: freezed == tDoNo
          ? _value.tDoNo
          : tDoNo // ignore: cast_nullable_to_non_nullable
              as String?,
      tDoDate: freezed == tDoDate
          ? _value.tDoDate
          : tDoDate // ignore: cast_nullable_to_non_nullable
              as String?,
      tDpHId: freezed == tDpHId
          ? _value.tDpHId
          : tDpHId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustName: freezed == mCustName
          ? _value.mCustName
          : mCustName // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustShiptoAddr: freezed == mCustShiptoAddr
          ? _value.mCustShiptoAddr
          : mCustShiptoAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      mUserId: freezed == mUserId
          ? _value.mUserId
          : mUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      mUserName: freezed == mUserName
          ? _value.mUserName
          : mUserName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataBelumKonfirmImplCopyWith<$Res>
    implements $DataBelumKonfirmCopyWith<$Res> {
  factory _$$DataBelumKonfirmImplCopyWith(_$DataBelumKonfirmImpl value,
          $Res Function(_$DataBelumKonfirmImpl) then) =
      __$$DataBelumKonfirmImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "t_do_h_id") int? tDoHId,
      @JsonKey(name: "t_do_no") String? tDoNo,
      @JsonKey(name: "t_do_date") String? tDoDate,
      @JsonKey(name: "t_dp_h_id") int? tDpHId,
      @JsonKey(name: "m_cust_name") String? mCustName,
      @JsonKey(name: "m_cust_shipto_addr") String? mCustShiptoAddr,
      @JsonKey(name: "m_user_id") int? mUserId,
      @JsonKey(name: "m_user_name") String? mUserName});
}

/// @nodoc
class __$$DataBelumKonfirmImplCopyWithImpl<$Res>
    extends _$DataBelumKonfirmCopyWithImpl<$Res, _$DataBelumKonfirmImpl>
    implements _$$DataBelumKonfirmImplCopyWith<$Res> {
  __$$DataBelumKonfirmImplCopyWithImpl(_$DataBelumKonfirmImpl _value,
      $Res Function(_$DataBelumKonfirmImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tDoHId = freezed,
    Object? tDoNo = freezed,
    Object? tDoDate = freezed,
    Object? tDpHId = freezed,
    Object? mCustName = freezed,
    Object? mCustShiptoAddr = freezed,
    Object? mUserId = freezed,
    Object? mUserName = freezed,
  }) {
    return _then(_$DataBelumKonfirmImpl(
      tDoHId: freezed == tDoHId
          ? _value.tDoHId
          : tDoHId // ignore: cast_nullable_to_non_nullable
              as int?,
      tDoNo: freezed == tDoNo
          ? _value.tDoNo
          : tDoNo // ignore: cast_nullable_to_non_nullable
              as String?,
      tDoDate: freezed == tDoDate
          ? _value.tDoDate
          : tDoDate // ignore: cast_nullable_to_non_nullable
              as String?,
      tDpHId: freezed == tDpHId
          ? _value.tDpHId
          : tDpHId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustName: freezed == mCustName
          ? _value.mCustName
          : mCustName // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustShiptoAddr: freezed == mCustShiptoAddr
          ? _value.mCustShiptoAddr
          : mCustShiptoAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      mUserId: freezed == mUserId
          ? _value.mUserId
          : mUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      mUserName: freezed == mUserName
          ? _value.mUserName
          : mUserName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataBelumKonfirmImpl implements _DataBelumKonfirm {
  const _$DataBelumKonfirmImpl(
      {@JsonKey(name: "t_do_h_id") this.tDoHId,
      @JsonKey(name: "t_do_no") this.tDoNo,
      @JsonKey(name: "t_do_date") this.tDoDate,
      @JsonKey(name: "t_dp_h_id") this.tDpHId,
      @JsonKey(name: "m_cust_name") this.mCustName,
      @JsonKey(name: "m_cust_shipto_addr") this.mCustShiptoAddr,
      @JsonKey(name: "m_user_id") this.mUserId,
      @JsonKey(name: "m_user_name") this.mUserName});

  factory _$DataBelumKonfirmImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataBelumKonfirmImplFromJson(json);

  @override
  @JsonKey(name: "t_do_h_id")
  final int? tDoHId;
  @override
  @JsonKey(name: "t_do_no")
  final String? tDoNo;
  @override
  @JsonKey(name: "t_do_date")
  final String? tDoDate;
  @override
  @JsonKey(name: "t_dp_h_id")
  final int? tDpHId;
  @override
  @JsonKey(name: "m_cust_name")
  final String? mCustName;
  @override
  @JsonKey(name: "m_cust_shipto_addr")
  final String? mCustShiptoAddr;
  @override
  @JsonKey(name: "m_user_id")
  final int? mUserId;
  @override
  @JsonKey(name: "m_user_name")
  final String? mUserName;

  @override
  String toString() {
    return 'DataBelumKonfirm(tDoHId: $tDoHId, tDoNo: $tDoNo, tDoDate: $tDoDate, tDpHId: $tDpHId, mCustName: $mCustName, mCustShiptoAddr: $mCustShiptoAddr, mUserId: $mUserId, mUserName: $mUserName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataBelumKonfirmImpl &&
            (identical(other.tDoHId, tDoHId) || other.tDoHId == tDoHId) &&
            (identical(other.tDoNo, tDoNo) || other.tDoNo == tDoNo) &&
            (identical(other.tDoDate, tDoDate) || other.tDoDate == tDoDate) &&
            (identical(other.tDpHId, tDpHId) || other.tDpHId == tDpHId) &&
            (identical(other.mCustName, mCustName) ||
                other.mCustName == mCustName) &&
            (identical(other.mCustShiptoAddr, mCustShiptoAddr) ||
                other.mCustShiptoAddr == mCustShiptoAddr) &&
            (identical(other.mUserId, mUserId) || other.mUserId == mUserId) &&
            (identical(other.mUserName, mUserName) ||
                other.mUserName == mUserName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tDoHId, tDoNo, tDoDate, tDpHId,
      mCustName, mCustShiptoAddr, mUserId, mUserName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataBelumKonfirmImplCopyWith<_$DataBelumKonfirmImpl> get copyWith =>
      __$$DataBelumKonfirmImplCopyWithImpl<_$DataBelumKonfirmImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataBelumKonfirmImplToJson(
      this,
    );
  }
}

abstract class _DataBelumKonfirm implements DataBelumKonfirm {
  const factory _DataBelumKonfirm(
          {@JsonKey(name: "t_do_h_id") final int? tDoHId,
          @JsonKey(name: "t_do_no") final String? tDoNo,
          @JsonKey(name: "t_do_date") final String? tDoDate,
          @JsonKey(name: "t_dp_h_id") final int? tDpHId,
          @JsonKey(name: "m_cust_name") final String? mCustName,
          @JsonKey(name: "m_cust_shipto_addr") final String? mCustShiptoAddr,
          @JsonKey(name: "m_user_id") final int? mUserId,
          @JsonKey(name: "m_user_name") final String? mUserName}) =
      _$DataBelumKonfirmImpl;

  factory _DataBelumKonfirm.fromJson(Map<String, dynamic> json) =
      _$DataBelumKonfirmImpl.fromJson;

  @override
  @JsonKey(name: "t_do_h_id")
  int? get tDoHId;
  @override
  @JsonKey(name: "t_do_no")
  String? get tDoNo;
  @override
  @JsonKey(name: "t_do_date")
  String? get tDoDate;
  @override
  @JsonKey(name: "t_dp_h_id")
  int? get tDpHId;
  @override
  @JsonKey(name: "m_cust_name")
  String? get mCustName;
  @override
  @JsonKey(name: "m_cust_shipto_addr")
  String? get mCustShiptoAddr;
  @override
  @JsonKey(name: "m_user_id")
  int? get mUserId;
  @override
  @JsonKey(name: "m_user_name")
  String? get mUserName;
  @override
  @JsonKey(ignore: true)
  _$$DataBelumKonfirmImplCopyWith<_$DataBelumKonfirmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListSelectDO _$ListSelectDOFromJson(Map<String, dynamic> json) {
  return _ListSelectDO.fromJson(json);
}

/// @nodoc
mixin _$ListSelectDO {
  bool get isSelected => throw _privateConstructorUsedError;
  DataBelumKonfirm? get dataBelumKonfirm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListSelectDOCopyWith<ListSelectDO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListSelectDOCopyWith<$Res> {
  factory $ListSelectDOCopyWith(
          ListSelectDO value, $Res Function(ListSelectDO) then) =
      _$ListSelectDOCopyWithImpl<$Res, ListSelectDO>;
  @useResult
  $Res call({bool isSelected, DataBelumKonfirm? dataBelumKonfirm});

  $DataBelumKonfirmCopyWith<$Res>? get dataBelumKonfirm;
}

/// @nodoc
class _$ListSelectDOCopyWithImpl<$Res, $Val extends ListSelectDO>
    implements $ListSelectDOCopyWith<$Res> {
  _$ListSelectDOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
    Object? dataBelumKonfirm = freezed,
  }) {
    return _then(_value.copyWith(
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      dataBelumKonfirm: freezed == dataBelumKonfirm
          ? _value.dataBelumKonfirm
          : dataBelumKonfirm // ignore: cast_nullable_to_non_nullable
              as DataBelumKonfirm?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataBelumKonfirmCopyWith<$Res>? get dataBelumKonfirm {
    if (_value.dataBelumKonfirm == null) {
      return null;
    }

    return $DataBelumKonfirmCopyWith<$Res>(_value.dataBelumKonfirm!, (value) {
      return _then(_value.copyWith(dataBelumKonfirm: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListSelectDOImplCopyWith<$Res>
    implements $ListSelectDOCopyWith<$Res> {
  factory _$$ListSelectDOImplCopyWith(
          _$ListSelectDOImpl value, $Res Function(_$ListSelectDOImpl) then) =
      __$$ListSelectDOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSelected, DataBelumKonfirm? dataBelumKonfirm});

  @override
  $DataBelumKonfirmCopyWith<$Res>? get dataBelumKonfirm;
}

/// @nodoc
class __$$ListSelectDOImplCopyWithImpl<$Res>
    extends _$ListSelectDOCopyWithImpl<$Res, _$ListSelectDOImpl>
    implements _$$ListSelectDOImplCopyWith<$Res> {
  __$$ListSelectDOImplCopyWithImpl(
      _$ListSelectDOImpl _value, $Res Function(_$ListSelectDOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
    Object? dataBelumKonfirm = freezed,
  }) {
    return _then(_$ListSelectDOImpl(
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      dataBelumKonfirm: freezed == dataBelumKonfirm
          ? _value.dataBelumKonfirm
          : dataBelumKonfirm // ignore: cast_nullable_to_non_nullable
              as DataBelumKonfirm?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListSelectDOImpl implements _ListSelectDO {
  const _$ListSelectDOImpl({this.isSelected = false, this.dataBelumKonfirm});

  factory _$ListSelectDOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListSelectDOImplFromJson(json);

  @override
  @JsonKey()
  final bool isSelected;
  @override
  final DataBelumKonfirm? dataBelumKonfirm;

  @override
  String toString() {
    return 'ListSelectDO(isSelected: $isSelected, dataBelumKonfirm: $dataBelumKonfirm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListSelectDOImpl &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.dataBelumKonfirm, dataBelumKonfirm) ||
                other.dataBelumKonfirm == dataBelumKonfirm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isSelected, dataBelumKonfirm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListSelectDOImplCopyWith<_$ListSelectDOImpl> get copyWith =>
      __$$ListSelectDOImplCopyWithImpl<_$ListSelectDOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListSelectDOImplToJson(
      this,
    );
  }
}

abstract class _ListSelectDO implements ListSelectDO {
  const factory _ListSelectDO(
      {final bool isSelected,
      final DataBelumKonfirm? dataBelumKonfirm}) = _$ListSelectDOImpl;

  factory _ListSelectDO.fromJson(Map<String, dynamic> json) =
      _$ListSelectDOImpl.fromJson;

  @override
  bool get isSelected;
  @override
  DataBelumKonfirm? get dataBelumKonfirm;
  @override
  @JsonKey(ignore: true)
  _$$ListSelectDOImplCopyWith<_$ListSelectDOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
