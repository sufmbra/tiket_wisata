import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'payment_receipt_page.dart';

class OrderDetailPage extends StatefulWidget {
  final Map<String, dynamic> order; // Hanya menerima "order"

  const OrderDetailPage({super.key, required this.order});

  @override
  State<OrderDetailPage> createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  String? selectedPayment;

  void _confirmPayment() {
    if (selectedPayment == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Pilih metode pembayaran terlebih dahulu')),
      );
      return;
    }

    if (selectedPayment == 'QRIS') {
      _showQRISDialog();
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PaymentReceiptPage(
            order: widget.order,
            paymentMethod: selectedPayment!,
          ),
        ),
      );
    }
  }

  void _showQRISDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('QRIS Payment'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Silakan scan QR code untuk pembayaran.'),
            const SizedBox(height: 10),
            QrImageView(
              data: "https://example.com/payment/${widget.order['id']}",
              version: QrVersions.auto,
              size: 200.0,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Tutup'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaymentReceiptPage(
                    order: widget.order,
                    paymentMethod: 'QRIS',
                  ),
                ),
              );
            },
            child: const Text('Selesai'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Pesanan')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.order['name'], style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text('Harga: Rp ${widget.order['price']}'),
            const SizedBox(height: 20),
            const Text('Pilih Metode Pembayaran:', style: TextStyle(fontWeight: FontWeight.bold)),
            ListTile(
              title: const Text('QRIS'),
              leading: Radio(
                value: 'QRIS',
                groupValue: selectedPayment,
                onChanged: (value) => setState(() => selectedPayment = value),
              ),
            ),
            ListTile(
              title: const Text('Cash'),
              leading: Radio(
                value: 'Cash',
                groupValue: selectedPayment,
                onChanged: (value) => setState(() => selectedPayment = value),
              ),
            ),
            ListTile(
              title: const Text('Transfer Bank'),
              leading: Radio(
                value: 'Transfer',
                groupValue: selectedPayment,
                onChanged: (value) => setState(() => selectedPayment = value),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _confirmPayment,
                child: const Text('Konfirmasi Pembayaran'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
