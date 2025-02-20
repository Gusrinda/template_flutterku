// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_detail_tagihan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseDetailTagihan _$ResponseDetailTagihanFromJson(
    Map<String, dynamic> json) {
  return _ResponseDetailTagihan.fromJson(json);
}

/// @nodoc
mixin _$ResponseDetailTagihan {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  dynamic get message => throw _privateConstructorUsedError;
  @JsonKey(name: "error")
  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDetailTagihanCopyWith<ResponseDetailTagihan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDetailTagihanCopyWith<$Res> {
  factory $ResponseDetailTagihanCopyWith(ResponseDetailTagihan value,
          $Res Function(ResponseDetailTagihan) then) =
      _$ResponseDetailTagihanCopyWithImpl<$Res, ResponseDetailTagihan>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResponseDetailTagihanCopyWithImpl<$Res,
        $Val extends ResponseDetailTagihan>
    implements $ResponseDetailTagihanCopyWith<$Res> {
  _$ResponseDetailTagihanCopyWithImpl(this._value, this._then);

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
abstract class _$$ResponseDetailTagihanImplCopyWith<$Res>
    implements $ResponseDetailTagihanCopyWith<$Res> {
  factory _$$ResponseDetailTagihanImplCopyWith(
          _$ResponseDetailTagihanImpl value,
          $Res Function(_$ResponseDetailTagihanImpl) then) =
      __$$ResponseDetailTagihanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "error") dynamic error,
      @JsonKey(name: "data") Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ResponseDetailTagihanImplCopyWithImpl<$Res>
    extends _$ResponseDetailTagihanCopyWithImpl<$Res,
        _$ResponseDetailTagihanImpl>
    implements _$$ResponseDetailTagihanImplCopyWith<$Res> {
  __$$ResponseDetailTagihanImplCopyWithImpl(_$ResponseDetailTagihanImpl _value,
      $Res Function(_$ResponseDetailTagihanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseDetailTagihanImpl(
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
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDetailTagihanImpl implements _ResponseDetailTagihan {
  const _$ResponseDetailTagihanImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "error") this.error,
      @JsonKey(name: "data") this.data});

  factory _$ResponseDetailTagihanImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDetailTagihanImplFromJson(json);

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
  final Data? data;

  @override
  String toString() {
    return 'ResponseDetailTagihan(status: $status, message: $message, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDetailTagihanImpl &&
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
  _$$ResponseDetailTagihanImplCopyWith<_$ResponseDetailTagihanImpl>
      get copyWith => __$$ResponseDetailTagihanImplCopyWithImpl<
          _$ResponseDetailTagihanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDetailTagihanImplToJson(
      this,
    );
  }
}

abstract class _ResponseDetailTagihan implements ResponseDetailTagihan {
  const factory _ResponseDetailTagihan(
      {@JsonKey(name: "status") final String? status,
      @JsonKey(name: "message") final dynamic message,
      @JsonKey(name: "error") final dynamic error,
      @JsonKey(name: "data") final Data? data}) = _$ResponseDetailTagihanImpl;

  factory _ResponseDetailTagihan.fromJson(Map<String, dynamic> json) =
      _$ResponseDetailTagihanImpl.fromJson;

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
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDetailTagihanImplCopyWith<_$ResponseDetailTagihanImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "check_in")
  Check? get checkIn => throw _privateConstructorUsedError;
  @JsonKey(name: "check_out")
  Check? get checkOut => throw _privateConstructorUsedError;
  @JsonKey(name: "t_collect_payment_image_base64")
  String? get tCollectPaymentImageBase64 => throw _privateConstructorUsedError;
  @JsonKey(name: "t_collect_id")
  int? get tCollectId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_collect_date")
  String? get tCollectDate => throw _privateConstructorUsedError;
  @JsonKey(name: "t_collect_no")
  String? get tCollectNo => throw _privateConstructorUsedError;
  @JsonKey(name: "t_sales_activity_id")
  int? get tSalesActivityId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_id")
  int? get mCustId => throw _privateConstructorUsedError;
  @JsonKey(name: "t_collect_ar_amt")
  int? get tCollectArAmt => throw _privateConstructorUsedError;
  @JsonKey(name: "t_collect_payment_amt")
  int? get tCollectPaymentAmt => throw _privateConstructorUsedError;
  @JsonKey(name: "t_collect_payment_type")
  String? get tCollectPaymentType => throw _privateConstructorUsedError;
  @JsonKey(name: "t_collect_payment_image")
  String? get tCollectPaymentImage => throw _privateConstructorUsedError;
  @JsonKey(name: "t_collect_note")
  String? get tCollectNote => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "last_edited_by")
  String? get lastEditedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "last_edited_at")
  String? get lastEditedAt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "check_in") Check? checkIn,
      @JsonKey(name: "check_out") Check? checkOut,
      @JsonKey(name: "t_collect_payment_image_base64")
      String? tCollectPaymentImageBase64,
      @JsonKey(name: "t_collect_id") int? tCollectId,
      @JsonKey(name: "t_collect_date") String? tCollectDate,
      @JsonKey(name: "t_collect_no") String? tCollectNo,
      @JsonKey(name: "t_sales_activity_id") int? tSalesActivityId,
      @JsonKey(name: "m_cust_id") int? mCustId,
      @JsonKey(name: "t_collect_ar_amt") int? tCollectArAmt,
      @JsonKey(name: "t_collect_payment_amt") int? tCollectPaymentAmt,
      @JsonKey(name: "t_collect_payment_type") String? tCollectPaymentType,
      @JsonKey(name: "t_collect_payment_image") String? tCollectPaymentImage,
      @JsonKey(name: "t_collect_note") String? tCollectNote,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "last_edited_by") String? lastEditedBy,
      @JsonKey(name: "last_edited_at") String? lastEditedAt});

  $CheckCopyWith<$Res>? get checkIn;
  $CheckCopyWith<$Res>? get checkOut;
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
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? tCollectPaymentImageBase64 = freezed,
    Object? tCollectId = freezed,
    Object? tCollectDate = freezed,
    Object? tCollectNo = freezed,
    Object? tSalesActivityId = freezed,
    Object? mCustId = freezed,
    Object? tCollectArAmt = freezed,
    Object? tCollectPaymentAmt = freezed,
    Object? tCollectPaymentType = freezed,
    Object? tCollectPaymentImage = freezed,
    Object? tCollectNote = freezed,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? lastEditedBy = freezed,
    Object? lastEditedAt = freezed,
  }) {
    return _then(_value.copyWith(
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as Check?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as Check?,
      tCollectPaymentImageBase64: freezed == tCollectPaymentImageBase64
          ? _value.tCollectPaymentImageBase64
          : tCollectPaymentImageBase64 // ignore: cast_nullable_to_non_nullable
              as String?,
      tCollectId: freezed == tCollectId
          ? _value.tCollectId
          : tCollectId // ignore: cast_nullable_to_non_nullable
              as int?,
      tCollectDate: freezed == tCollectDate
          ? _value.tCollectDate
          : tCollectDate // ignore: cast_nullable_to_non_nullable
              as String?,
      tCollectNo: freezed == tCollectNo
          ? _value.tCollectNo
          : tCollectNo // ignore: cast_nullable_to_non_nullable
              as String?,
      tSalesActivityId: freezed == tSalesActivityId
          ? _value.tSalesActivityId
          : tSalesActivityId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustId: freezed == mCustId
          ? _value.mCustId
          : mCustId // ignore: cast_nullable_to_non_nullable
              as int?,
      tCollectArAmt: freezed == tCollectArAmt
          ? _value.tCollectArAmt
          : tCollectArAmt // ignore: cast_nullable_to_non_nullable
              as int?,
      tCollectPaymentAmt: freezed == tCollectPaymentAmt
          ? _value.tCollectPaymentAmt
          : tCollectPaymentAmt // ignore: cast_nullable_to_non_nullable
              as int?,
      tCollectPaymentType: freezed == tCollectPaymentType
          ? _value.tCollectPaymentType
          : tCollectPaymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      tCollectPaymentImage: freezed == tCollectPaymentImage
          ? _value.tCollectPaymentImage
          : tCollectPaymentImage // ignore: cast_nullable_to_non_nullable
              as String?,
      tCollectNote: freezed == tCollectNote
          ? _value.tCollectNote
          : tCollectNote // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditedBy: freezed == lastEditedBy
          ? _value.lastEditedBy
          : lastEditedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditedAt: freezed == lastEditedAt
          ? _value.lastEditedAt
          : lastEditedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CheckCopyWith<$Res>? get checkIn {
    if (_value.checkIn == null) {
      return null;
    }

    return $CheckCopyWith<$Res>(_value.checkIn!, (value) {
      return _then(_value.copyWith(checkIn: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CheckCopyWith<$Res>? get checkOut {
    if (_value.checkOut == null) {
      return null;
    }

    return $CheckCopyWith<$Res>(_value.checkOut!, (value) {
      return _then(_value.copyWith(checkOut: value) as $Val);
    });
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
      {@JsonKey(name: "check_in") Check? checkIn,
      @JsonKey(name: "check_out") Check? checkOut,
      @JsonKey(name: "t_collect_payment_image_base64")
      String? tCollectPaymentImageBase64,
      @JsonKey(name: "t_collect_id") int? tCollectId,
      @JsonKey(name: "t_collect_date") String? tCollectDate,
      @JsonKey(name: "t_collect_no") String? tCollectNo,
      @JsonKey(name: "t_sales_activity_id") int? tSalesActivityId,
      @JsonKey(name: "m_cust_id") int? mCustId,
      @JsonKey(name: "t_collect_ar_amt") int? tCollectArAmt,
      @JsonKey(name: "t_collect_payment_amt") int? tCollectPaymentAmt,
      @JsonKey(name: "t_collect_payment_type") String? tCollectPaymentType,
      @JsonKey(name: "t_collect_payment_image") String? tCollectPaymentImage,
      @JsonKey(name: "t_collect_note") String? tCollectNote,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "last_edited_by") String? lastEditedBy,
      @JsonKey(name: "last_edited_at") String? lastEditedAt});

  @override
  $CheckCopyWith<$Res>? get checkIn;
  @override
  $CheckCopyWith<$Res>? get checkOut;
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
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? tCollectPaymentImageBase64 = freezed,
    Object? tCollectId = freezed,
    Object? tCollectDate = freezed,
    Object? tCollectNo = freezed,
    Object? tSalesActivityId = freezed,
    Object? mCustId = freezed,
    Object? tCollectArAmt = freezed,
    Object? tCollectPaymentAmt = freezed,
    Object? tCollectPaymentType = freezed,
    Object? tCollectPaymentImage = freezed,
    Object? tCollectNote = freezed,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? lastEditedBy = freezed,
    Object? lastEditedAt = freezed,
  }) {
    return _then(_$DataImpl(
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as Check?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as Check?,
      tCollectPaymentImageBase64: freezed == tCollectPaymentImageBase64
          ? _value.tCollectPaymentImageBase64
          : tCollectPaymentImageBase64 // ignore: cast_nullable_to_non_nullable
              as String?,
      tCollectId: freezed == tCollectId
          ? _value.tCollectId
          : tCollectId // ignore: cast_nullable_to_non_nullable
              as int?,
      tCollectDate: freezed == tCollectDate
          ? _value.tCollectDate
          : tCollectDate // ignore: cast_nullable_to_non_nullable
              as String?,
      tCollectNo: freezed == tCollectNo
          ? _value.tCollectNo
          : tCollectNo // ignore: cast_nullable_to_non_nullable
              as String?,
      tSalesActivityId: freezed == tSalesActivityId
          ? _value.tSalesActivityId
          : tSalesActivityId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustId: freezed == mCustId
          ? _value.mCustId
          : mCustId // ignore: cast_nullable_to_non_nullable
              as int?,
      tCollectArAmt: freezed == tCollectArAmt
          ? _value.tCollectArAmt
          : tCollectArAmt // ignore: cast_nullable_to_non_nullable
              as int?,
      tCollectPaymentAmt: freezed == tCollectPaymentAmt
          ? _value.tCollectPaymentAmt
          : tCollectPaymentAmt // ignore: cast_nullable_to_non_nullable
              as int?,
      tCollectPaymentType: freezed == tCollectPaymentType
          ? _value.tCollectPaymentType
          : tCollectPaymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      tCollectPaymentImage: freezed == tCollectPaymentImage
          ? _value.tCollectPaymentImage
          : tCollectPaymentImage // ignore: cast_nullable_to_non_nullable
              as String?,
      tCollectNote: freezed == tCollectNote
          ? _value.tCollectNote
          : tCollectNote // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditedBy: freezed == lastEditedBy
          ? _value.lastEditedBy
          : lastEditedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEditedAt: freezed == lastEditedAt
          ? _value.lastEditedAt
          : lastEditedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "check_in") this.checkIn,
      @JsonKey(name: "check_out") this.checkOut,
      @JsonKey(name: "t_collect_payment_image_base64")
      this.tCollectPaymentImageBase64,
      @JsonKey(name: "t_collect_id") this.tCollectId,
      @JsonKey(name: "t_collect_date") this.tCollectDate,
      @JsonKey(name: "t_collect_no") this.tCollectNo,
      @JsonKey(name: "t_sales_activity_id") this.tSalesActivityId,
      @JsonKey(name: "m_cust_id") this.mCustId,
      @JsonKey(name: "t_collect_ar_amt") this.tCollectArAmt,
      @JsonKey(name: "t_collect_payment_amt") this.tCollectPaymentAmt,
      @JsonKey(name: "t_collect_payment_type") this.tCollectPaymentType,
      @JsonKey(name: "t_collect_payment_image") this.tCollectPaymentImage,
      @JsonKey(name: "t_collect_note") this.tCollectNote,
      @JsonKey(name: "created_by") this.createdBy,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "last_edited_by") this.lastEditedBy,
      @JsonKey(name: "last_edited_at") this.lastEditedAt});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "check_in")
  final Check? checkIn;
  @override
  @JsonKey(name: "check_out")
  final Check? checkOut;
  @override
  @JsonKey(name: "t_collect_payment_image_base64")
  final String? tCollectPaymentImageBase64;
  @override
  @JsonKey(name: "t_collect_id")
  final int? tCollectId;
  @override
  @JsonKey(name: "t_collect_date")
  final String? tCollectDate;
  @override
  @JsonKey(name: "t_collect_no")
  final String? tCollectNo;
  @override
  @JsonKey(name: "t_sales_activity_id")
  final int? tSalesActivityId;
  @override
  @JsonKey(name: "m_cust_id")
  final int? mCustId;
  @override
  @JsonKey(name: "t_collect_ar_amt")
  final int? tCollectArAmt;
  @override
  @JsonKey(name: "t_collect_payment_amt")
  final int? tCollectPaymentAmt;
  @override
  @JsonKey(name: "t_collect_payment_type")
  final String? tCollectPaymentType;
  @override
  @JsonKey(name: "t_collect_payment_image")
  final String? tCollectPaymentImage;
  @override
  @JsonKey(name: "t_collect_note")
  final String? tCollectNote;
  @override
  @JsonKey(name: "created_by")
  final String? createdBy;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "last_edited_by")
  final String? lastEditedBy;
  @override
  @JsonKey(name: "last_edited_at")
  final String? lastEditedAt;

  @override
  String toString() {
    return 'Data(checkIn: $checkIn, checkOut: $checkOut, tCollectPaymentImageBase64: $tCollectPaymentImageBase64, tCollectId: $tCollectId, tCollectDate: $tCollectDate, tCollectNo: $tCollectNo, tSalesActivityId: $tSalesActivityId, mCustId: $mCustId, tCollectArAmt: $tCollectArAmt, tCollectPaymentAmt: $tCollectPaymentAmt, tCollectPaymentType: $tCollectPaymentType, tCollectPaymentImage: $tCollectPaymentImage, tCollectNote: $tCollectNote, createdBy: $createdBy, createdAt: $createdAt, lastEditedBy: $lastEditedBy, lastEditedAt: $lastEditedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.checkOut, checkOut) ||
                other.checkOut == checkOut) &&
            (identical(other.tCollectPaymentImageBase64,
                    tCollectPaymentImageBase64) ||
                other.tCollectPaymentImageBase64 ==
                    tCollectPaymentImageBase64) &&
            (identical(other.tCollectId, tCollectId) ||
                other.tCollectId == tCollectId) &&
            (identical(other.tCollectDate, tCollectDate) ||
                other.tCollectDate == tCollectDate) &&
            (identical(other.tCollectNo, tCollectNo) ||
                other.tCollectNo == tCollectNo) &&
            (identical(other.tSalesActivityId, tSalesActivityId) ||
                other.tSalesActivityId == tSalesActivityId) &&
            (identical(other.mCustId, mCustId) || other.mCustId == mCustId) &&
            (identical(other.tCollectArAmt, tCollectArAmt) ||
                other.tCollectArAmt == tCollectArAmt) &&
            (identical(other.tCollectPaymentAmt, tCollectPaymentAmt) ||
                other.tCollectPaymentAmt == tCollectPaymentAmt) &&
            (identical(other.tCollectPaymentType, tCollectPaymentType) ||
                other.tCollectPaymentType == tCollectPaymentType) &&
            (identical(other.tCollectPaymentImage, tCollectPaymentImage) ||
                other.tCollectPaymentImage == tCollectPaymentImage) &&
            (identical(other.tCollectNote, tCollectNote) ||
                other.tCollectNote == tCollectNote) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastEditedBy, lastEditedBy) ||
                other.lastEditedBy == lastEditedBy) &&
            (identical(other.lastEditedAt, lastEditedAt) ||
                other.lastEditedAt == lastEditedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      checkIn,
      checkOut,
      tCollectPaymentImageBase64,
      tCollectId,
      tCollectDate,
      tCollectNo,
      tSalesActivityId,
      mCustId,
      tCollectArAmt,
      tCollectPaymentAmt,
      tCollectPaymentType,
      tCollectPaymentImage,
      tCollectNote,
      createdBy,
      createdAt,
      lastEditedBy,
      lastEditedAt);

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
          {@JsonKey(name: "check_in") final Check? checkIn,
          @JsonKey(name: "check_out") final Check? checkOut,
          @JsonKey(name: "t_collect_payment_image_base64")
          final String? tCollectPaymentImageBase64,
          @JsonKey(name: "t_collect_id") final int? tCollectId,
          @JsonKey(name: "t_collect_date") final String? tCollectDate,
          @JsonKey(name: "t_collect_no") final String? tCollectNo,
          @JsonKey(name: "t_sales_activity_id") final int? tSalesActivityId,
          @JsonKey(name: "m_cust_id") final int? mCustId,
          @JsonKey(name: "t_collect_ar_amt") final int? tCollectArAmt,
          @JsonKey(name: "t_collect_payment_amt") final int? tCollectPaymentAmt,
          @JsonKey(name: "t_collect_payment_type")
          final String? tCollectPaymentType,
          @JsonKey(name: "t_collect_payment_image")
          final String? tCollectPaymentImage,
          @JsonKey(name: "t_collect_note") final String? tCollectNote,
          @JsonKey(name: "created_by") final String? createdBy,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "last_edited_by") final String? lastEditedBy,
          @JsonKey(name: "last_edited_at") final String? lastEditedAt}) =
      _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "check_in")
  Check? get checkIn;
  @override
  @JsonKey(name: "check_out")
  Check? get checkOut;
  @override
  @JsonKey(name: "t_collect_payment_image_base64")
  String? get tCollectPaymentImageBase64;
  @override
  @JsonKey(name: "t_collect_id")
  int? get tCollectId;
  @override
  @JsonKey(name: "t_collect_date")
  String? get tCollectDate;
  @override
  @JsonKey(name: "t_collect_no")
  String? get tCollectNo;
  @override
  @JsonKey(name: "t_sales_activity_id")
  int? get tSalesActivityId;
  @override
  @JsonKey(name: "m_cust_id")
  int? get mCustId;
  @override
  @JsonKey(name: "t_collect_ar_amt")
  int? get tCollectArAmt;
  @override
  @JsonKey(name: "t_collect_payment_amt")
  int? get tCollectPaymentAmt;
  @override
  @JsonKey(name: "t_collect_payment_type")
  String? get tCollectPaymentType;
  @override
  @JsonKey(name: "t_collect_payment_image")
  String? get tCollectPaymentImage;
  @override
  @JsonKey(name: "t_collect_note")
  String? get tCollectNote;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "last_edited_by")
  String? get lastEditedBy;
  @override
  @JsonKey(name: "last_edited_at")
  String? get lastEditedAt;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Check _$CheckFromJson(Map<String, dynamic> json) {
  return _Check.fromJson(json);
}

