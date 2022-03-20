// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'currency_pair_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyPair _$CurrencyPairFromJson(Map<String, dynamic> json) {
  return _CurrencyPair.fromJson(json);
}

/// @nodoc
class _$CurrencyPairTearOff {
  const _$CurrencyPairTearOff();

  _CurrencyPair call(
      {required DateTime timestamp,
      required String open,
      required String high,
      required String low,
      required String last,
      required String volume}) {
    return _CurrencyPair(
      timestamp: timestamp,
      open: open,
      high: high,
      low: low,
      last: last,
      volume: volume,
    );
  }

  CurrencyPair fromJson(Map<String, Object?> json) {
    return CurrencyPair.fromJson(json);
  }
}

/// @nodoc
const $CurrencyPair = _$CurrencyPairTearOff();

/// @nodoc
mixin _$CurrencyPair {
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get open => throw _privateConstructorUsedError;
  String get high => throw _privateConstructorUsedError;
  String get low => throw _privateConstructorUsedError;
  String get last => throw _privateConstructorUsedError;
  String get volume => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyPairCopyWith<CurrencyPair> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyPairCopyWith<$Res> {
  factory $CurrencyPairCopyWith(
          CurrencyPair value, $Res Function(CurrencyPair) then) =
      _$CurrencyPairCopyWithImpl<$Res>;
  $Res call(
      {DateTime timestamp,
      String open,
      String high,
      String low,
      String last,
      String volume});
}

/// @nodoc
class _$CurrencyPairCopyWithImpl<$Res> implements $CurrencyPairCopyWith<$Res> {
  _$CurrencyPairCopyWithImpl(this._value, this._then);

  final CurrencyPair _value;
  // ignore: unused_field
  final $Res Function(CurrencyPair) _then;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? open = freezed,
    Object? high = freezed,
    Object? low = freezed,
    Object? last = freezed,
    Object? volume = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      open: open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String,
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as String,
      low: low == freezed
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as String,
      last: last == freezed
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CurrencyPairCopyWith<$Res>
    implements $CurrencyPairCopyWith<$Res> {
  factory _$CurrencyPairCopyWith(
          _CurrencyPair value, $Res Function(_CurrencyPair) then) =
      __$CurrencyPairCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime timestamp,
      String open,
      String high,
      String low,
      String last,
      String volume});
}

/// @nodoc
class __$CurrencyPairCopyWithImpl<$Res> extends _$CurrencyPairCopyWithImpl<$Res>
    implements _$CurrencyPairCopyWith<$Res> {
  __$CurrencyPairCopyWithImpl(
      _CurrencyPair _value, $Res Function(_CurrencyPair) _then)
      : super(_value, (v) => _then(v as _CurrencyPair));

  @override
  _CurrencyPair get _value => super._value as _CurrencyPair;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? open = freezed,
    Object? high = freezed,
    Object? low = freezed,
    Object? last = freezed,
    Object? volume = freezed,
  }) {
    return _then(_CurrencyPair(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      open: open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String,
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as String,
      low: low == freezed
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as String,
      last: last == freezed
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyPair implements _CurrencyPair {
  const _$_CurrencyPair(
      {required this.timestamp,
      required this.open,
      required this.high,
      required this.low,
      required this.last,
      required this.volume});

  factory _$_CurrencyPair.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyPairFromJson(json);

  @override
  final DateTime timestamp;
  @override
  final String open;
  @override
  final String high;
  @override
  final String low;
  @override
  final String last;
  @override
  final String volume;

  @override
  String toString() {
    return 'CurrencyPair(timestamp: $timestamp, open: $open, high: $high, low: $low, last: $last, volume: $volume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrencyPair &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality().equals(other.open, open) &&
            const DeepCollectionEquality().equals(other.high, high) &&
            const DeepCollectionEquality().equals(other.low, low) &&
            const DeepCollectionEquality().equals(other.last, last) &&
            const DeepCollectionEquality().equals(other.volume, volume));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(open),
      const DeepCollectionEquality().hash(high),
      const DeepCollectionEquality().hash(low),
      const DeepCollectionEquality().hash(last),
      const DeepCollectionEquality().hash(volume));

  @JsonKey(ignore: true)
  @override
  _$CurrencyPairCopyWith<_CurrencyPair> get copyWith =>
      __$CurrencyPairCopyWithImpl<_CurrencyPair>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyPairToJson(this);
  }
}

abstract class _CurrencyPair implements CurrencyPair {
  const factory _CurrencyPair(
      {required DateTime timestamp,
      required String open,
      required String high,
      required String low,
      required String last,
      required String volume}) = _$_CurrencyPair;

  factory _CurrencyPair.fromJson(Map<String, dynamic> json) =
      _$_CurrencyPair.fromJson;

  @override
  DateTime get timestamp;
  @override
  String get open;
  @override
  String get high;
  @override
  String get low;
  @override
  String get last;
  @override
  String get volume;
  @override
  @JsonKey(ignore: true)
  _$CurrencyPairCopyWith<_CurrencyPair> get copyWith =>
      throw _privateConstructorUsedError;
}
