import 'package:bloc_test/bloc_test.dart';
import 'package:crypto_pair/repository/currency_pair_repository/currency_pair_repository.dart';
import 'package:crypto_pair/repository/currency_pair_repository/model/currency_pair_model.dart';
import 'package:crypto_pair/repository/order_book_repository/model/order_book_model.dart';
import 'package:crypto_pair/repository/order_book_repository/order_book_repository.dart';
import 'package:crypto_pair/screens/search/cubit/crypto_cubit.dart';
import 'package:crypto_pair/screens/search/cubit/crypto_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCurrencyPairRepository extends Mock
    implements CurrencyPairRepository {}

class MockOrderBookRepository extends Mock implements OrderBookRepository {}

main() {
  late MockCurrencyPairRepository mockCurrencyPairRepository;
  late MockOrderBookRepository mockOrderBookRepository;
  late CryptoCubit cryptoCubit;

  setUp(() {
    mockCurrencyPairRepository = MockCurrencyPairRepository();
    mockOrderBookRepository = MockOrderBookRepository();

    cryptoCubit = CryptoCubit(
      currencyPairRepository: mockCurrencyPairRepository,
      orderBookRepository: mockOrderBookRepository,
    );

    when(() =>
            mockCurrencyPairRepository.getCurrencyPair(currencyName: 'btcusd'))
        .thenAnswer((_) async => CurrencyPair(
              high: '38305.24',
              low: '38305.24',
              open: '38305.24',
              last: '38305.24',
              volume: '38305.24',
              timestamp: DateTime.now(),
            ));

    when(() => mockOrderBookRepository.getOrderBookData(currencyName: 'btcusd'))
        .thenAnswer((_) async => const OrderBook(bids: [
              ["41960.39", "0.14852219"],
              ["41960.39", "0.14852219"],
            ], asks: [
              ["41960.39", "0.14852219"],
              ["41960.39", "0.14852219"],
            ]));
  });

  tearDown(() {
    cryptoCubit.close();
  });

  test('Bloc should have initial state as [InitialState]', () {
    expect(cryptoCubit.state.runtimeType, InitialState);
  });

  blocTest('Should emit [LoadingState, LoadedState]',
      build: () => cryptoCubit,
      act: (CryptoCubit cubit) {
        cubit.getCurrencyData(currencyName: 'btcusd');
      },
      expect: () => [
            isA<LoadingState>(),
            isA<LoadedState>(),
          ]);
}
