// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_detail_calendar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseDetailCalendar _$ResponseDetailCalendarFromJson(
    Map<String, dynamic> json) {
  return _ResponseDetailCalendar.fromJson(json);
}

/// @nodoc
mixin _$ResponseDetailCalendar {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  dynamic get message => throw _privateConstructorUsedError;
  @JsonKey(name: "error")
  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataEventKalender>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDetailCalendarCopyWith<ResponseDetailCalendar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDetailCalendarCopyWith<$Res> {
  factory $ResponseDetailCalendarCopyWith(ResponseDetailCalendar value,
          $Res Function(ResponseDetailCalendar) then) =
      _$ResponseDetailCalendarCopyWithImpl<$Res, ResponseDetailCalendar>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataEventKalender>? data});
}

/// @nodoc
class _$ResponseDetailCalendarCopyWithImpl<$Res,
        $Val extends ResponseDetailCalendar>
    implements $ResponseDetailCalendarCopyWith<$Res> {
  _$ResponseDetailCalendarCopyWithImpl(this._value, this._then);

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
              as List<DataEventKalender>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseDetailCalendarImplCopyWith<$Res>
    implements $ResponseDetailCalendarCopyWith<$Res> {
  factory _$$ResponseDetailCalendarImplCopyWith(
          _$ResponseDetailCalendarImpl value,
          $Res Function(_$ResponseDetailCalendarImpl) then) =
      __$$ResponseDetailCalendarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataEventKalender>? data});
}

/// @nodoc
class __$$ResponseDetailCalendarImplCopyWithImpl<$Res>
    extends _$ResponseDetailCalendarCopyWithImpl<$Res,
        _$ResponseDetailCalendarImpl>
    implements _$$ResponseDetailCalendarImplCopyWith<$Res> {
  __$$ResponseDetailCalendarImplCopyWithImpl(
      _$ResponseDetailCalendarImpl _value,
      $Res Function(_$ResponseDetailCalendarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseDetailCalendarImpl(
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
              as List<DataEventKalender>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDetailCalendarImpl implements _ResponseDetailCalendar {
  const _$ResponseDetailCalendarImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "error") this.error,
      @JsonKey(name: "data") final List<DataEventKalender>? data})
      : _data = data;

  factory _$ResponseDetailCalendarImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDetailCalendarImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final dynamic message;
  @override
  @JsonKey(name: "error")
  final dynamic error;
  final List<DataEventKalender>? _data;
  @override
  @JsonKey(name: "data")
  List<DataEventKalender>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseDetailCalendar(status: $status, message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDetailCalendarImpl &&
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
  _$$ResponseDetailCalendarImplCopyWith<_$ResponseDetailCalendarImpl>
      get copyWith => __$$ResponseDetailCalendarImplCopyWithImpl<
          _$ResponseDetailCalendarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDetailCalendarImplToJson(
      this,
    );
  }
}

abstract class _ResponseDetailCalendar implements ResponseDetailCalendar {
  const factory _ResponseDetailCalendar(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "message") final dynamic message,
          @JsonKey(name: "error") final dynamic error,
          @JsonKey(name: "data") final List<DataEventKalender>? data}) =
      _$ResponseDetailCalendarImpl;

  factory _ResponseDetailCalendar.fromJson(Map<String, dynamic> json) =
      _$ResponseDetailCalendarImpl.fromJson;

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
  List<DataEventKalender>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDetailCalendarImplCopyWith<_$ResponseDetailCalendarImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataEventKalender _$DataEventKalenderFromJson(Map<String, dynamic> json) {
  return _DataEventKalender.fromJson(json);
}

/// @nodoc
mixin _$DataEventKalender {
  @JsonKey(name: "activity_date")
  String? get activityDate => throw _privateConstructorUsedError;
  @JsonKey(name: "activity_time")
  String? get activityTime => throw _privateConstructorUsedError;
  @JsonKey(name: "activity_type")
  String? get activityType => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_name")
  String? get mCustName => throw _privateConstructorUsedError;
  @JsonKey(name: "activity_no")
  String? get activityNo => throw _privateConstructorUsedError;
  @JsonKey(name: "ref_id")
  int? get refId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataEventKalenderCopyWith<DataEventKalender> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataEventKalenderCopyWith<$Res> {
  factory $DataEventKalenderCopyWith(
          DataEventKalender value, $Res Function(DataEventKalender) then) =
      _$DataEventKalenderCopyWithImpl<$Res, DataEventKalender>;
  @useResult
  $Res call(
      {@JsonKey(name: "activity_date") String? activityDate,
      @JsonKey(name: "activity_time") String? activityTime,
      @JsonKey(name: "activity_type") String? activityType,
      @JsonKey(name: "m_cust_name") String? mCustName,
      @JsonKey(name: "activity_no") String? activityNo,
      @JsonKey(name: "ref_id") int? refId});
}

/// @nodoc
class _$DataEventKalenderCopyWithImpl<$Res, $Val extends DataEventKalender>
    implements $DataEventKalenderCopyWith<$Res> {
  _$DataEventKalenderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityDate = freezed,
    Object? activityTime = freezed,
    Object? activityType = freezed,
    Object? mCustName = freezed,
    Object? activityNo = freezed,
    Object? refId = freezed,
  }) {
    return _then(_value.copyWith(
      activityDate: freezed == activityDate
          ? _value.activityDate
          : activityDate // ignore: cast_nullable_to_non_nullable
              as String?,
      activityTime: freezed == activityTime
          ? _value.activityTime
          : activityTime // ignore: cast_nullable_to_non_nullable
              as String?,
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustName: freezed == mCustName
          ? _value.mCustName
          : mCustName // ignore: cast_nullable_to_non_nullable
              as String?,
      activityNo: freezed == activityNo
          ? _value.activityNo
          : activityNo // ignore: cast_nullable_to_non_nullable
              as String?,
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataEventKalenderImplCopyWith<$Res>
    implements $DataEventKalenderCopyWith<$Res> {
  factory _$$DataEventKalenderImplCopyWith(_$DataEventKalenderImpl value,
          $Res Function(_$DataEventKalenderImpl) then) =
      __$$DataEventKalenderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "activity_date") String? activityDate,
      @JsonKey(name: "activity_time") String? activityTime,
      @JsonKey(name: "activity_type") String? activityType,
      @JsonKey(name: "m_cust_name") String? mCustName,
      @JsonKey(name: "activity_no") String? activityNo,
      @JsonKey(name: "ref_id") int? refId});
}

