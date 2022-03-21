import 'package:crypto_pair/repository/currency_pair_repository/model/currency_pair_model.dart';

abstract class CryptoState {}

class InitialState extends CryptoState {}

class LoadingState extends CryptoState {}

class LoadedState extends CryptoState {
  LoadedState({
    required this.currencyPair,
    required this.orderBook,
    required this.currencyName,
  });

  final CurrencyPair currencyPair;
  final List<List<String>> orderBook;
  final String currencyName;
}

class CurrencyNotExistState extends CryptoState {
  CurrencyNotExistState(this.message);

  final String message;
}

class CurrencyErrorState extends CryptoState {
  CurrencyErrorState(this.errorMessage);

  final String errorMessage;
}

class ShowHideOrderBookState extends CryptoState {
  ShowHideOrderBookState(this.showOrderBook);

  final bool showOrderBook;
}
