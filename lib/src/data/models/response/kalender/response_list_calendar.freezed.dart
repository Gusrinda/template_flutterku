// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_list_calendar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseListCalendar _$ResponseListCalendarFromJson(Map<String, dynamic> json) {
  return _ResponseListCalendar.fromJson(json);
}

/// @nodoc
mixin _$ResponseListCalendar {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  dynamic get message => throw _privateConstructorUsedError;
  @JsonKey(name: "error")
  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DataKalender>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseListCalendarCopyWith<ResponseListCalendar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseListCalendarCopyWith<$Res> {
  factory $ResponseListCalendarCopyWith(ResponseListCalendar value,
          $Res Function(ResponseListCalendar) then) =
      _$ResponseListCalendarCopyWithImpl<$Res, ResponseListCalendar>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataKalender>? data});
}

/// @nodoc
class _$ResponseListCalendarCopyWithImpl<$Res,
        $Val extends ResponseListCalendar>
    implements $ResponseListCalendarCopyWith<$Res> {
  _$ResponseListCalendarCopyWithImpl(this._value, this._then);

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
              as List<DataKalender>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseListCalendarImplCopyWith<$Res>
    implements $ResponseListCalendarCopyWith<$Res> {
  factory _$$ResponseListCalendarImplCopyWith(_$ResponseListCalendarImpl value,
          $Res Function(_$ResponseListCalendarImpl) then) =
      __$$ResponseListCalendarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") List<DataKalender>? data});
}

/// @nodoc
class __$$ResponseListCalendarImplCopyWithImpl<$Res>
    extends _$ResponseListCalendarCopyWithImpl<$Res, _$ResponseListCalendarImpl>
    implements _$$ResponseListCalendarImplCopyWith<$Res> {
  __$$ResponseListCalendarImplCopyWithImpl(_$ResponseListCalendarImpl _value,
      $Res Function(_$ResponseListCalendarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseListCalendarImpl(
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
              as List<DataKalender>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseListCalendarImpl implements _ResponseListCalendar {
  const _$ResponseListCalendarImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "error") this.error,
      @JsonKey(name: "data") final List<DataKalender>? data})
      : _data = data;

  factory _$ResponseListCalendarImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseListCalendarImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final dynamic message;
  @override
  @JsonKey(name: "error")
  final dynamic error;
  final List<DataKalender>? _data;
  @override
  @JsonKey(name: "data")
  List<DataKalender>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseListCalendar(status: $status, message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseListCalendarImpl &&
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
  _$$ResponseListCalendarImplCopyWith<_$ResponseListCalendarImpl>
      get copyWith =>
          __$$ResponseListCalendarImplCopyWithImpl<_$ResponseListCalendarImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseListCalendarImplToJson(
      this,
    );
  }
}

abstract class _ResponseListCalendar implements ResponseListCalendar {
  const factory _ResponseListCalendar(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "message") final dynamic message,
          @JsonKey(name: "error") final dynamic error,
          @JsonKey(name: "data") final List<DataKalender>? data}) =
      _$ResponseListCalendarImpl;

  factory _ResponseListCalendar.fromJson(Map<String, dynamic> json) =
      _$ResponseListCalendarImpl.fromJson;

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
  List<DataKalender>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseListCalendarImplCopyWith<_$ResponseListCalendarImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataKalender _$DataKalenderFromJson(Map<String, dynamic> json) {
  return _DataKalender.fromJson(json);
}

/// @nodoc
mixin _$DataKalender {
  @JsonKey(name: "activity_date")
  String? get activityDate => throw _privateConstructorUsedError;
  @JsonKey(name: "count_order")
  int? get countOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "count_tagihan")
  int? get countTagihan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataKalenderCopyWith<DataKalender> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataKalenderCopyWith<$Res> {
  factory $DataKalenderCopyWith(
          DataKalender value, $Res Function(DataKalender) then) =
      _$DataKalenderCopyWithImpl<$Res, DataKalender>;
  @useResult
  $Res call(
      {@JsonKey(name: "activity_date") String? activityDate,
      @JsonKey(name: "count_order") int? countOrder,
      @JsonKey(name: "count_tagihan") int? countTagihan});
}

/// @nodoc
class _$DataKalenderCopyWithImpl<$Res, $Val extends DataKalender>
    implements $DataKalenderCopyWith<$Res> {
  _$DataKalenderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityDate = freezed,
    Object? countOrder = freezed,
    Object? countTagihan = freezed,
  }) {
    return _then(_value.copyWith(
      activityDate: freezed == activityDate
          ? _value.activityDate
          : activityDate // ignore: cast_nullable_to_non_nullable
              as String?,
      countOrder: freezed == countOrder
          ? _value.countOrder
          : countOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      countTagihan: freezed == countTagihan
          ? _value.countTagihan
          : countTagihan // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataKalenderImplCopyWith<$Res>
    implements $DataKalenderCopyWith<$Res> {
  factory _$$DataKalenderImplCopyWith(
          _$DataKalenderImpl value, $Res Function(_$DataKalenderImpl) then) =
      __$$DataKalenderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "activity_date") String? activityDate,
      @JsonKey(name: "count_order") int? countOrder,
      @JsonKey(name: "count_tagihan") int? countTagihan});
}

