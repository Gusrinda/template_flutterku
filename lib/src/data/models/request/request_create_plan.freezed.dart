// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_create_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestCreatePlan _$RequestCreatePlanFromJson(Map<String, dynamic> json) {
  return _RequestCreatePlan.fromJson(json);
}

/// @nodoc
mixin _$RequestCreatePlan {
  @JsonKey(name: "t_sales_activity_id")
  int? get tSalesActivityId => throw _privateConstructorUsedError;
  @JsonKey(name: "plan_start")
  String? get planStart => throw _privateConstructorUsedError;
  @JsonKey(name: "plan_end")
  String? get planEnd => throw _privateConstructorUsedError;
  @JsonKey(name: "activity_type")
  String? get activityType => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_id")
  int? get mCustId => throw _privateConstructorUsedError;
  @JsonKey(name: "is_planing")
  bool? get isPlanning => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_d_addr_id")
  int? get mCustDAddrId => throw _privateConstructorUsedError;
  @JsonKey(name: "plan_start_time")
  String? get planStartTime => throw _privateConstructorUsedError;
  @JsonKey(name: "t_sales_activity_note")
  String? get tSalesActivityNote => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestCreatePlanCopyWith<RequestCreatePlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCreatePlanCopyWith<$Res> {
  factory $RequestCreatePlanCopyWith(
          RequestCreatePlan value, $Res Function(RequestCreatePlan) then) =
      _$RequestCreatePlanCopyWithImpl<$Res, RequestCreatePlan>;
  @useResult
  $Res call(
      {@JsonKey(name: "t_sales_activity_id") int? tSalesActivityId,
      @JsonKey(name: "plan_start") String? planStart,
      @JsonKey(name: "plan_end") String? planEnd,
      @JsonKey(name: "activity_type") String? activityType,
      @JsonKey(name: "m_cust_id") int? mCustId,
      @JsonKey(name: "is_planing") bool? isPlanning,
      @JsonKey(name: "m_cust_d_addr_id") int? mCustDAddrId,
      @JsonKey(name: "plan_start_time") String? planStartTime,
      @JsonKey(name: "t_sales_activity_note") String? tSalesActivityNote});
}

/// @nodoc
class _$RequestCreatePlanCopyWithImpl<$Res, $Val extends RequestCreatePlan>
    implements $RequestCreatePlanCopyWith<$Res> {
  _$RequestCreatePlanCopyWithImpl(this._value, this._then);

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
    Object? mCustId = freezed,
    Object? isPlanning = freezed,
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
      mCustId: freezed == mCustId
          ? _value.mCustId
          : mCustId // ignore: cast_nullable_to_non_nullable
              as int?,
      isPlanning: freezed == isPlanning
          ? _value.isPlanning
          : isPlanning // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$$RequestCreatePlanImplCopyWith<$Res>
    implements $RequestCreatePlanCopyWith<$Res> {
  factory _$$RequestCreatePlanImplCopyWith(_$RequestCreatePlanImpl value,
          $Res Function(_$RequestCreatePlanImpl) then) =
      __$$RequestCreatePlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "t_sales_activity_id") int? tSalesActivityId,
      @JsonKey(name: "plan_start") String? planStart,
      @JsonKey(name: "plan_end") String? planEnd,
      @JsonKey(name: "activity_type") String? activityType,
      @JsonKey(name: "m_cust_id") int? mCustId,
      @JsonKey(name: "is_planing") bool? isPlanning,
      @JsonKey(name: "m_cust_d_addr_id") int? mCustDAddrId,
      @JsonKey(name: "plan_start_time") String? planStartTime,
      @JsonKey(name: "t_sales_activity_note") String? tSalesActivityNote});
}

