import 'package:flutter/material.dart';

class SearchState extends StatelessWidget {
  const SearchState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 60,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.search_outlined,
            color: Colors.grey,
            size: 150,
          ),
          Text(
            'Enter a currency pair to load the data',
            style: TextStyle(
              color: Colors.grey.shade700,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
