import 'package:crypto_pair/screens/home/cubit/crypto_cubit.dart';
import 'package:crypto_pair/screens/home/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderBookWidget extends StatelessWidget {
  const OrderBookWidget({
    Key? key,
    required this.orderBook,
  }) : super(key: key);
  final List<List<String>> orderBook;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CryptoCubit>();
    return StreamBuilder<bool>(
        stream: cubit.controller.stream,
        builder: (context, snapshot) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: cubit.showHideOrderBook,
                    child: Text(
                      '${(snapshot.data ?? false) ? 'HIDE' : 'VIEW'} ORDER BOOK',
                      style: const TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              (snapshot.data ?? false)
                  ? OrderBookTable(
                      orderBook: orderBook,
                    )
                  : const SizedBox.shrink(),
            ],
          );
        });
  }
}
