import 'package:flutter/material.dart';
import '../models/product.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Order Page')),
      body: ListView.builder(
        itemCount: dummyProducts.length,
        itemBuilder: (context, index) {
          final product = dummyProducts[index];
          return Card(
            child: ListTile(
              leading: Image.asset(product.image, width: 50, height: 50),
              title: Text(product.name),
              subtitle: Text('Rp ${product.price.toStringAsFixed(0)}'),
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text('Order'),
              ),
            ),
          );
        },
      ),
    );
  }
}
