import 'package:flutter/material.dart';

class TextStyles {
  static final messageTextStyle = TextStyle(
    color: Colors.grey.shade700,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  static const hintTextStyle = TextStyle(
    color: Color(0xffa19d9d),
    fontWeight: FontWeight.w500,
  );

  static const currencyNameTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: 30,
  );

  static final currencyDateTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.grey.shade700,
    fontSize: 14,
  );

  static const orderBookTitleTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static const rowDataTextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.black,
    fontSize: 10,
  );

  static const columnTitleTextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.black,
    fontSize: 10,
  );
}
