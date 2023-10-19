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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_ResponseListBelumKonfirmCopyWith<$Res>
    implements $ResponseListBelumKonfirmCopyWith<$Res> {
  factory _$$_ResponseListBelumKonfirmCopyWith(
          _$_ResponseListBelumKonfirm value,
          $Res Function(_$_ResponseListBelumKonfirm) then) =
      __$$_ResponseListBelumKonfirmCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "msg") String? msg,
      @JsonKey(name: "tbl") List<DataBelumKonfirm>? dataBelumKonfirm});
}

/// @nodoc
class __$$_ResponseListBelumKonfirmCopyWithImpl<$Res>
    extends _$ResponseListBelumKonfirmCopyWithImpl<$Res,
        _$_ResponseListBelumKonfirm>
    implements _$$_ResponseListBelumKonfirmCopyWith<$Res> {
  __$$_ResponseListBelumKonfirmCopyWithImpl(_$_ResponseListBelumKonfirm _value,
      $Res Function(_$_ResponseListBelumKonfirm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
    Object? dataBelumKonfirm = freezed,
  }) {
    return _then(_$_ResponseListBelumKonfirm(
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
class _$_ResponseListBelumKonfirm implements _ResponseListBelumKonfirm {
  const _$_ResponseListBelumKonfirm(
      {@JsonKey(name: "msg") this.msg,
      @JsonKey(name: "tbl") final List<DataBelumKonfirm>? dataBelumKonfirm})
      : _dataBelumKonfirm = dataBelumKonfirm;

  factory _$_ResponseListBelumKonfirm.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseListBelumKonfirmFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseListBelumKonfirm &&
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
  _$$_ResponseListBelumKonfirmCopyWith<_$_ResponseListBelumKonfirm>
      get copyWith => __$$_ResponseListBelumKonfirmCopyWithImpl<
          _$_ResponseListBelumKonfirm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseListBelumKonfirmToJson(
      this,
    );
  }
}

abstract class _ResponseListBelumKonfirm implements ResponseListBelumKonfirm {
  const factory _ResponseListBelumKonfirm(
          {@JsonKey(name: "msg") final String? msg,
          @JsonKey(name: "tbl")
          final List<DataBelumKonfirm>? dataBelumKonfirm}) =
      _$_ResponseListBelumKonfirm;

  factory _ResponseListBelumKonfirm.fromJson(Map<String, dynamic> json) =
      _$_ResponseListBelumKonfirm.fromJson;

  @override
  @JsonKey(name: "msg")
  String? get msg;
  @override
  @JsonKey(name: "tbl")
  List<DataBelumKonfirm>? get dataBelumKonfirm;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseListBelumKonfirmCopyWith<_$_ResponseListBelumKonfirm>
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
abstract class _$$_DataBelumKonfirmCopyWith<$Res>
    implements $DataBelumKonfirmCopyWith<$Res> {
  factory _$$_DataBelumKonfirmCopyWith(
          _$_DataBelumKonfirm value, $Res Function(_$_DataBelumKonfirm) then) =
      __$$_DataBelumKonfirmCopyWithImpl<$Res>;
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
class __$$_DataBelumKonfirmCopyWithImpl<$Res>
    extends _$DataBelumKonfirmCopyWithImpl<$Res, _$_DataBelumKonfirm>
    implements _$$_DataBelumKonfirmCopyWith<$Res> {
  __$$_DataBelumKonfirmCopyWithImpl(
      _$_DataBelumKonfirm _value, $Res Function(_$_DataBelumKonfirm) _then)
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
    return _then(_$_DataBelumKonfirm(
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
class _$_DataBelumKonfirm implements _DataBelumKonfirm {
  const _$_DataBelumKonfirm(
      {@JsonKey(name: "t_do_h_id") this.tDoHId,
      @JsonKey(name: "t_do_no") this.tDoNo,
      @JsonKey(name: "t_do_date") this.tDoDate,
      @JsonKey(name: "t_dp_h_id") this.tDpHId,
      @JsonKey(name: "m_cust_name") this.mCustName,
      @JsonKey(name: "m_cust_shipto_addr") this.mCustShiptoAddr,
      @JsonKey(name: "m_user_id") this.mUserId,
      @JsonKey(name: "m_user_name") this.mUserName});

  factory _$_DataBelumKonfirm.fromJson(Map<String, dynamic> json) =>
      _$$_DataBelumKonfirmFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataBelumKonfirm &&
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
  _$$_DataBelumKonfirmCopyWith<_$_DataBelumKonfirm> get copyWith =>
      __$$_DataBelumKonfirmCopyWithImpl<_$_DataBelumKonfirm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataBelumKonfirmToJson(
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
      _$_DataBelumKonfirm;

  factory _DataBelumKonfirm.fromJson(Map<String, dynamic> json) =
      _$_DataBelumKonfirm.fromJson;

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
  _$$_DataBelumKonfirmCopyWith<_$_DataBelumKonfirm> get copyWith =>
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
abstract class _$$_ListSelectDOCopyWith<$Res>
    implements $ListSelectDOCopyWith<$Res> {
  factory _$$_ListSelectDOCopyWith(
          _$_ListSelectDO value, $Res Function(_$_ListSelectDO) then) =
      __$$_ListSelectDOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSelected, DataBelumKonfirm? dataBelumKonfirm});

  @override
  $DataBelumKonfirmCopyWith<$Res>? get dataBelumKonfirm;
}

/// @nodoc
class __$$_ListSelectDOCopyWithImpl<$Res>
    extends _$ListSelectDOCopyWithImpl<$Res, _$_ListSelectDO>
    implements _$$_ListSelectDOCopyWith<$Res> {
  __$$_ListSelectDOCopyWithImpl(
      _$_ListSelectDO _value, $Res Function(_$_ListSelectDO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
    Object? dataBelumKonfirm = freezed,
  }) {
    return _then(_$_ListSelectDO(
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
class _$_ListSelectDO implements _ListSelectDO {
  const _$_ListSelectDO({this.isSelected = false, this.dataBelumKonfirm});

  factory _$_ListSelectDO.fromJson(Map<String, dynamic> json) =>
      _$$_ListSelectDOFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListSelectDO &&
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
  _$$_ListSelectDOCopyWith<_$_ListSelectDO> get copyWith =>
      __$$_ListSelectDOCopyWithImpl<_$_ListSelectDO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListSelectDOToJson(
      this,
    );
  }
}

abstract class _ListSelectDO implements ListSelectDO {
  const factory _ListSelectDO(
      {final bool isSelected,
      final DataBelumKonfirm? dataBelumKonfirm}) = _$_ListSelectDO;

  factory _ListSelectDO.fromJson(Map<String, dynamic> json) =
      _$_ListSelectDO.fromJson;

  @override
  bool get isSelected;
  @override
  DataBelumKonfirm? get dataBelumKonfirm;
  @override
  @JsonKey(ignore: true)
  _$$_ListSelectDOCopyWith<_$_ListSelectDO> get copyWith =>
      throw _privateConstructorUsedError;
}
