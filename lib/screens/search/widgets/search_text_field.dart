import 'package:crypto_pair/screens/search/cubit/crypto_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cryptoCubit = context.read<CryptoCubit>();

    return Container(
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: const Color(0xfff3f3f2),
        borderRadius: BorderRadius.circular(3),
      ),
      child: TextFormField(
        controller: _textEditingController,
        onFieldSubmitted: (_) => cryptoCubit.getCurrencyData(
          currencyName: _textEditingController.text,
        ),
        inputFormatters: [
          FilteringTextInputFormatter.allow(
            RegExp("[a-zA-Z]"),
          ),
        ],
        decoration: InputDecoration(
          hintText: 'Enter currency pair',
          hintStyle: const TextStyle(
            color: Color(0xffa19d9d),
            fontWeight: FontWeight.w500,
          ),
          fillColor: Colors.blue,
          border: InputBorder.none,
          suffixIcon: IconButton(
            onPressed: () => cryptoCubit.getCurrencyData(
              currencyName: _textEditingController.text,
            ),
            icon: const Icon(
              Icons.search_outlined,
            ),
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
