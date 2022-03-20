import 'dart:convert';

import 'package:crypto_pair/network/constants.dart';
import 'package:crypto_pair/repository/currency_pair_repository/model/currency_pair_model.dart';
import 'package:http/http.dart' as http;

class CurrencyPairRepository {
  Future<CurrencyPair> getCurrencyPair({
    required String currencyName,
  }) async {
    print('Method called');

    String url = Constants.BASE_URL + Constants.tick + currencyName;

    print('URL is: $url');

    final response = await http.get(Uri.parse(url));

    print('response status code is: ${response.statusCode}');
    print('response is: $response');

    if (response.statusCode == 200) {
      CurrencyPair currencyPair =
          CurrencyPair.fromJson(jsonDecode(response.body));

      print('currencyPair: $currencyPair');

      return CurrencyPair.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