/// @nodoc
mixin _$Check {
  @JsonKey(name: "r_activity_image_base64")
  String? get rActivityImageBase64 => throw _privateConstructorUsedError;
  @JsonKey(name: "r_activity_id")
  int? get rActivityId => throw _privateConstructorUsedError;
  @JsonKey(name: "r_activity_type")
  String? get rActivityType => throw _privateConstructorUsedError;
  @JsonKey(name: "ref_id")
  int? get refId => throw _privateConstructorUsedError;
  @JsonKey(name: "ref_activity_id")
  int? get refActivityId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_employee_id")
  int? get mEmployeeId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_id")
  int? get mCustId => throw _privateConstructorUsedError;
  @JsonKey(name: "m_cust_d_addr_id")
  int? get mCustDAddrId => throw _privateConstructorUsedError;
  @JsonKey(name: "geo_latitude")
  String? get geoLatitude => throw _privateConstructorUsedError;
  @JsonKey(name: "geo_longitude")
  String? get geoLongitude => throw _privateConstructorUsedError;
  @JsonKey(name: "r_activity_note")
  String? get rActivityNote => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "r_activity_image_path")
  String? get rActivityImagePath => throw _privateConstructorUsedError;
  @JsonKey(name: "r_activity_flag")
  String? get rActivityFlag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckCopyWith<Check> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckCopyWith<$Res> {
  factory $CheckCopyWith(Check value, $Res Function(Check) then) =
      _$CheckCopyWithImpl<$Res, Check>;
  @useResult
  $Res call(
      {@JsonKey(name: "r_activity_image_base64") String? rActivityImageBase64,
      @JsonKey(name: "r_activity_id") int? rActivityId,
      @JsonKey(name: "r_activity_type") String? rActivityType,
      @JsonKey(name: "ref_id") int? refId,
      @JsonKey(name: "ref_activity_id") int? refActivityId,
      @JsonKey(name: "m_employee_id") int? mEmployeeId,
      @JsonKey(name: "m_cust_id") int? mCustId,
      @JsonKey(name: "m_cust_d_addr_id") int? mCustDAddrId,
      @JsonKey(name: "geo_latitude") String? geoLatitude,
      @JsonKey(name: "geo_longitude") String? geoLongitude,
      @JsonKey(name: "r_activity_note") String? rActivityNote,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "r_activity_image_path") String? rActivityImagePath,
      @JsonKey(name: "r_activity_flag") String? rActivityFlag});
}

