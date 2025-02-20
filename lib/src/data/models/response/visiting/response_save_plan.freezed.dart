// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_save_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseSavePlan _$ResponseSavePlanFromJson(Map<String, dynamic> json) {
  return _ResponseSavePlan.fromJson(json);
}

/// @nodoc
mixin _$ResponseSavePlan {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "error")
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseSavePlanCopyWith<ResponseSavePlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseSavePlanCopyWith<$Res> {
  factory $ResponseSavePlanCopyWith(
          ResponseSavePlan value, $Res Function(ResponseSavePlan) then) =
      _$ResponseSavePlanCopyWithImpl<$Res, ResponseSavePlan>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "error") String? error,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResponseSavePlanCopyWithImpl<$Res, $Val extends ResponseSavePlan>
    implements $ResponseSavePlanCopyWith<$Res> {
  _$ResponseSavePlanCopyWithImpl(this._value, this._then);

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
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseSavePlanImplCopyWith<$Res>
    implements $ResponseSavePlanCopyWith<$Res> {
  factory _$$ResponseSavePlanImplCopyWith(_$ResponseSavePlanImpl value,
          $Res Function(_$ResponseSavePlanImpl) then) =
      __$$ResponseSavePlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "error") String? error,
      @JsonKey(name: "data") Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ResponseSavePlanImplCopyWithImpl<$Res>
    extends _$ResponseSavePlanCopyWithImpl<$Res, _$ResponseSavePlanImpl>
    implements _$$ResponseSavePlanImplCopyWith<$Res> {
  __$$ResponseSavePlanImplCopyWithImpl(_$ResponseSavePlanImpl _value,
      $Res Function(_$ResponseSavePlanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseSavePlanImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseSavePlanImpl implements _ResponseSavePlan {
  const _$ResponseSavePlanImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "error") this.error,
      @JsonKey(name: "data") this.data});

  factory _$ResponseSavePlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseSavePlanImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "error")
  final String? error;
  @override
  @JsonKey(name: "data")
  final Data? data;

  @override
  String toString() {
    return 'ResponseSavePlan(status: $status, message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseSavePlanImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, error, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseSavePlanImplCopyWith<_$ResponseSavePlanImpl> get copyWith =>
      __$$ResponseSavePlanImplCopyWithImpl<_$ResponseSavePlanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseSavePlanImplToJson(
      this,
    );
  }
}