/// @nodoc
class __$$DataEventKalenderImplCopyWithImpl<$Res>
    extends _$DataEventKalenderCopyWithImpl<$Res, _$DataEventKalenderImpl>
    implements _$$DataEventKalenderImplCopyWith<$Res> {
  __$$DataEventKalenderImplCopyWithImpl(_$DataEventKalenderImpl _value,
      $Res Function(_$DataEventKalenderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityDate = freezed,
    Object? activityTime = freezed,
    Object? activityType = freezed,
    Object? mCustName = freezed,
    Object? activityNo = freezed,
    Object? refId = freezed,
  }) {
    return _then(_$DataEventKalenderImpl(
      activityDate: freezed == activityDate
          ? _value.activityDate
          : activityDate // ignore: cast_nullable_to_non_nullable
              as String?,
      activityTime: freezed == activityTime
          ? _value.activityTime
          : activityTime // ignore: cast_nullable_to_non_nullable
              as String?,
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String?,
      mCustName: freezed == mCustName
          ? _value.mCustName
          : mCustName // ignore: cast_nullable_to_non_nullable
              as String?,
      activityNo: freezed == activityNo
          ? _value.activityNo
          : activityNo // ignore: cast_nullable_to_non_nullable
              as String?,
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataEventKalenderImpl implements _DataEventKalender {
  const _$DataEventKalenderImpl(
      {@JsonKey(name: "activity_date") this.activityDate,
      @JsonKey(name: "activity_time") this.activityTime,
      @JsonKey(name: "activity_type") this.activityType,
      @JsonKey(name: "m_cust_name") this.mCustName,
      @JsonKey(name: "activity_no") this.activityNo,
      @JsonKey(name: "ref_id") this.refId});

  factory _$DataEventKalenderImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataEventKalenderImplFromJson(json);

  @override
  @JsonKey(name: "activity_date")
  final String? activityDate;
  @override
  @JsonKey(name: "activity_time")
  final String? activityTime;
  @override
  @JsonKey(name: "activity_type")
  final String? activityType;
  @override
  @JsonKey(name: "m_cust_name")
  final String? mCustName;
  @override
  @JsonKey(name: "activity_no")
  final String? activityNo;
  @override
  @JsonKey(name: "ref_id")
  final int? refId;

  @override
  String toString() {
    return 'DataEventKalender(activityDate: $activityDate, activityTime: $activityTime, activityType: $activityType, mCustName: $mCustName, activityNo: $activityNo, refId: $refId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataEventKalenderImpl &&
            (identical(other.activityDate, activityDate) ||
                other.activityDate == activityDate) &&
            (identical(other.activityTime, activityTime) ||
                other.activityTime == activityTime) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            (identical(other.mCustName, mCustName) ||
                other.mCustName == mCustName) &&
            (identical(other.activityNo, activityNo) ||
                other.activityNo == activityNo) &&
            (identical(other.refId, refId) || other.refId == refId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, activityDate, activityTime,
      activityType, mCustName, activityNo, refId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataEventKalenderImplCopyWith<_$DataEventKalenderImpl> get copyWith =>
      __$$DataEventKalenderImplCopyWithImpl<_$DataEventKalenderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataEventKalenderImplToJson(
      this,
    );
  }
}

abstract class _DataEventKalender implements DataEventKalender {
  const factory _DataEventKalender(
      {@JsonKey(name: "activity_date") final String? activityDate,
      @JsonKey(name: "activity_time") final String? activityTime,
      @JsonKey(name: "activity_type") final String? activityType,
      @JsonKey(name: "m_cust_name") final String? mCustName,
      @JsonKey(name: "activity_no") final String? activityNo,
      @JsonKey(name: "ref_id") final int? refId}) = _$DataEventKalenderImpl;

  factory _DataEventKalender.fromJson(Map<String, dynamic> json) =
      _$DataEventKalenderImpl.fromJson;

  @override
  @JsonKey(name: "activity_date")
  String? get activityDate;
  @override
  @JsonKey(name: "activity_time")
  String? get activityTime;
  @override
  @JsonKey(name: "activity_type")
  String? get activityType;
  @override
  @JsonKey(name: "m_cust_name")
  String? get mCustName;
  @override
  @JsonKey(name: "activity_no")
  String? get activityNo;
  @override
  @JsonKey(name: "ref_id")
  int? get refId;
  @override
  @JsonKey(ignore: true)
  _$$DataEventKalenderImplCopyWith<_$DataEventKalenderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
