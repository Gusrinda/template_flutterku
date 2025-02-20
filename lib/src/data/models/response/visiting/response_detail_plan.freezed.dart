// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_detail_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseDetailPlan _$ResponseDetailPlanFromJson(Map<String, dynamic> json) {
  return _ResponseDetailPlan.fromJson(json);
}

/// @nodoc
mixin _$ResponseDetailPlan {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  dynamic get message => throw _privateConstructorUsedError;
  @JsonKey(name: "error")
  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  DataDetailPlan? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDetailPlanCopyWith<ResponseDetailPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDetailPlanCopyWith<$Res> {
  factory $ResponseDetailPlanCopyWith(
          ResponseDetailPlan value, $Res Function(ResponseDetailPlan) then) =
      _$ResponseDetailPlanCopyWithImpl<$Res, ResponseDetailPlan>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") DataDetailPlan? data});

  $DataDetailPlanCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResponseDetailPlanCopyWithImpl<$Res, $Val extends ResponseDetailPlan>
    implements $ResponseDetailPlanCopyWith<$Res> {
  _$ResponseDetailPlanCopyWithImpl(this._value, this._then);

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
              as DataDetailPlan?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataDetailPlanCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataDetailPlanCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseDetailPlanImplCopyWith<$Res>
    implements $ResponseDetailPlanCopyWith<$Res> {
  factory _$$ResponseDetailPlanImplCopyWith(_$ResponseDetailPlanImpl value,
          $Res Function(_$ResponseDetailPlanImpl) then) =
      __$$ResponseDetailPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") DataDetailPlan? data});

  @override
  $DataDetailPlanCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ResponseDetailPlanImplCopyWithImpl<$Res>
    extends _$ResponseDetailPlanCopyWithImpl<$Res, _$ResponseDetailPlanImpl>
    implements _$$ResponseDetailPlanImplCopyWith<$Res> {
  __$$ResponseDetailPlanImplCopyWithImpl(_$ResponseDetailPlanImpl _value,
      $Res Function(_$ResponseDetailPlanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseDetailPlanImpl(
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
              as DataDetailPlan?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDetailPlanImpl implements _ResponseDetailPlan {
  const _$ResponseDetailPlanImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "error") this.error,
      @JsonKey(name: "data") this.data});

  factory _$ResponseDetailPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDetailPlanImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final dynamic message;
  @override
  @JsonKey(name: "error")
  final dynamic error;
  @override
  @JsonKey(name: "data")
  final DataDetailPlan? data;

  @override
  String toString() {
    return 'ResponseDetailPlan(status: $status, message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDetailPlanImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(error),
      data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseDetailPlanImplCopyWith<_$ResponseDetailPlanImpl> get copyWith =>
      __$$ResponseDetailPlanImplCopyWithImpl<_$ResponseDetailPlanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDetailPlanImplToJson(
      this,
    );
  }
}

abstract class _ResponseDetailPlan implements ResponseDetailPlan {
  const factory _ResponseDetailPlan(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "message") final dynamic message,
          @JsonKey(name: "error") final dynamic error,
          @JsonKey(name: "data") final DataDetailPlan? data}) =
      _$ResponseDetailPlanImpl;

  factory _ResponseDetailPlan.fromJson(Map<String, dynamic> json) =
      _$ResponseDetailPlanImpl.fromJson;

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
  DataDetailPlan? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDetailPlanImplCopyWith<_$ResponseDetailPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataDetailPlan _$DataDetailPlanFromJson(Map<String, dynamic> json) {
  return _DataDetailPlan.fromJson(json);
}

/// @nodoc
mixin _$DataDetailPlan {
  @JsonKey(name: "geo_latitude")
  dynamic get geoLatitude => throw _privateConstructorUsedError;
  @JsonKey(name: "geo_longitude")
  dynamic get geoLongitude => throw _privateConstructorUsedError;
  @JsonKey(name: "t_sales_activity_status")
  String? get tSalesActivityStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_amount")
  int? get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_type")
  int? get paymentType => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_img_base64")
  dynamic get paymentImgBase64 => throw _privateConstructorUsedError;
  @JsonKey(name: "realisasi_note")
  dynamic get realisasiNote => throw _privateConstructorUsedError;
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
  @JsonKey(name: "m_cust_d_addr_id")
  int? get mCustDAddrId => throw _privateConstructorUsedError;
  @JsonKey(name: "plan_start_time")
  String? get planStartTime => throw _privateConstructorUsedError;
  @JsonKey(name: "t_sales_activity_note")
  String? get tSalesActivityNote => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataDetailPlanCopyWith<DataDetailPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataDetailPlanCopyWith<$Res> {
  factory $DataDetailPlanCopyWith(
          DataDetailPlan value, $Res Function(DataDetailPlan) then) =
      _$DataDetailPlanCopyWithImpl<$Res, DataDetailPlan>;
  @useResult
  $Res call(
      {@JsonKey(name: "geo_latitude") dynamic geoLatitude,
      @JsonKey(name: "geo_longitude") dynamic geoLongitude,
      @JsonKey(name: "t_sales_activity_status") String? tSalesActivityStatus,
      @JsonKey(name: "payment_amount") int? paymentAmount,
      @JsonKey(name: "payment_type") int? paymentType,
      @JsonKey(name: "payment_img_base64") dynamic paymentImgBase64,
      @JsonKey(name: "realisasi_note") dynamic realisasiNote,
      @JsonKey(name: "t_sales_activity_id") int? tSalesActivityId,
      @JsonKey(name: "plan_start") String? planStart,
      @JsonKey(name: "plan_end") String? planEnd,
      @JsonKey(name: "activity_type") String? activityType,
      @JsonKey(name: "m_cust_id") int? mCustId,
      @JsonKey(name: "m_cust_d_addr_id") int? mCustDAddrId,
      @JsonKey(name: "plan_start_time") String? planStartTime,
      @JsonKey(name: "t_sales_activity_note") String? tSalesActivityNote});
}

/// @nodoc
class _$DataDetailPlanCopyWithImpl<$Res, $Val extends DataDetailPlan>
    implements $DataDetailPlanCopyWith<$Res> {
  _$DataDetailPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geoLatitude = freezed,
    Object? geoLongitude = freezed,
    Object? tSalesActivityStatus = freezed,
    Object? paymentAmount = freezed,
    Object? paymentType = freezed,
    Object? paymentImgBase64 = freezed,
    Object? realisasiNote = freezed,
    Object? tSalesActivityId = freezed,
    Object? planStart = freezed,
    Object? planEnd = freezed,
    Object? activityType = freezed,
    Object? mCustId = freezed,
    Object? mCustDAddrId = freezed,
    Object? planStartTime = freezed,
    Object? tSalesActivityNote = freezed,
  }) {
    return _then(_value.copyWith(
      geoLatitude: freezed == geoLatitude
          ? _value.geoLatitude
          : geoLatitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      geoLongitude: freezed == geoLongitude
          ? _value.geoLongitude
          : geoLongitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tSalesActivityStatus: freezed == tSalesActivityStatus
          ? _value.tSalesActivityStatus
          : tSalesActivityStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentAmount: freezed == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentImgBase64: freezed == paymentImgBase64
          ? _value.paymentImgBase64
          : paymentImgBase64 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      realisasiNote: freezed == realisasiNote
          ? _value.realisasiNote
          : realisasiNote // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
abstract class _$$DataDetailPlanImplCopyWith<$Res>
    implements $DataDetailPlanCopyWith<$Res> {
  factory _$$DataDetailPlanImplCopyWith(_$DataDetailPlanImpl value,
          $Res Function(_$DataDetailPlanImpl) then) =
      __$$DataDetailPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "geo_latitude") dynamic geoLatitude,
      @JsonKey(name: "geo_longitude") dynamic geoLongitude,
      @JsonKey(name: "t_sales_activity_status") String? tSalesActivityStatus,
      @JsonKey(name: "payment_amount") int? paymentAmount,
      @JsonKey(name: "payment_type") int? paymentType,
      @JsonKey(name: "payment_img_base64") dynamic paymentImgBase64,
      @JsonKey(name: "realisasi_note") dynamic realisasiNote,
      @JsonKey(name: "t_sales_activity_id") int? tSalesActivityId,
      @JsonKey(name: "plan_start") String? planStart,
      @JsonKey(name: "plan_end") String? planEnd,
      @JsonKey(name: "activity_type") String? activityType,
      @JsonKey(name: "m_cust_id") int? mCustId,
      @JsonKey(name: "m_cust_d_addr_id") int? mCustDAddrId,
      @JsonKey(name: "plan_start_time") String? planStartTime,
      @JsonKey(name: "t_sales_activity_note") String? tSalesActivityNote});
}

/// @nodoc
class __$$DataDetailPlanImplCopyWithImpl<$Res>
    extends _$DataDetailPlanCopyWithImpl<$Res, _$DataDetailPlanImpl>
    implements _$$DataDetailPlanImplCopyWith<$Res> {
  __$$DataDetailPlanImplCopyWithImpl(
      _$DataDetailPlanImpl _value, $Res Function(_$DataDetailPlanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geoLatitude = freezed,
    Object? geoLongitude = freezed,
    Object? tSalesActivityStatus = freezed,
    Object? paymentAmount = freezed,
    Object? paymentType = freezed,
    Object? paymentImgBase64 = freezed,
    Object? realisasiNote = freezed,
    Object? tSalesActivityId = freezed,
    Object? planStart = freezed,
    Object? planEnd = freezed,
    Object? activityType = freezed,
    Object? mCustId = freezed,
    Object? mCustDAddrId = freezed,
    Object? planStartTime = freezed,
    Object? tSalesActivityNote = freezed,
  }) {
    return _then(_$DataDetailPlanImpl(
      geoLatitude: freezed == geoLatitude
          ? _value.geoLatitude
          : geoLatitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      geoLongitude: freezed == geoLongitude
          ? _value.geoLongitude
          : geoLongitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tSalesActivityStatus: freezed == tSalesActivityStatus
          ? _value.tSalesActivityStatus
          : tSalesActivityStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentAmount: freezed == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentImgBase64: freezed == paymentImgBase64
          ? _value.paymentImgBase64
          : paymentImgBase64 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      realisasiNote: freezed == realisasiNote
          ? _value.realisasiNote
          : realisasiNote // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
class _$DataDetailPlanImpl implements _DataDetailPlan {
  const _$DataDetailPlanImpl(
      {@JsonKey(name: "geo_latitude") this.geoLatitude,
      @JsonKey(name: "geo_longitude") this.geoLongitude,
      @JsonKey(name: "t_sales_activity_status") this.tSalesActivityStatus,
      @JsonKey(name: "payment_amount") this.paymentAmount,
      @JsonKey(name: "payment_type") this.paymentType,
      @JsonKey(name: "payment_img_base64") this.paymentImgBase64,
      @JsonKey(name: "realisasi_note") this.realisasiNote,
      @JsonKey(name: "t_sales_activity_id") this.tSalesActivityId,
      @JsonKey(name: "plan_start") this.planStart,
      @JsonKey(name: "plan_end") this.planEnd,
      @JsonKey(name: "activity_type") this.activityType,
      @JsonKey(name: "m_cust_id") this.mCustId,
      @JsonKey(name: "m_cust_d_addr_id") this.mCustDAddrId,
      @JsonKey(name: "plan_start_time") this.planStartTime,
      @JsonKey(name: "t_sales_activity_note") this.tSalesActivityNote});

  factory _$DataDetailPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataDetailPlanImplFromJson(json);

  @override
  @JsonKey(name: "geo_latitude")
  final dynamic geoLatitude;
  @override
  @JsonKey(name: "geo_longitude")
  final dynamic geoLongitude;
  @override
  @JsonKey(name: "t_sales_activity_status")
  final String? tSalesActivityStatus;
  @override
  @JsonKey(name: "payment_amount")
  final int? paymentAmount;
  @override
  @JsonKey(name: "payment_type")
  final int? paymentType;
  @override
  @JsonKey(name: "payment_img_base64")
  final dynamic paymentImgBase64;
  @override
  @JsonKey(name: "realisasi_note")
  final dynamic realisasiNote;
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
    return 'DataDetailPlan(geoLatitude: $geoLatitude, geoLongitude: $geoLongitude, tSalesActivityStatus: $tSalesActivityStatus, paymentAmount: $paymentAmount, paymentType: $paymentType, paymentImgBase64: $paymentImgBase64, realisasiNote: $realisasiNote, tSalesActivityId: $tSalesActivityId, planStart: $planStart, planEnd: $planEnd, activityType: $activityType, mCustId: $mCustId, mCustDAddrId: $mCustDAddrId, planStartTime: $planStartTime, tSalesActivityNote: $tSalesActivityNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataDetailPlanImpl &&
            const DeepCollectionEquality()
                .equals(other.geoLatitude, geoLatitude) &&
            const DeepCollectionEquality()
                .equals(other.geoLongitude, geoLongitude) &&
            (identical(other.tSalesActivityStatus, tSalesActivityStatus) ||
                other.tSalesActivityStatus == tSalesActivityStatus) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            const DeepCollectionEquality()
                .equals(other.paymentImgBase64, paymentImgBase64) &&
            const DeepCollectionEquality()
                .equals(other.realisasiNote, realisasiNote) &&
            (identical(other.tSalesActivityId, tSalesActivityId) ||
                other.tSalesActivityId == tSalesActivityId) &&
            (identical(other.planStart, planStart) ||
                other.planStart == planStart) &&
            (identical(other.planEnd, planEnd) || other.planEnd == planEnd) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
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
      const DeepCollectionEquality().hash(geoLatitude),
      const DeepCollectionEquality().hash(geoLongitude),
      tSalesActivityStatus,
      paymentAmount,
      paymentType,
      const DeepCollectionEquality().hash(paymentImgBase64),
      const DeepCollectionEquality().hash(realisasiNote),
      tSalesActivityId,
      planStart,
      planEnd,
      activityType,
      mCustId,
      mCustDAddrId,
      planStartTime,
      tSalesActivityNote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataDetailPlanImplCopyWith<_$DataDetailPlanImpl> get copyWith =>
      __$$DataDetailPlanImplCopyWithImpl<_$DataDetailPlanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataDetailPlanImplToJson(
      this,
    );
  }
}

abstract class _DataDetailPlan implements DataDetailPlan {
  const factory _DataDetailPlan(
      {@JsonKey(name: "geo_latitude") final dynamic geoLatitude,
      @JsonKey(name: "geo_longitude") final dynamic geoLongitude,
      @JsonKey(name: "t_sales_activity_status")
      final String? tSalesActivityStatus,
      @JsonKey(name: "payment_amount") final int? paymentAmount,
      @JsonKey(name: "payment_type") final int? paymentType,
      @JsonKey(name: "payment_img_base64") final dynamic paymentImgBase64,
      @JsonKey(name: "realisasi_note") final dynamic realisasiNote,
      @JsonKey(name: "t_sales_activity_id") final int? tSalesActivityId,
      @JsonKey(name: "plan_start") final String? planStart,
      @JsonKey(name: "plan_end") final String? planEnd,
      @JsonKey(name: "activity_type") final String? activityType,
      @JsonKey(name: "m_cust_id") final int? mCustId,
      @JsonKey(name: "m_cust_d_addr_id") final int? mCustDAddrId,
      @JsonKey(name: "plan_start_time") final String? planStartTime,
      @JsonKey(name: "t_sales_activity_note")
      final String? tSalesActivityNote}) = _$DataDetailPlanImpl;

  factory _DataDetailPlan.fromJson(Map<String, dynamic> json) =
      _$DataDetailPlanImpl.fromJson;

  @override
  @JsonKey(name: "geo_latitude")
  dynamic get geoLatitude;
  @override
  @JsonKey(name: "geo_longitude")
  dynamic get geoLongitude;
  @override
  @JsonKey(name: "t_sales_activity_status")
  String? get tSalesActivityStatus;
  @override
  @JsonKey(name: "payment_amount")
  int? get paymentAmount;
  @override
  @JsonKey(name: "payment_type")
  int? get paymentType;
  @override
  @JsonKey(name: "payment_img_base64")
  dynamic get paymentImgBase64;
  @override
  @JsonKey(name: "realisasi_note")
  dynamic get realisasiNote;
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
  _$$DataDetailPlanImplCopyWith<_$DataDetailPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
