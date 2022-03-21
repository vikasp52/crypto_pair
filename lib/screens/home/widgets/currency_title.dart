import 'package:crypto_pair/utils/text_style.dart';
import 'package:flutter/material.dart';

class CurrencyTitle extends StatelessWidget {
  const CurrencyTitle({
    Key? key,
    required this.title,
    required this.date,
  }) : super(key: key);

  final String title;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyles.currencyNameTextStyle,
        ),
        Text(
          date,
          style: TextStyles.currencyDateTextStyle,
        ),
      ],
    );
  }
}