/// @nodoc
class __$$RequestCreatePlanImplCopyWithImpl<$Res>
    extends _$RequestCreatePlanCopyWithImpl<$Res, _$RequestCreatePlanImpl>
    implements _$$RequestCreatePlanImplCopyWith<$Res> {
  __$$RequestCreatePlanImplCopyWithImpl(_$RequestCreatePlanImpl _value,
      $Res Function(_$RequestCreatePlanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tSalesActivityId = freezed,
    Object? planStart = freezed,
    Object? planEnd = freezed,
    Object? activityType = freezed,
    Object? mCustId = freezed,
    Object? isPlanning = freezed,
    Object? mCustDAddrId = freezed,
    Object? planStartTime = freezed,
    Object? tSalesActivityNote = freezed,
  }) {
    return _then(_$RequestCreatePlanImpl(
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
      mCustId: freezed == mCustId
          ? _value.mCustId
          : mCustId // ignore: cast_nullable_to_non_nullable
              as int?,
      isPlanning: freezed == isPlanning
          ? _value.isPlanning
          : isPlanning // ignore: cast_nullable_to_non_nullable
              as bool?,
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
class _$RequestCreatePlanImpl implements _RequestCreatePlan {
  const _$RequestCreatePlanImpl(
      {@JsonKey(name: "t_sales_activity_id") this.tSalesActivityId,
      @JsonKey(name: "plan_start") this.planStart,
      @JsonKey(name: "plan_end") this.planEnd,
      @JsonKey(name: "activity_type") this.activityType,
      @JsonKey(name: "m_cust_id") this.mCustId,
      @JsonKey(name: "is_planing") this.isPlanning,
      @JsonKey(name: "m_cust_d_addr_id") this.mCustDAddrId,
      @JsonKey(name: "plan_start_time") this.planStartTime,
      @JsonKey(name: "t_sales_activity_note") this.tSalesActivityNote});

  factory _$RequestCreatePlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestCreatePlanImplFromJson(json);

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
  @JsonKey(name: "m_cust_id")
  final int? mCustId;
  @override
  @JsonKey(name: "is_planing")
  final bool? isPlanning;
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
    return 'RequestCreatePlan(tSalesActivityId: $tSalesActivityId, planStart: $planStart, planEnd: $planEnd, activityType: $activityType, mCustId: $mCustId, isPlanning: $isPlanning, mCustDAddrId: $mCustDAddrId, planStartTime: $planStartTime, tSalesActivityNote: $tSalesActivityNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCreatePlanImpl &&
            (identical(other.tSalesActivityId, tSalesActivityId) ||
                other.tSalesActivityId == tSalesActivityId) &&
            (identical(other.planStart, planStart) ||
                other.planStart == planStart) &&
            (identical(other.planEnd, planEnd) || other.planEnd == planEnd) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            (identical(other.mCustId, mCustId) || other.mCustId == mCustId) &&
            (identical(other.isPlanning, isPlanning) ||
                other.isPlanning == isPlanning) &&
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
      mCustId,
      isPlanning,
      mCustDAddrId,
      planStartTime,
      tSalesActivityNote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCreatePlanImplCopyWith<_$RequestCreatePlanImpl> get copyWith =>
      __$$RequestCreatePlanImplCopyWithImpl<_$RequestCreatePlanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestCreatePlanImplToJson(
      this,
    );
  }
}

abstract class _RequestCreatePlan implements RequestCreatePlan {
  const factory _RequestCreatePlan(
      {@JsonKey(name: "t_sales_activity_id") final int? tSalesActivityId,
      @JsonKey(name: "plan_start") final String? planStart,
      @JsonKey(name: "plan_end") final String? planEnd,
      @JsonKey(name: "activity_type") final String? activityType,
      @JsonKey(name: "m_cust_id") final int? mCustId,
      @JsonKey(name: "is_planing") final bool? isPlanning,
      @JsonKey(name: "m_cust_d_addr_id") final int? mCustDAddrId,
      @JsonKey(name: "plan_start_time") final String? planStartTime,
      @JsonKey(name: "t_sales_activity_note")
      final String? tSalesActivityNote}) = _$RequestCreatePlanImpl;

  factory _RequestCreatePlan.fromJson(Map<String, dynamic> json) =
      _$RequestCreatePlanImpl.fromJson;

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
  @JsonKey(name: "m_cust_id")
  int? get mCustId;
  @override
  @JsonKey(name: "is_planing")
  bool? get isPlanning;
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
  _$$RequestCreatePlanImplCopyWith<_$RequestCreatePlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
