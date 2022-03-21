import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_pair_model.freezed.dart';
part 'currency_pair_model.g.dart';

@freezed
class CurrencyPair with _$CurrencyPair {
  const factory CurrencyPair({
    required String timestamp,
    required String open,
    required String high,
    required String low,
    required String last,
    required String volume,
  }) = _CurrencyPair;

  factory CurrencyPair.fromJson(Map<String, dynamic> json) =>
      _$CurrencyPairFromJson(json);
}
