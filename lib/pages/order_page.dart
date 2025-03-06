import 'package:flutter/material.dart';
import '../models/product.dart';
import 'order_detail_page.dart';

class OrderPage extends StatelessWidget {
  OrderPage({super.key});

  final List<Product> products = dummyProducts; // Menggunakan daftar produk dari models/product.dart

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Order Page')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            child: ListTile(
              leading: Image.asset(product.image, width: 50, height: 50, fit: BoxFit.cover),
              title: Text(product.name),
              subtitle: Text('Rp ${product.price.toStringAsFixed(0)}'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderDetailPage(product: product),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
