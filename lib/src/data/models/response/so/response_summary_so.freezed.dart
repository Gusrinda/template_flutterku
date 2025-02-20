// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_summary_so.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseSummarySo _$ResponseSummarySoFromJson(Map<String, dynamic> json) {
  return _ResponseSummarySo.fromJson(json);
}

/// @nodoc
mixin _$ResponseSummarySo {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  dynamic get message => throw _privateConstructorUsedError;
  @JsonKey(name: "error")
  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  DataSummarySO? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseSummarySoCopyWith<ResponseSummarySo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseSummarySoCopyWith<$Res> {
  factory $ResponseSummarySoCopyWith(
          ResponseSummarySo value, $Res Function(ResponseSummarySo) then) =
      _$ResponseSummarySoCopyWithImpl<$Res, ResponseSummarySo>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") DataSummarySO? data});

  $DataSummarySOCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResponseSummarySoCopyWithImpl<$Res, $Val extends ResponseSummarySo>
    implements $ResponseSummarySoCopyWith<$Res> {
  _$ResponseSummarySoCopyWithImpl(this._value, this._then);

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
              as DataSummarySO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataSummarySOCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataSummarySOCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseSummarySoImplCopyWith<$Res>
    implements $ResponseSummarySoCopyWith<$Res> {
  factory _$$ResponseSummarySoImplCopyWith(_$ResponseSummarySoImpl value,
          $Res Function(_$ResponseSummarySoImpl) then) =
      __$$ResponseSummarySoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") DataSummarySO? data});

  @override
  $DataSummarySOCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ResponseSummarySoImplCopyWithImpl<$Res>
    extends _$ResponseSummarySoCopyWithImpl<$Res, _$ResponseSummarySoImpl>
    implements _$$ResponseSummarySoImplCopyWith<$Res> {
  __$$ResponseSummarySoImplCopyWithImpl(_$ResponseSummarySoImpl _value,
      $Res Function(_$ResponseSummarySoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseSummarySoImpl(
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
              as DataSummarySO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseSummarySoImpl implements _ResponseSummarySo {
  const _$ResponseSummarySoImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "error") this.error,
      @JsonKey(name: "data") this.data});

  factory _$ResponseSummarySoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseSummarySoImplFromJson(json);

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
  final DataSummarySO? data;

  @override
  String toString() {
    return 'ResponseSummarySo(status: $status, message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseSummarySoImpl &&
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
  _$$ResponseSummarySoImplCopyWith<_$ResponseSummarySoImpl> get copyWith =>
      __$$ResponseSummarySoImplCopyWithImpl<_$ResponseSummarySoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseSummarySoImplToJson(
      this,
    );
  }
}

abstract class _ResponseSummarySo implements ResponseSummarySo {
  const factory _ResponseSummarySo(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "message") final dynamic message,
          @JsonKey(name: "error") final dynamic error,
          @JsonKey(name: "data") final DataSummarySO? data}) =
      _$ResponseSummarySoImpl;

  factory _ResponseSummarySo.fromJson(Map<String, dynamic> json) =
      _$ResponseSummarySoImpl.fromJson;

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
  DataSummarySO? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseSummarySoImplCopyWith<_$ResponseSummarySoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataSummarySO _$DataSummarySOFromJson(Map<String, dynamic> json) {
  return _DataSummarySO.fromJson(json);
}

/// @nodoc
mixin _$DataSummarySO {
  @JsonKey(name: "total_order")
  int? get totalOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "total_netto")
  dynamic get totalNetto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataSummarySOCopyWith<DataSummarySO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSummarySOCopyWith<$Res> {
  factory $DataSummarySOCopyWith(
          DataSummarySO value, $Res Function(DataSummarySO) then) =
      _$DataSummarySOCopyWithImpl<$Res, DataSummarySO>;
  @useResult
  $Res call(
      {@JsonKey(name: "total_order") int? totalOrder,
      @JsonKey(name: "total_netto") dynamic totalNetto});
}

/// @nodoc
class _$DataSummarySOCopyWithImpl<$Res, $Val extends DataSummarySO>
    implements $DataSummarySOCopyWith<$Res> {
  _$DataSummarySOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalOrder = freezed,
    Object? totalNetto = freezed,
  }) {
    return _then(_value.copyWith(
      totalOrder: freezed == totalOrder
          ? _value.totalOrder
          : totalOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      totalNetto: freezed == totalNetto
          ? _value.totalNetto
          : totalNetto // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataSummarySOImplCopyWith<$Res>
    implements $DataSummarySOCopyWith<$Res> {
  factory _$$DataSummarySOImplCopyWith(
          _$DataSummarySOImpl value, $Res Function(_$DataSummarySOImpl) then) =
      __$$DataSummarySOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total_order") int? totalOrder,
      @JsonKey(name: "total_netto") dynamic totalNetto});
}

/// @nodoc
class __$$DataSummarySOImplCopyWithImpl<$Res>
    extends _$DataSummarySOCopyWithImpl<$Res, _$DataSummarySOImpl>
    implements _$$DataSummarySOImplCopyWith<$Res> {
  __$$DataSummarySOImplCopyWithImpl(
      _$DataSummarySOImpl _value, $Res Function(_$DataSummarySOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalOrder = freezed,
    Object? totalNetto = freezed,
  }) {
    return _then(_$DataSummarySOImpl(
      totalOrder: freezed == totalOrder
          ? _value.totalOrder
          : totalOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      totalNetto: freezed == totalNetto
          ? _value.totalNetto
          : totalNetto // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataSummarySOImpl implements _DataSummarySO {
  const _$DataSummarySOImpl(
      {@JsonKey(name: "total_order") this.totalOrder,
      @JsonKey(name: "total_netto") this.totalNetto});

  factory _$DataSummarySOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataSummarySOImplFromJson(json);

  @override
  @JsonKey(name: "total_order")
  final int? totalOrder;
  @override
  @JsonKey(name: "total_netto")
  final dynamic totalNetto;

  @override
  String toString() {
    return 'DataSummarySO(totalOrder: $totalOrder, totalNetto: $totalNetto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataSummarySOImpl &&
            (identical(other.totalOrder, totalOrder) ||
                other.totalOrder == totalOrder) &&
            const DeepCollectionEquality()
                .equals(other.totalNetto, totalNetto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalOrder, const DeepCollectionEquality().hash(totalNetto));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataSummarySOImplCopyWith<_$DataSummarySOImpl> get copyWith =>
      __$$DataSummarySOImplCopyWithImpl<_$DataSummarySOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataSummarySOImplToJson(
      this,
    );
  }
}

abstract class _DataSummarySO implements DataSummarySO {
  const factory _DataSummarySO(
          {@JsonKey(name: "total_order") final int? totalOrder,
          @JsonKey(name: "total_netto") final dynamic totalNetto}) =
      _$DataSummarySOImpl;

  factory _DataSummarySO.fromJson(Map<String, dynamic> json) =
      _$DataSummarySOImpl.fromJson;

  @override
  @JsonKey(name: "total_order")
  int? get totalOrder;
  @override
  @JsonKey(name: "total_netto")
  dynamic get totalNetto;
  @override
  @JsonKey(ignore: true)
  _$$DataSummarySOImplCopyWith<_$DataSummarySOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
