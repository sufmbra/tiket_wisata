import 'package:flutter/material.dart';

class PaymentReceiptPage extends StatelessWidget {
  final Map<String, dynamic> order;
  final String paymentMethod;

  const PaymentReceiptPage({super.key, required this.order, required this.paymentMethod});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Struk Pembayaran')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, color: Colors.green, size: 80),
            const SizedBox(height: 20),
            const Text('Pembayaran Berhasil!', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text('Tiket: ${order['name']}', style: const TextStyle(fontSize: 18)),
            Text('Harga: Rp ${order['price']}', style: const TextStyle(fontSize: 18)),
            Text('Metode: $paymentMethod', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: const Text('Kembali ke Home'),
            ),
          ],
        ),
      ),
    );
  }
}
