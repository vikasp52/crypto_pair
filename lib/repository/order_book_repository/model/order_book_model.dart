import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_book_model.freezed.dart';
part 'order_book_model.g.dart';

@freezed
class OrderBook with _$OrderBook {
  const factory OrderBook({
    required List<List<String>> bids,
    required List<List<String>> asks,
  }) = _OrderBook;

  factory OrderBook.fromJson(Map<String, dynamic> json) =>
      _$OrderBookFromJson(json);
}
