// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_list_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseListPlan _$ResponseListPlanFromJson(Map<String, dynamic> json) {
  return _ResponseListPlan.fromJson(json);
}

/// @nodoc
mixin _$ResponseListPlan {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  dynamic get message => throw _privateConstructorUsedError;
  @JsonKey(name: "error")
  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataListPlan>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseListPlanCopyWith<ResponseListPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseListPlanCopyWith<$Res> {
  factory $ResponseListPlanCopyWith(
          ResponseListPlan value, $Res Function(ResponseListPlan) then) =
      _$ResponseListPlanCopyWithImpl<$Res, ResponseListPlan>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataListPlan>? data});
}

/// @nodoc
class _$ResponseListPlanCopyWithImpl<$Res, $Val extends ResponseListPlan>
    implements $ResponseListPlanCopyWith<$Res> {
  _$ResponseListPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataListPlan>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseListPlanImplCopyWith<$Res>
    implements $ResponseListPlanCopyWith<$Res> {
  factory _$$ResponseListPlanImplCopyWith(_$ResponseListPlanImpl value,
          $Res Function(_$ResponseListPlanImpl) then) =
      __$$ResponseListPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataListPlan>? data});
}

/// @nodoc
class __$$ResponseListPlanImplCopyWithImpl<$Res>
    extends _$ResponseListPlanCopyWithImpl<$Res, _$ResponseListPlanImpl>
    implements _$$ResponseListPlanImplCopyWith<$Res> {
  __$$ResponseListPlanImplCopyWithImpl(_$ResponseListPlanImpl _value,
      $Res Function(_$ResponseListPlanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseListPlanImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataListPlan>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseListPlanImpl implements _ResponseListPlan {
  const _$ResponseListPlanImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "error") this.error,
      @JsonKey(name: "data") final List<DataListPlan>? data})
      : _data = data;

  factory _$ResponseListPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseListPlanImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final dynamic message;
  @override
  @JsonKey(name: "error")
  final dynamic error;
  final List<DataListPlan>? _data;
  @override
  @JsonKey(name: "data")
  List<DataListPlan>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseListPlan(status: $status, message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseListPlanImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseListPlanImplCopyWith<_$ResponseListPlanImpl> get copyWith =>
      __$$ResponseListPlanImplCopyWithImpl<_$ResponseListPlanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseListPlanImplToJson(
      this,
    );
  }
}

abstract class _ResponseListPlan implements ResponseListPlan {
  const factory _ResponseListPlan(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "message") final dynamic message,
          @JsonKey(name: "error") final dynamic error,
          @JsonKey(name: "data") final List<DataListPlan>? data}) =
      _$ResponseListPlanImpl;

  factory _ResponseListPlan.fromJson(Map<String, dynamic> json) =
      _$ResponseListPlanImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "message")
  dynamic get message;
  @override
  @JsonKey(name: "error")
  dynamic get error;
  @override
  @JsonKey(name: "data")
  List<DataListPlan>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseListPlanImplCopyWith<_$ResponseListPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataListPlan _$DataListPlanFromJson(Map<String, dynamic> json) {
  return _DataListPlan.fromJson(json);
}

