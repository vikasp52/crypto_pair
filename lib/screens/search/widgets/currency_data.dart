import 'package:crypto_pair/repository/currency_pair_repository/model/currency_pair_model.dart';
import 'package:crypto_pair/screens/search/cubit/crypto_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets.dart';

class CurrencyData extends StatelessWidget {
  const CurrencyData({
    Key? key,
    required this.currencyPair,
    required this.currencyName,
  }) : super(key: key);

  final CurrencyPair currencyPair;
  final String currencyName;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CryptoCubit>();

    return Padding(
      padding: const EdgeInsets.only(
        top: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CurrencyTitle(
            title: currencyName.toUpperCase(), //'BTCUSD',
            date: currencyPair.timestamp.toLocal().toString(),
          ),
          const SizedBox(
            height: 20,
          ),
          CurrencyValues(
            title1: 'OPEN',
            title2: 'HIGH',
            value1: currencyPair.open,
            value2: currencyPair.high,
          ),
          const SizedBox(
            height: 30,
          ),
          CurrencyValues(
            title1: 'LOW',
            title2: 'LAST',
            value1: currencyPair.low,
            value2: currencyPair.last,
          ),
          const SizedBox(
            height: 50,
          ),
          VolumeData(
            title: 'VOLUME',
            value: currencyPair.volume,
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: cubit.showHideOrderBook,
              child: const Text(
                'VIEW ORDER BOOK',
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
