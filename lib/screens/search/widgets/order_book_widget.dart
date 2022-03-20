import 'package:flutter/material.dart';

class OrderBookWidget extends StatelessWidget {
  const OrderBookWidget({
    Key? key,
    required this.orderBook,
  }) : super(key: key);

  final List<List<String>> orderBook;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              bottom: 20,
              left: 10,
            ),
            child: Text('ORDER BOOK',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ),
          Card(
              elevation: 10,
              child: DataTable(
                columnSpacing: 40,
                columns: ['BID PRICE', 'QTY', 'QTY', 'ASK PRICE']
                    .map(
                      (title) => orderBookTitle(
                        title,
                      ),
                    )
                    .toList(),
                rows: orderBook
                    .map((e) => DataRow(
                        cells: e
                            .map(
                              (e) => rowData(
                                e,
                              ),
                            )
                            .toList()))
                    .toList(),
              )),
        ],
      ),
    );
  }
}

DataCell rowData(String data) => DataCell(
      Text(
        data,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontSize: 10,
        ),
      ),
    );

DataColumn orderBookTitle(String title) => DataColumn(
      label: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontSize: 10,
        ),
      ),
    );