/// @nodoc
mixin _$DataListPlan {
  @JsonKey(name: "t_sales_activity_id")
  int? get tSalesActivityId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_id")
  int? get mCustId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_planing")
  bool? get isPlaning => throw _privateConstructorUsedError;
  @JsonKey(name: "plan_flag")
  String? get planGlag => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_name")
  String? get mCustName => throw _privateConstructorUsedError;
  @JsonKey(name: "plan_start")
  String? get planStart => throw _privateConstructorUsedError;
  @JsonKey(name: "plan_end")
  String? get planEnd => throw _privateConstructorUsedError;
  @JsonKey(name: "activity_type")
  String? get activityType => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_d_addr_name")
  String? get mCustDAddrName => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_d_addr_address")
  String? get mCustDAddrAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "jumlah_piutang")
  int? get jumlahPiutang => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataListPlanCopyWith<DataListPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataListPlanCopyWith<$Res> {
  factory $DataListPlanCopyWith(
          DataListPlan value, $Res Function(DataListPlan) then) =
      _$DataListPlanCopyWithImpl<$Res, DataListPlan>;
  @useResult
  $Res call(
      {@JsonKey(name: "t_sales_activity_id") int? tSalesActivityId,
      @JsonKey(name: "m_cust_id") int? mCustId,
      @JsonKey(name: "is_planing") bool? isPlaning,
      @JsonKey(name: "plan_flag") String? planGlag,
      @JsonKey(name: "m_cust_name") String? mCustName,
      @JsonKey(name: "plan_start") String? planStart,
      @JsonKey(name: "plan_end") String? planEnd,
      @JsonKey(name: "activity_type") String? activityType,
      @JsonKey(name: "m_cust_d_addr_name") String? mCustDAddrName,
      @JsonKey(name: "m_cust_d_addr_address") String? mCustDAddrAddress,
      @JsonKey(name: "jumlah_piutang") int? jumlahPiutang});
}

/// @nodoc
class _$DataListPlanCopyWithImpl<$Res, $Val extends DataListPlan>
    implements $DataListPlanCopyWith<$Res> {
  _$DataListPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tSalesActivityId = freezed,
    Object? mCustId = freezed,
    Object? isPlaning = freezed,
    Object? planGlag = freezed,
    Object? mCustName = freezed,
    Object? planStart = freezed,
    Object? planEnd = freezed,
    Object? activityType = freezed,
    Object? mCustDAddrName = freezed,
    Object? mCustDAddrAddress = freezed,
    Object? jumlahPiutang = freezed,
  }) {
    return _then(_value.copyWith(
      tSalesActivityId: freezed == tSalesActivityId
          ? _value.tSalesActivityId
          : tSalesActivityId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustId: freezed == mCustId
          ? _value.mCustId
          : mCustId // ignore: cast_nullable_to_non_nullable
              as int?,
      isPlaning: freezed == isPlaning
          ? _value.isPlaning
          : isPlaning // ignore: cast_nullable_to_non_nullable
              as bool?,
      planGlag: freezed == planGlag
          ? _value.planGlag
          : planGlag // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustName: freezed == mCustName
          ? _value.mCustName
          : mCustName // ignore: cast_nullable_to_non_nullable
              as String?,
      planStart: freezed == planStart
          ? _value.planStart
          : planStart // ignore: cast_nullable_to_non_nullable
              as String?,
      planEnd: freezed == planEnd
          ? _value.planEnd
          : planEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustDAddrName: freezed == mCustDAddrName
          ? _value.mCustDAddrName
          : mCustDAddrName // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustDAddrAddress: freezed == mCustDAddrAddress
          ? _value.mCustDAddrAddress
          : mCustDAddrAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlahPiutang: freezed == jumlahPiutang
          ? _value.jumlahPiutang
          : jumlahPiutang // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataListPlanImplCopyWith<$Res>
    implements $DataListPlanCopyWith<$Res> {
  factory _$$DataListPlanImplCopyWith(
          _$DataListPlanImpl value, $Res Function(_$DataListPlanImpl) then) =
      __$$DataListPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "t_sales_activity_id") int? tSalesActivityId,
      @JsonKey(name: "m_cust_id") int? mCustId,
      @JsonKey(name: "is_planing") bool? isPlaning,
      @JsonKey(name: "plan_flag") String? planGlag,
      @JsonKey(name: "m_cust_name") String? mCustName,
      @JsonKey(name: "plan_start") String? planStart,
      @JsonKey(name: "plan_end") String? planEnd,
      @JsonKey(name: "activity_type") String? activityType,
      @JsonKey(name: "m_cust_d_addr_name") String? mCustDAddrName,
      @JsonKey(name: "m_cust_d_addr_address") String? mCustDAddrAddress,
      @JsonKey(name: "jumlah_piutang") int? jumlahPiutang});
}

