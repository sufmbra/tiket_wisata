import 'package:flutter/material.dart';
import 'order_detail_page.dart';

class OrderPage extends StatelessWidget {
  final List<Map<String, dynamic>> orders = [
    {'id': 1, 'name': 'Tiket Wisata A', 'price': 50000},
    {'id': 2, 'name': 'Tiket Wisata B', 'price': 75000},
    {'id': 3, 'name': 'Tiket Wisata C', 'price': 100000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Order Page')),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(orders[index]['name']),
            subtitle: Text('Harga: Rp ${orders[index]['price']}'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderDetailPage(order: orders[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}