/// @nodoc
class _$CheckCopyWithImpl<$Res, $Val extends Check>
    implements $CheckCopyWith<$Res> {
  _$CheckCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rActivityImageBase64 = freezed,
    Object? rActivityId = freezed,
    Object? rActivityType = freezed,
    Object? refId = freezed,
    Object? refActivityId = freezed,
    Object? mEmployeeId = freezed,
    Object? mCustId = freezed,
    Object? mCustDAddrId = freezed,
    Object? geoLatitude = freezed,
    Object? geoLongitude = freezed,
    Object? rActivityNote = freezed,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? rActivityImagePath = freezed,
    Object? rActivityFlag = freezed,
  }) {
    return _then(_value.copyWith(
      rActivityImageBase64: freezed == rActivityImageBase64
          ? _value.rActivityImageBase64
          : rActivityImageBase64 // ignore: cast_nullable_to_non_nullable
              as String?,
      rActivityId: freezed == rActivityId
          ? _value.rActivityId
          : rActivityId // ignore: cast_nullable_to_non_nullable
              as int?,
      rActivityType: freezed == rActivityType
          ? _value.rActivityType
          : rActivityType // ignore: cast_nullable_to_non_nullable
              as String?,
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as int?,
      refActivityId: freezed == refActivityId
          ? _value.refActivityId
          : refActivityId // ignore: cast_nullable_to_non_nullable
              as int?,
      mEmployeeId: freezed == mEmployeeId
          ? _value.mEmployeeId
          : mEmployeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustId: freezed == mCustId
          ? _value.mCustId
          : mCustId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustDAddrId: freezed == mCustDAddrId
          ? _value.mCustDAddrId
          : mCustDAddrId // ignore: cast_nullable_to_non_nullable
              as int?,
      geoLatitude: freezed == geoLatitude
          ? _value.geoLatitude
          : geoLatitude // ignore: cast_nullable_to_non_nullable
              as String?,
      geoLongitude: freezed == geoLongitude
          ? _value.geoLongitude
          : geoLongitude // ignore: cast_nullable_to_non_nullable
              as String?,
      rActivityNote: freezed == rActivityNote
          ? _value.rActivityNote
          : rActivityNote // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      rActivityImagePath: freezed == rActivityImagePath
          ? _value.rActivityImagePath
          : rActivityImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      rActivityFlag: freezed == rActivityFlag
          ? _value.rActivityFlag
          : rActivityFlag // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckImplCopyWith<$Res> implements $CheckCopyWith<$Res> {
  factory _$$CheckImplCopyWith(
          _$CheckImpl value, $Res Function(_$CheckImpl) then) =
      __$$CheckImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "r_activity_image_base64") String? rActivityImageBase64,
      @JsonKey(name: "r_activity_id") int? rActivityId,
      @JsonKey(name: "r_activity_type") String? rActivityType,
      @JsonKey(name: "ref_id") int? refId,
      @JsonKey(name: "ref_activity_id") int? refActivityId,
      @JsonKey(name: "m_employee_id") int? mEmployeeId,
      @JsonKey(name: "m_cust_id") int? mCustId,
      @JsonKey(name: "m_cust_d_addr_id") int? mCustDAddrId,
      @JsonKey(name: "geo_latitude") String? geoLatitude,
      @JsonKey(name: "geo_longitude") String? geoLongitude,
      @JsonKey(name: "r_activity_note") String? rActivityNote,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "r_activity_image_path") String? rActivityImagePath,
      @JsonKey(name: "r_activity_flag") String? rActivityFlag});
}

