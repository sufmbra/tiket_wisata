import 'package:flutter/material.dart';
import '../models/product.dart';

class OrderDetailPage extends StatelessWidget {
  final Product product;

  const OrderDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(product.image, width: 200, height: 200),
            const SizedBox(height: 20),
            Text(product.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('Harga: Rp ${product.price.toStringAsFixed(0)}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showQRISDialog(context);
              },
              child: const Text('Bayar Sekarang'),
            ),
          ],
        ),
      ),
    );
  }

  void _showQRISDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('QRIS Payment'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Silakan scan QR code untuk pembayaran.'),
            const SizedBox(height: 10),
            Image.asset('assets/images/tiket_a.png', width: 200, height: 200), // QRIS Image
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Tutup'),
          ),
        ],
      ),
    );
  }
}
