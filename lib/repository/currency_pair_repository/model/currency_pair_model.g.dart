// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_pair_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyPair _$$_CurrencyPairFromJson(Map<String, dynamic> json) =>
    _$_CurrencyPair(
      timestamp: DateTime.parse(json['timestamp'] as String),
      open: json['open'] as String,
      high: json['high'] as String,
      low: json['low'] as String,
      last: json['last'] as String,
      volume: json['volume'] as String,
    );

Map<String, dynamic> _$$_CurrencyPairToJson(_$_CurrencyPair instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'open': instance.open,
      'high': instance.high,
      'low': instance.low,
      'last': instance.last,
      'volume': instance.volume,
    };