/// @nodoc
class __$$CheckImplCopyWithImpl<$Res>
    extends _$CheckCopyWithImpl<$Res, _$CheckImpl>
    implements _$$CheckImplCopyWith<$Res> {
  __$$CheckImplCopyWithImpl(
      _$CheckImpl _value, $Res Function(_$CheckImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rActivityImageBase64 = freezed,
    Object? rActivityId = freezed,
    Object? rActivityType = freezed,
    Object? refId = freezed,
    Object? refActivityId = freezed,
    Object? mEmployeeId = freezed,
    Object? mCustId = freezed,
    Object? mCustDAddrId = freezed,
    Object? geoLatitude = freezed,
    Object? geoLongitude = freezed,
    Object? rActivityNote = freezed,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? rActivityImagePath = freezed,
    Object? rActivityFlag = freezed,
  }) {
    return _then(_$CheckImpl(
      rActivityImageBase64: freezed == rActivityImageBase64
          ? _value.rActivityImageBase64
          : rActivityImageBase64 // ignore: cast_nullable_to_non_nullable
              as String?,
      rActivityId: freezed == rActivityId
          ? _value.rActivityId
          : rActivityId // ignore: cast_nullable_to_non_nullable
              as int?,
      rActivityType: freezed == rActivityType
          ? _value.rActivityType
          : rActivityType // ignore: cast_nullable_to_non_nullable
              as String?,
      refId: freezed == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as int?,
      refActivityId: freezed == refActivityId
          ? _value.refActivityId
          : refActivityId // ignore: cast_nullable_to_non_nullable
              as int?,
      mEmployeeId: freezed == mEmployeeId
          ? _value.mEmployeeId
          : mEmployeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustId: freezed == mCustId
          ? _value.mCustId
          : mCustId // ignore: cast_nullable_to_non_nullable
              as int?,
      mCustDAddrId: freezed == mCustDAddrId
          ? _value.mCustDAddrId
          : mCustDAddrId // ignore: cast_nullable_to_non_nullable
              as int?,
      geoLatitude: freezed == geoLatitude
          ? _value.geoLatitude
          : geoLatitude // ignore: cast_nullable_to_non_nullable
              as String?,
      geoLongitude: freezed == geoLongitude
          ? _value.geoLongitude
          : geoLongitude // ignore: cast_nullable_to_non_nullable
              as String?,
      rActivityNote: freezed == rActivityNote
          ? _value.rActivityNote
          : rActivityNote // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      rActivityImagePath: freezed == rActivityImagePath
          ? _value.rActivityImagePath
          : rActivityImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      rActivityFlag: freezed == rActivityFlag
          ? _value.rActivityFlag
          : rActivityFlag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckImpl implements _Check {
  const _$CheckImpl(
      {@JsonKey(name: "r_activity_image_base64") this.rActivityImageBase64,
      @JsonKey(name: "r_activity_id") this.rActivityId,
      @JsonKey(name: "r_activity_type") this.rActivityType,
      @JsonKey(name: "ref_id") this.refId,
      @JsonKey(name: "ref_activity_id") this.refActivityId,
      @JsonKey(name: "m_employee_id") this.mEmployeeId,
      @JsonKey(name: "m_cust_id") this.mCustId,
      @JsonKey(name: "m_cust_d_addr_id") this.mCustDAddrId,
      @JsonKey(name: "geo_latitude") this.geoLatitude,
      @JsonKey(name: "geo_longitude") this.geoLongitude,
      @JsonKey(name: "r_activity_note") this.rActivityNote,
      @JsonKey(name: "created_by") this.createdBy,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "r_activity_image_path") this.rActivityImagePath,
      @JsonKey(name: "r_activity_flag") this.rActivityFlag});

  factory _$CheckImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckImplFromJson(json);

  @override
  @JsonKey(name: "r_activity_image_base64")
  final String? rActivityImageBase64;
  @override
  @JsonKey(name: "r_activity_id")
  final int? rActivityId;
  @override
  @JsonKey(name: "r_activity_type")
  final String? rActivityType;
  @override
  @JsonKey(name: "ref_id")
  final int? refId;
  @override
  @JsonKey(name: "ref_activity_id")
  final int? refActivityId;
  @override
  @JsonKey(name: "m_employee_id")
  final int? mEmployeeId;
  @override
  @JsonKey(name: "m_cust_id")
  final int? mCustId;
  @override
  @JsonKey(name: "m_cust_d_addr_id")
  final int? mCustDAddrId;
  @override
  @JsonKey(name: "geo_latitude")
  final String? geoLatitude;
  @override
  @JsonKey(name: "geo_longitude")
  final String? geoLongitude;
  @override
  @JsonKey(name: "r_activity_note")
  final String? rActivityNote;
  @override
  @JsonKey(name: "created_by")
  final String? createdBy;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "r_activity_image_path")
  final String? rActivityImagePath;
  @override
  @JsonKey(name: "r_activity_flag")
  final String? rActivityFlag;

  @override
  String toString() {
    return 'Check(rActivityImageBase64: $rActivityImageBase64, rActivityId: $rActivityId, rActivityType: $rActivityType, refId: $refId, refActivityId: $refActivityId, mEmployeeId: $mEmployeeId, mCustId: $mCustId, mCustDAddrId: $mCustDAddrId, geoLatitude: $geoLatitude, geoLongitude: $geoLongitude, rActivityNote: $rActivityNote, createdBy: $createdBy, createdAt: $createdAt, rActivityImagePath: $rActivityImagePath, rActivityFlag: $rActivityFlag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckImpl &&
            (identical(other.rActivityImageBase64, rActivityImageBase64) ||
                other.rActivityImageBase64 == rActivityImageBase64) &&
            (identical(other.rActivityId, rActivityId) ||
                other.rActivityId == rActivityId) &&
            (identical(other.rActivityType, rActivityType) ||
                other.rActivityType == rActivityType) &&
            (identical(other.refId, refId) || other.refId == refId) &&
            (identical(other.refActivityId, refActivityId) ||
                other.refActivityId == refActivityId) &&
            (identical(other.mEmployeeId, mEmployeeId) ||
                other.mEmployeeId == mEmployeeId) &&
            (identical(other.mCustId, mCustId) || other.mCustId == mCustId) &&
            (identical(other.mCustDAddrId, mCustDAddrId) ||
                other.mCustDAddrId == mCustDAddrId) &&
            (identical(other.geoLatitude, geoLatitude) ||
                other.geoLatitude == geoLatitude) &&
            (identical(other.geoLongitude, geoLongitude) ||
                other.geoLongitude == geoLongitude) &&
            (identical(other.rActivityNote, rActivityNote) ||
                other.rActivityNote == rActivityNote) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.rActivityImagePath, rActivityImagePath) ||
                other.rActivityImagePath == rActivityImagePath) &&
            (identical(other.rActivityFlag, rActivityFlag) ||
                other.rActivityFlag == rActivityFlag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      rActivityImageBase64,
      rActivityId,
      rActivityType,
      refId,
      refActivityId,
      mEmployeeId,
      mCustId,
      mCustDAddrId,
      geoLatitude,
      geoLongitude,
      rActivityNote,
      createdBy,
      createdAt,
      rActivityImagePath,
      rActivityFlag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckImplCopyWith<_$CheckImpl> get copyWith =>
      __$$CheckImplCopyWithImpl<_$CheckImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckImplToJson(
      this,
    );
  }
}

abstract class _Check implements Check {
  const factory _Check(
      {@JsonKey(name: "r_activity_image_base64")
      final String? rActivityImageBase64,
      @JsonKey(name: "r_activity_id") final int? rActivityId,
      @JsonKey(name: "r_activity_type") final String? rActivityType,
      @JsonKey(name: "ref_id") final int? refId,
      @JsonKey(name: "ref_activity_id") final int? refActivityId,
      @JsonKey(name: "m_employee_id") final int? mEmployeeId,
      @JsonKey(name: "m_cust_id") final int? mCustId,
      @JsonKey(name: "m_cust_d_addr_id") final int? mCustDAddrId,
      @JsonKey(name: "geo_latitude") final String? geoLatitude,
      @JsonKey(name: "geo_longitude") final String? geoLongitude,
      @JsonKey(name: "r_activity_note") final String? rActivityNote,
      @JsonKey(name: "created_by") final String? createdBy,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "r_activity_image_path") final String? rActivityImagePath,
      @JsonKey(name: "r_activity_flag")
      final String? rActivityFlag}) = _$CheckImpl;

  factory _Check.fromJson(Map<String, dynamic> json) = _$CheckImpl.fromJson;

  @override
  @JsonKey(name: "r_activity_image_base64")
  String? get rActivityImageBase64;
  @override
  @JsonKey(name: "r_activity_id")
  int? get rActivityId;
  @override
  @JsonKey(name: "r_activity_type")
  String? get rActivityType;
  @override
  @JsonKey(name: "ref_id")
  int? get refId;
  @override
  @JsonKey(name: "ref_activity_id")
  int? get refActivityId;
  @override
  @JsonKey(name: "m_employee_id")
  int? get mEmployeeId;
  @override
  @JsonKey(name: "m_cust_id")
  int? get mCustId;
  @override
  @JsonKey(name: "m_cust_d_addr_id")
  int? get mCustDAddrId;
  @override
  @JsonKey(name: "geo_latitude")
  String? get geoLatitude;
  @override
  @JsonKey(name: "geo_longitude")
  String? get geoLongitude;
  @override
  @JsonKey(name: "r_activity_note")
  String? get rActivityNote;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "r_activity_image_path")
  String? get rActivityImagePath;
  @override
  @JsonKey(name: "r_activity_flag")
  String? get rActivityFlag;
  @override
  @JsonKey(ignore: true)
  _$$CheckImplCopyWith<_$CheckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
