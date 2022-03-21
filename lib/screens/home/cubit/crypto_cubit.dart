import 'dart:async';

import 'package:crypto_pair/repository/currency_pair_repository/currency_pair_repository.dart';
import 'package:crypto_pair/repository/order_book_repository/order_book_repository.dart';
import 'package:crypto_pair/screens/home/cubit/crypto_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CryptoCubit extends Cubit<CryptoState> {
  CryptoCubit({
    required this.currencyPairRepository,
    required this.orderBookRepository,
  }) : super(InitialState()) {
    controller.add(false);
  }

  final CurrencyPairRepository currencyPairRepository;
  final OrderBookRepository orderBookRepository;

  static const _currencyList = [
    'btcusd',
    'btceur',
    'btcgbp',
    'btcpax',
    'btcusdc',
    'gbpusd',
    'gbpeur',
    'eurusd',
    'xrpusd',
    'xrpeur',
    'xrpbtc',
    'xrpgbp',
    'xrppax',
    'ltcusd',
    'ltceur',
    'ltcbtc',
    'ltcgbp',
    'ethusd',
    'etheur',
    'ethbtc',
    'ethgbp',
    'ethpax',
    'ethusdc',
    'bchusd',
    'bcheur',
    'bchbtc',
    'bchgbp',
    'paxusd',
    'paxeur',
    'paxgbp',
    'xlmbtc',
    'xlmusd',
    'xlmeur',
    'xlmgbp',
    'linkusd',
    'linkeur',
    'linkgbp',
    'linkbtc',
    'linketh',
    'omgusd',
    'omgeur',
    'omggbp',
    'omgbtc',
    'usdcusd',
    'usdceur'
  ];

  var controller = StreamController<bool>.broadcast();
  bool _visible = false;

  void showHideOrderBook() {
    _visible = !_visible;
    controller.add(_visible);
  }

  Future<void> getCurrencyData({
    required String currencyName,
  }) async {
    final bool currencyNotExist = _currencyList.contains(currencyName);
    if (!currencyNotExist) {
      return emit(CurrencyNotExistState('Currency does not exist'));
    }

    try {
      emit(LoadingState());

      final currencyData = await currencyPairRepository.getCurrencyPair(
          currencyName: currencyName);

      final orderBookData = await getOrderBookData(currencyName);

      int timeStamp = int.parse(currencyData.timestamp);

      var date = DateTime.fromMillisecondsSinceEpoch(timeStamp * 1000);

      final DateFormat formatter = DateFormat('dd MMMM yyyy, hh:mm:ss');
      final String formatted = formatter.format(date);

      return emit(
        LoadedState(
          currencyName: currencyName,
          currencyPair: currencyData.copyWith(timestamp: formatted),
          orderBook: orderBookData,
        ),
      );
    } catch (e) {
      emit(
        CurrencyErrorState('There is some issue'),
      );
    }
  }

  Future<List<List<String>>> getOrderBookData(String currencyName) async {
    List<List<String>> combinedList = [];

    final orderBookData =
        await orderBookRepository.getOrderBookData(currencyName: currencyName);

    for (int i = 0; i <= 4; i++) {
      combinedList
          .add(orderBookData.bids[i] + orderBookData.asks[i].reversed.toList());
    }

    return combinedList;
  }
}
