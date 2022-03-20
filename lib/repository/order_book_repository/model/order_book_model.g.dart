// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderBook _$$_OrderBookFromJson(Map<String, dynamic> json) => _$_OrderBook(
      bids: (json['bids'] as List<dynamic>)
          .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
      asks: (json['asks'] as List<dynamic>)
          .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
    );

Map<String, dynamic> _$$_OrderBookToJson(_$_OrderBook instance) =>
    <String, dynamic>{
      'bids': instance.bids,
      'asks': instance.asks,
    };