/// @nodoc
class __$$DataKalenderImplCopyWithImpl<$Res>
    extends _$DataKalenderCopyWithImpl<$Res, _$DataKalenderImpl>
    implements _$$DataKalenderImplCopyWith<$Res> {
  __$$DataKalenderImplCopyWithImpl(
      _$DataKalenderImpl _value, $Res Function(_$DataKalenderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityDate = freezed,
    Object? countOrder = freezed,
    Object? countTagihan = freezed,
  }) {
    return _then(_$DataKalenderImpl(
      activityDate: freezed == activityDate
          ? _value.activityDate
          : activityDate // ignore: cast_nullable_to_non_nullable
              as String?,
      countOrder: freezed == countOrder
          ? _value.countOrder
          : countOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      countTagihan: freezed == countTagihan
          ? _value.countTagihan
          : countTagihan // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataKalenderImpl implements _DataKalender {
  const _$DataKalenderImpl(
      {@JsonKey(name: "activity_date") this.activityDate,
      @JsonKey(name: "count_order") this.countOrder,
      @JsonKey(name: "count_tagihan") this.countTagihan});

  factory _$DataKalenderImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataKalenderImplFromJson(json);

  @override
  @JsonKey(name: "activity_date")
  final String? activityDate;
  @override
  @JsonKey(name: "count_order")
  final int? countOrder;
  @override
  @JsonKey(name: "count_tagihan")
  final int? countTagihan;

  @override
  String toString() {
    return 'DataKalender(activityDate: $activityDate, countOrder: $countOrder, countTagihan: $countTagihan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataKalenderImpl &&
            (identical(other.activityDate, activityDate) ||
                other.activityDate == activityDate) &&
            (identical(other.countOrder, countOrder) ||
                other.countOrder == countOrder) &&
            (identical(other.countTagihan, countTagihan) ||
                other.countTagihan == countTagihan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, activityDate, countOrder, countTagihan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataKalenderImplCopyWith<_$DataKalenderImpl> get copyWith =>
      __$$DataKalenderImplCopyWithImpl<_$DataKalenderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataKalenderImplToJson(
      this,
    );
  }
}

abstract class _DataKalender implements DataKalender {
  const factory _DataKalender(
          {@JsonKey(name: "activity_date") final String? activityDate,
          @JsonKey(name: "count_order") final int? countOrder,
          @JsonKey(name: "count_tagihan") final int? countTagihan}) =
      _$DataKalenderImpl;

  factory _DataKalender.fromJson(Map<String, dynamic> json) =
      _$DataKalenderImpl.fromJson;

  @override
  @JsonKey(name: "activity_date")
  String? get activityDate;
  @override
  @JsonKey(name: "count_order")
  int? get countOrder;
  @override
  @JsonKey(name: "count_tagihan")
  int? get countTagihan;
  @override
  @JsonKey(ignore: true)
  _$$DataKalenderImplCopyWith<_$DataKalenderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