abstract class _ResponseSavePlan implements ResponseSavePlan {
  const factory _ResponseSavePlan(
      {@JsonKey(name: "status") final String? status,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "error") final String? error,
      @JsonKey(name: "data") final Data? data}) = _$ResponseSavePlanImpl;

  factory _ResponseSavePlan.fromJson(Map<String, dynamic> json) =
      _$ResponseSavePlanImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "error")
  String? get error;
  @override
  @JsonKey(name: "data")
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseSavePlanImplCopyWith<_$ResponseSavePlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "t_sales_activity_id")
  int? get tSalesActivityId => throw _privateConstructorUsedError;
  @JsonKey(name: "plan_start")
  String? get planStart => throw _privateConstructorUsedError;
  @JsonKey(name: "plan_end")
  String? get planEnd => throw _privateConstructorUsedError;
  @JsonKey(name: "activity_type")
  String? get activityType => throw _privateConstructorUsedError;
  @JsonKey(name: "is_planing")
  bool? get isPlaning => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_id")
  int? get mCustId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_d_addr_id")
  int? get mCustDAddrId => throw _privateConstructorUsedError;
  @JsonKey(name: "plan_start_time")
  String? get planStartTime => throw _privateConstructorUsedError;
  @JsonKey(name: "t_sales_activity_note")
  String? get tSalesActivityNote => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "t_sales_activity_id") int? tSalesActivityId,
      @JsonKey(name: "plan_start") String? planStart,
      @JsonKey(name: "plan_end") String? planEnd,
      @JsonKey(name: "activity_type") String? activityType,
      @JsonKey(name: "is_planing") bool? isPlaning,
      @JsonKey(name: "m_cust_id") int? mCustId,
      @JsonKey(name: "m_cust_d_addr_id") int? mCustDAddrId,
      @JsonKey(name: "plan_start_time") String? planStartTime,
      @JsonKey(name: "t_sales_activity_note") String? tSalesActivityNote});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tSalesActivityId = freezed,
    Object? planStart = freezed,
    Object? planEnd = freezed,
    Object? activityType = freezed,
    Object? isPlaning = freezed,
    Object? mCustId = freezed,
    Object? mCustDAddrId = freezed,
    Object? planStartTime = freezed,
    Object? tSalesActivityNote = freezed,
  }) {
    return _then(_value.copyWith(
      tSalesActivityId: freezed == tSalesActivityId
          ? _value.tSalesActivityId
          : tSalesActivityId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      isPlaning: freezed == isPlaning
          ? _value.isPlaning
          : isPlaning // ignore: cast_nullable_to_non_nullable
              as bool?,
      mCustId: freezed == mCustId
          ? _value.mCustId
          : mCustId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustDAddrId: freezed == mCustDAddrId
          ? _value.mCustDAddrId
          : mCustDAddrId // ignore: cast_nullable_to_non_nullable
              as int?,
      planStartTime: freezed == planStartTime
          ? _value.planStartTime
          : planStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      tSalesActivityNote: freezed == tSalesActivityNote
          ? _value.tSalesActivityNote
          : tSalesActivityNote // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "t_sales_activity_id") int? tSalesActivityId,
      @JsonKey(name: "plan_start") String? planStart,
      @JsonKey(name: "plan_end") String? planEnd,
      @JsonKey(name: "activity_type") String? activityType,
      @JsonKey(name: "is_planing") bool? isPlaning,
      @JsonKey(name: "m_cust_id") int? mCustId,
      @JsonKey(name: "m_cust_d_addr_id") int? mCustDAddrId,
      @JsonKey(name: "plan_start_time") String? planStartTime,
      @JsonKey(name: "t_sales_activity_note") String? tSalesActivityNote});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tSalesActivityId = freezed,
    Object? planStart = freezed,
    Object? planEnd = freezed,
    Object? activityType = freezed,
    Object? isPlaning = freezed,
    Object? mCustId = freezed,
    Object? mCustDAddrId = freezed,
    Object? planStartTime = freezed,
    Object? tSalesActivityNote = freezed,
  }) {
    return _then(_$DataImpl(
      tSalesActivityId: freezed == tSalesActivityId
          ? _value.tSalesActivityId
          : tSalesActivityId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      isPlaning: freezed == isPlaning
          ? _value.isPlaning
          : isPlaning // ignore: cast_nullable_to_non_nullable
              as bool?,
      mCustId: freezed == mCustId
          ? _value.mCustId
          : mCustId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustDAddrId: freezed == mCustDAddrId
          ? _value.mCustDAddrId
          : mCustDAddrId // ignore: cast_nullable_to_non_nullable
              as int?,
      planStartTime: freezed == planStartTime
          ? _value.planStartTime
          : planStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      tSalesActivityNote: freezed == tSalesActivityNote
          ? _value.tSalesActivityNote
          : tSalesActivityNote // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "t_sales_activity_id") this.tSalesActivityId,
      @JsonKey(name: "plan_start") this.planStart,
      @JsonKey(name: "plan_end") this.planEnd,
      @JsonKey(name: "activity_type") this.activityType,
      @JsonKey(name: "is_planing") this.isPlaning,
      @JsonKey(name: "m_cust_id") this.mCustId,
      @JsonKey(name: "m_cust_d_addr_id") this.mCustDAddrId,
      @JsonKey(name: "plan_start_time") this.planStartTime,
      @JsonKey(name: "t_sales_activity_note") this.tSalesActivityNote});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "t_sales_activity_id")
  final int? tSalesActivityId;
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
  @JsonKey(name: "is_planing")
  final bool? isPlaning;
  @override
  @JsonKey(name: "m_cust_id")
  final int? mCustId;
  @override
  @JsonKey(name: "m_cust_d_addr_id")
  final int? mCustDAddrId;
  @override
  @JsonKey(name: "plan_start_time")
  final String? planStartTime;
  @override
  @JsonKey(name: "t_sales_activity_note")
  final String? tSalesActivityNote;

  @override
  String toString() {
    return 'Data(tSalesActivityId: $tSalesActivityId, planStart: $planStart, planEnd: $planEnd, activityType: $activityType, isPlaning: $isPlaning, mCustId: $mCustId, mCustDAddrId: $mCustDAddrId, planStartTime: $planStartTime, tSalesActivityNote: $tSalesActivityNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.tSalesActivityId, tSalesActivityId) ||
                other.tSalesActivityId == tSalesActivityId) &&
            (identical(other.planStart, planStart) ||
                other.planStart == planStart) &&
            (identical(other.planEnd, planEnd) || other.planEnd == planEnd) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            (identical(other.isPlaning, isPlaning) ||
                other.isPlaning == isPlaning) &&
            (identical(other.mCustId, mCustId) || other.mCustId == mCustId) &&
            (identical(other.mCustDAddrId, mCustDAddrId) ||
                other.mCustDAddrId == mCustDAddrId) &&
            (identical(other.planStartTime, planStartTime) ||
                other.planStartTime == planStartTime) &&
            (identical(other.tSalesActivityNote, tSalesActivityNote) ||
                other.tSalesActivityNote == tSalesActivityNote));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      tSalesActivityId,
      planStart,
      planEnd,
      activityType,
      isPlaning,
      mCustId,
      mCustDAddrId,
      planStartTime,
      tSalesActivityNote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "t_sales_activity_id") final int? tSalesActivityId,
      @JsonKey(name: "plan_start") final String? planStart,
      @JsonKey(name: "plan_end") final String? planEnd,
      @JsonKey(name: "activity_type") final String? activityType,
      @JsonKey(name: "is_planing") final bool? isPlaning,
      @JsonKey(name: "m_cust_id") final int? mCustId,
      @JsonKey(name: "m_cust_d_addr_id") final int? mCustDAddrId,
      @JsonKey(name: "plan_start_time") final String? planStartTime,
      @JsonKey(name: "t_sales_activity_note")
      final String? tSalesActivityNote}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "t_sales_activity_id")
  int? get tSalesActivityId;
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
  @JsonKey(name: "is_planing")
  bool? get isPlaning;
  @override
  @JsonKey(name: "m_cust_id")
  int? get mCustId;
  @override
  @JsonKey(name: "m_cust_d_addr_id")
  int? get mCustDAddrId;
  @override
  @JsonKey(name: "plan_start_time")
  String? get planStartTime;
  @override
  @JsonKey(name: "t_sales_activity_note")
  String? get tSalesActivityNote;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
