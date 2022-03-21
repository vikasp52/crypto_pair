import 'dart:convert';

import 'package:crypto_pair/network/constants.dart';
import 'package:crypto_pair/repository/currency_pair_repository/model/currency_pair_model.dart';
import 'package:http/http.dart' as http;

class CurrencyPairRepository {
  Future<CurrencyPair> getCurrencyPair({
    required String currencyName,
  }) async {
    String url = Constants.BASE_URL + Constants.tick + currencyName;

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return CurrencyPair.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }
}
