import 'package:flutter/material.dart';

class OrderBook extends StatelessWidget {
  const OrderBook({Key? key}) : super(key: key);

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
              child: DataTable(
            columnSpacing: 40,
            columns: [
              orderBookTitle(
                "BID PRICE",
              ),
              orderBookTitle(
                "QTY",
              ),
              orderBookTitle(
                "QTY",
              ),
              orderBookTitle(
                "ASK PRICE",
              ),
            ],
            rows: const [
              DataRow(cells: [
                DataCell(
                  Text(
                    '1232323.00',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '1232323.00',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '1232323.00',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '1232323.00',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
              ]),
              DataRow(cells: [
                DataCell(
                  Text(
                    '1232323.00',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '1232323.00',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '1232323.00',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '1232323.00',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
              ]),
              DataRow(cells: [
                DataCell(
                  Text(
                    '1232323.00',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '1232323.00',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '1232323.00',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '1232323.00',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
              ]),
              DataRow(cells: [
                DataCell(
                  Text(
                    '1232323.00',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '1232323.00',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '1232323.00',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '1232323.00',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
              ]),
              DataRow(cells: [
                DataCell(
                  Text(
                    '1232323.00',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '1232323.00',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '1232323.00',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    '1232323.00',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
              ]),
            ],
          )),
        ],
      ),
    );
  }
}

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
