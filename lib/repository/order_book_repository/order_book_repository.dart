import 'dart:convert';

import 'package:crypto_pair/network/constants.dart';
import 'package:crypto_pair/repository/order_book_repository/model/order_book_model.dart';
import 'package:http/http.dart' as http;

class OrderBookRepository {
  Future<OrderBook> getOrderBookData({
    required String currencyName,
  }) async {
    String url = Constants.BASE_URL + Constants.orderBook + currencyName;
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return OrderBook.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
