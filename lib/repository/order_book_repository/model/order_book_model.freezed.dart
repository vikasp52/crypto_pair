// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderBook _$OrderBookFromJson(Map<String, dynamic> json) {
  return _OrderBook.fromJson(json);
}

/// @nodoc
class _$OrderBookTearOff {
  const _$OrderBookTearOff();

  _OrderBook call(
      {required List<List<String>> bids, required List<List<String>> asks}) {
    return _OrderBook(
      bids: bids,
      asks: asks,
    );
  }

  OrderBook fromJson(Map<String, Object?> json) {
    return OrderBook.fromJson(json);
  }
}

/// @nodoc
const $OrderBook = _$OrderBookTearOff();

/// @nodoc
mixin _$OrderBook {
  List<List<String>> get bids => throw _privateConstructorUsedError;
  List<List<String>> get asks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderBookCopyWith<OrderBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderBookCopyWith<$Res> {
  factory $OrderBookCopyWith(OrderBook value, $Res Function(OrderBook) then) =
      _$OrderBookCopyWithImpl<$Res>;
  $Res call({List<List<String>> bids, List<List<String>> asks});
}

/// @nodoc
class _$OrderBookCopyWithImpl<$Res> implements $OrderBookCopyWith<$Res> {
  _$OrderBookCopyWithImpl(this._value, this._then);

  final OrderBook _value;
  // ignore: unused_field
  final $Res Function(OrderBook) _then;

  @override
  $Res call({
    Object? bids = freezed,
    Object? asks = freezed,
  }) {
    return _then(_value.copyWith(
      bids: bids == freezed
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      asks: asks == freezed
          ? _value.asks
          : asks // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ));
  }
}

/// @nodoc
abstract class _$OrderBookCopyWith<$Res> implements $OrderBookCopyWith<$Res> {
  factory _$OrderBookCopyWith(
          _OrderBook value, $Res Function(_OrderBook) then) =
      __$OrderBookCopyWithImpl<$Res>;
  @override
  $Res call({List<List<String>> bids, List<List<String>> asks});
}

/// @nodoc
class __$OrderBookCopyWithImpl<$Res> extends _$OrderBookCopyWithImpl<$Res>
    implements _$OrderBookCopyWith<$Res> {
  __$OrderBookCopyWithImpl(_OrderBook _value, $Res Function(_OrderBook) _then)
      : super(_value, (v) => _then(v as _OrderBook));

  @override
  _OrderBook get _value => super._value as _OrderBook;

  @override
  $Res call({
    Object? bids = freezed,
    Object? asks = freezed,
  }) {
    return _then(_OrderBook(
      bids: bids == freezed
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      asks: asks == freezed
          ? _value.asks
          : asks // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderBook implements _OrderBook {
  const _$_OrderBook({required this.bids, required this.asks});

  factory _$_OrderBook.fromJson(Map<String, dynamic> json) =>
      _$$_OrderBookFromJson(json);

  @override
  final List<List<String>> bids;
  @override
  final List<List<String>> asks;

  @override
  String toString() {
    return 'OrderBook(bids: $bids, asks: $asks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderBook &&
            const DeepCollectionEquality().equals(other.bids, bids) &&
            const DeepCollectionEquality().equals(other.asks, asks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bids),
      const DeepCollectionEquality().hash(asks));

  @JsonKey(ignore: true)
  @override
  _$OrderBookCopyWith<_OrderBook> get copyWith =>
      __$OrderBookCopyWithImpl<_OrderBook>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderBookToJson(this);
  }
}

abstract class _OrderBook implements OrderBook {
  const factory _OrderBook(
      {required List<List<String>> bids,
      required List<List<String>> asks}) = _$_OrderBook;

  factory _OrderBook.fromJson(Map<String, dynamic> json) =
      _$_OrderBook.fromJson;

  @override
  List<List<String>> get bids;
  @override
  List<List<String>> get asks;
  @override
  @JsonKey(ignore: true)
  _$OrderBookCopyWith<_OrderBook> get copyWith =>
      throw _privateConstructorUsedError;
}
