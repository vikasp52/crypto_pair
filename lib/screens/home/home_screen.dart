import 'package:crypto_pair/screens/home/cubit/crypto_cubit.dart';
import 'package:crypto_pair/screens/home/cubit/crypto_state.dart';
import 'package:crypto_pair/screens/home/widgets/widgets.dart';
import 'package:crypto_pair/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCryptoScreen extends StatelessWidget {
  const SearchCryptoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CryptoCubit>();

    return BlocBuilder<CryptoCubit, CryptoState>(
      builder: (context, state) => Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: (state is LoadedState)
            ? FloatingActionButton(
                backgroundColor: Colors.deepPurpleAccent,
                onPressed: () =>
                    cubit.getCurrencyData(currencyName: state.currencyName),
                tooltip: 'Refresh',
                child: const Icon(Icons.refresh),
              )
            : null,
        body: BlocBuilder<CryptoCubit, CryptoState>(builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                    bottom: 10,
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    children: [
                      const SearchTextField(),
                      (state is InitialState)
                          ? const SearchState()
                          : (state is LoadingState)
                              ? const Padding(
                                  padding: EdgeInsets.only(top: 30),
                                  child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.deepPurpleAccent,
                                  )),
                                )
                              : (state is LoadedState)
                                  ? CurrencyData(
                                      currencyPair: state.currencyPair,
                                      currencyName: state.currencyName,
                                    )
                                  : (state is CurrencyNotExistState)
                                      ? Column(
                                          children: [
                                            const SizedBox(height: 30),
                                            const Icon(
                                              Icons.hourglass_empty,
                                              color: Colors.grey,
                                              size: 150,
                                            ),
                                            Text(
                                              'This currency not exist',
                                              style:
                                                  TextStyles.messageTextStyle,
                                            ),
                                          ],
                                        )
                                      : Column(
                                          children: [
                                            const SizedBox(height: 30),
                                            const Icon(
                                              Icons.error,
                                              color: Colors.grey,
                                              size: 150,
                                            ),
                                            Center(
                                              child: Text(
                                                'There is some issue',
                                                style:
                                                    TextStyles.messageTextStyle,
                                              ),
                                            ),
                                          ],
                                        ),
                    ],
                  ),
                ),
                if (state is LoadedState)
                  OrderBookWidget(
                    orderBook: state.orderBook,
                  ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
