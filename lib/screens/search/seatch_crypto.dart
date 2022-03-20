import 'package:crypto_pair/screens/search/cubit/crypto_cubit.dart';
import 'package:crypto_pair/screens/search/cubit/crypto_state.dart';
import 'package:crypto_pair/screens/search/widgets/widgets.dart';
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
        body: SingleChildScrollView(
          child:
              BlocBuilder<CryptoCubit, CryptoState>(builder: (context, state) {
            return Column(
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
                              ? const Center(
                                  child: CircularProgressIndicator(),
                                )
                              : (state is LoadedState)
                                  ? CurrencyData(
                                      currencyPair: state.currencyPair,
                                      currencyName: state.currencyName,
                                    )
                                  : (state is CurrencyNotExistState)
                                      ? const Center(
                                          child: Text(
                                            'This currency not exist',
                                          ),
                                        )
                                      : const Center(
                                          child: Text(
                                            'There is some issue',
                                          ),
                                        ),
                    ],
                  ),
                ),
                if (state is LoadedState)
                  StreamBuilder<bool>(
                      stream: cubit.controller.stream,
                      builder: (context, snapshot) {
                        return (snapshot.data ?? false)
                            ? OrderBookWidget(
                                orderBook: state.orderBook,
                              )
                            : const SizedBox.shrink();
                      }),
              ],
            );
          }),
        ),
      ),
    );
  }
}