/// @nodoc
class __$$DataListPlanImplCopyWithImpl<$Res>
    extends _$DataListPlanCopyWithImpl<$Res, _$DataListPlanImpl>
    implements _$$DataListPlanImplCopyWith<$Res> {
  __$$DataListPlanImplCopyWithImpl(
      _$DataListPlanImpl _value, $Res Function(_$DataListPlanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tSalesActivityId = freezed,
    Object? mCustId = freezed,
    Object? isPlaning = freezed,
    Object? planGlag = freezed,
    Object? mCustName = freezed,
    Object? planStart = freezed,
    Object? planEnd = freezed,
    Object? activityType = freezed,
    Object? mCustDAddrName = freezed,
    Object? mCustDAddrAddress = freezed,
    Object? jumlahPiutang = freezed,
  }) {
    return _then(_$DataListPlanImpl(
      tSalesActivityId: freezed == tSalesActivityId
          ? _value.tSalesActivityId
          : tSalesActivityId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustId: freezed == mCustId
          ? _value.mCustId
          : mCustId // ignore: cast_nullable_to_non_nullable
              as int?,
      isPlaning: freezed == isPlaning
          ? _value.isPlaning
          : isPlaning // ignore: cast_nullable_to_non_nullable
              as bool?,
      planGlag: freezed == planGlag
          ? _value.planGlag
          : planGlag // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustName: freezed == mCustName
          ? _value.mCustName
          : mCustName // ignore: cast_nullable_to_non_nullable
              as String?,
      planStart: freezed == planStart
          ? _value.planStart
          : planStart // ignore: cast_nullable_to_non_nullable
              as String?,
      planEnd: freezed == planEnd
          ? _value.planEnd
          : planEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustDAddrName: freezed == mCustDAddrName
          ? _value.mCustDAddrName
          : mCustDAddrName // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustDAddrAddress: freezed == mCustDAddrAddress
          ? _value.mCustDAddrAddress
          : mCustDAddrAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlahPiutang: freezed == jumlahPiutang
          ? _value.jumlahPiutang
          : jumlahPiutang // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataListPlanImpl implements _DataListPlan {
  const _$DataListPlanImpl(
      {@JsonKey(name: "t_sales_activity_id") this.tSalesActivityId,
      @JsonKey(name: "m_cust_id") this.mCustId,
      @JsonKey(name: "is_planing") this.isPlaning,
      @JsonKey(name: "plan_flag") this.planGlag,
      @JsonKey(name: "m_cust_name") this.mCustName,
      @JsonKey(name: "plan_start") this.planStart,
      @JsonKey(name: "plan_end") this.planEnd,
      @JsonKey(name: "activity_type") this.activityType,
      @JsonKey(name: "m_cust_d_addr_name") this.mCustDAddrName,
      @JsonKey(name: "m_cust_d_addr_address") this.mCustDAddrAddress,
      @JsonKey(name: "jumlah_piutang") this.jumlahPiutang});

  factory _$DataListPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataListPlanImplFromJson(json);

  @override
  @JsonKey(name: "t_sales_activity_id")
  final int? tSalesActivityId;
  @override
  @JsonKey(name: "m_cust_id")
  final int? mCustId;
  @override
  @JsonKey(name: "is_planing")
  final bool? isPlaning;
  @override
  @JsonKey(name: "plan_flag")
  final String? planGlag;
  @override
  @JsonKey(name: "m_cust_name")
  final String? mCustName;
  @override
  @JsonKey(name: "plan_start")
  final String? planStart;
  @override
  @JsonKey(name: "plan_end")
  final String? planEnd;
  @override
  @JsonKey(name: "activity_type")
  final String? activityType;
  @override
  @JsonKey(name: "m_cust_d_addr_name")
  final String? mCustDAddrName;
  @override
  @JsonKey(name: "m_cust_d_addr_address")
  final String? mCustDAddrAddress;
  @override
  @JsonKey(name: "jumlah_piutang")
  final int? jumlahPiutang;

  @override
  String toString() {
    return 'DataListPlan(tSalesActivityId: $tSalesActivityId, mCustId: $mCustId, isPlaning: $isPlaning, planGlag: $planGlag, mCustName: $mCustName, planStart: $planStart, planEnd: $planEnd, activityType: $activityType, mCustDAddrName: $mCustDAddrName, mCustDAddrAddress: $mCustDAddrAddress, jumlahPiutang: $jumlahPiutang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataListPlanImpl &&
            (identical(other.tSalesActivityId, tSalesActivityId) ||
                other.tSalesActivityId == tSalesActivityId) &&
            (identical(other.mCustId, mCustId) || other.mCustId == mCustId) &&
            (identical(other.isPlaning, isPlaning) ||
                other.isPlaning == isPlaning) &&
            (identical(other.planGlag, planGlag) ||
                other.planGlag == planGlag) &&
            (identical(other.mCustName, mCustName) ||
                other.mCustName == mCustName) &&
            (identical(other.planStart, planStart) ||
                other.planStart == planStart) &&
            (identical(other.planEnd, planEnd) || other.planEnd == planEnd) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            (identical(other.mCustDAddrName, mCustDAddrName) ||
                other.mCustDAddrName == mCustDAddrName) &&
            (identical(other.mCustDAddrAddress, mCustDAddrAddress) ||
                other.mCustDAddrAddress == mCustDAddrAddress) &&
            (identical(other.jumlahPiutang, jumlahPiutang) ||
                other.jumlahPiutang == jumlahPiutang));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      tSalesActivityId,
      mCustId,
      isPlaning,
      planGlag,
      mCustName,
      planStart,
      planEnd,
      activityType,
      mCustDAddrName,
      mCustDAddrAddress,
      jumlahPiutang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataListPlanImplCopyWith<_$DataListPlanImpl> get copyWith =>
      __$$DataListPlanImplCopyWithImpl<_$DataListPlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataListPlanImplToJson(
      this,
    );
  }
}

abstract class _DataListPlan implements DataListPlan {
  const factory _DataListPlan(
      {@JsonKey(name: "t_sales_activity_id") final int? tSalesActivityId,
      @JsonKey(name: "m_cust_id") final int? mCustId,
      @JsonKey(name: "is_planing") final bool? isPlaning,
      @JsonKey(name: "plan_flag") final String? planGlag,
      @JsonKey(name: "m_cust_name") final String? mCustName,
      @JsonKey(name: "plan_start") final String? planStart,
      @JsonKey(name: "plan_end") final String? planEnd,
      @JsonKey(name: "activity_type") final String? activityType,
      @JsonKey(name: "m_cust_d_addr_name") final String? mCustDAddrName,
      @JsonKey(name: "m_cust_d_addr_address") final String? mCustDAddrAddress,
      @JsonKey(name: "jumlah_piutang")
      final int? jumlahPiutang}) = _$DataListPlanImpl;

  factory _DataListPlan.fromJson(Map<String, dynamic> json) =
      _$DataListPlanImpl.fromJson;

  @override
  @JsonKey(name: "t_sales_activity_id")
  int? get tSalesActivityId;
  @override
  @JsonKey(name: "m_cust_id")
  int? get mCustId;
  @override
  @JsonKey(name: "is_planing")
  bool? get isPlaning;
  @override
  @JsonKey(name: "plan_flag")
  String? get planGlag;
  @override
  @JsonKey(name: "m_cust_name")
  String? get mCustName;
  @override
  @JsonKey(name: "plan_start")
  String? get planStart;
  @override
  @JsonKey(name: "plan_end")
  String? get planEnd;
  @override
  @JsonKey(name: "activity_type")
  String? get activityType;
  @override
  @JsonKey(name: "m_cust_d_addr_name")
  String? get mCustDAddrName;
  @override
  @JsonKey(name: "m_cust_d_addr_address")
  String? get mCustDAddrAddress;
  @override
  @JsonKey(name: "jumlah_piutang")
  int? get jumlahPiutang;
  @override
  @JsonKey(ignore: true)
  _$$DataListPlanImplCopyWith<_$DataListPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
