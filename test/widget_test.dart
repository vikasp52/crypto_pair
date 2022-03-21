import 'package:crypto_pair/repository/currency_pair_repository/currency_pair_repository.dart';
import 'package:crypto_pair/repository/currency_pair_repository/model/currency_pair_model.dart';
import 'package:crypto_pair/repository/order_book_repository/model/order_book_model.dart';
import 'package:crypto_pair/repository/order_book_repository/order_book_repository.dart';
import 'package:crypto_pair/screens/home/cubit/crypto_cubit.dart';
import 'package:crypto_pair/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCurrencyPairRepository extends Mock
    implements CurrencyPairRepository {}

class MockOrderBookRepository extends Mock implements OrderBookRepository {}

void main() {
  late MockCurrencyPairRepository mockCurrencyPairRepository;
  late MockOrderBookRepository mockOrderBookRepository;

  var cryptoPair = const CurrencyPair(
    high: '38305.24',
    low: '38305.24',
    open: '38305.24',
    last: '38305.24',
    volume: '38305.24',
    timestamp: '1647689649',
  );

  var orderBook = const OrderBook(bids: [
    ["41960.39", "0.14852219"],
    ["41960.39", "0.14852219"],
    ["41960.39", "0.14852219"],
    ["41960.39", "0.14852219"],
    ["41960.39", "0.14852219"],
  ], asks: [
    ["41960.39", "0.14852219"],
    ["41960.39", "0.14852219"],
    ["41960.39", "0.14852219"],
    ["41960.39", "0.14852219"],
    ["41960.39", "0.14852219"],
  ]);

  setUp(() {
    mockCurrencyPairRepository = MockCurrencyPairRepository();
    mockOrderBookRepository = MockOrderBookRepository();
  });

  void getCurrencyAndOrderBookData() {
    when(() =>
            mockCurrencyPairRepository.getCurrencyPair(currencyName: 'btcusd'))
        .thenAnswer((_) async {
      Future.delayed(const Duration(seconds: 2), () {});
      return cryptoPair;
    });

    when(() => mockOrderBookRepository.getOrderBookData(currencyName: 'btcusd'))
        .thenAnswer((_) async {
      Future.delayed(const Duration(seconds: 2), () {});
      return orderBook;
    });
  }

  Widget createTestWidget() {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => CryptoCubit(
          currencyPairRepository: mockCurrencyPairRepository,
          orderBookRepository: mockOrderBookRepository,
        ),
        child: const SearchCryptoScreen(),
      ),
    );
  }

  testWidgets('home text box should be displayed', (WidgetTester tester) async {
    //getCurrencyAndOrderBookData();
    await tester.pumpWidget(createTestWidget());
    expect(find.byType(TextFormField), findsOneWidget);
    expect(find.text('Enter currency pair'), findsOneWidget);
    expect(find.byType(IconButton), findsOneWidget);
  });

  testWidgets('home icon and text should be displayed',
      (WidgetTester tester) async {
    await tester.pumpWidget(createTestWidget());
    expect(find.byType(Icon), findsNWidgets(2));
    expect(find.text('Enter a currency pair to load the data'), findsOneWidget);
  });

  testWidgets(
      'loading indicators should be displayed while loading crypto data',
      (WidgetTester tester) async {
    getCurrencyAndOrderBookData();
    await tester.pumpWidget(createTestWidget());
    tester.widget(find.byType(TextFormField));
    await tester.enterText(find.byType(TextFormField), "btcusd");
    await tester.tap(find.byType(IconButton));
    await tester.pump(const Duration(milliseconds: 500));
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    await tester.pumpAndSettle();
  });
}
