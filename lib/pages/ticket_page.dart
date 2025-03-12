import 'package:flutter/material.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  final List<Map<String, dynamic>> tickets = [
    {'id': 1, 'name': 'Tiket Wisata A', 'price': 50000},
    {'id': 2, 'name': 'Tiket Wisata B', 'price': 75000},
    {'id': 3, 'name': 'Tiket Wisata C', 'price': 100000},
  ];

  void _deleteTicket(int index) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Hapus Tiket'),
        content: const Text('Apakah Anda yakin ingin menghapus tiket ini?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Batal'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                tickets.removeAt(index);
              });
              Navigator.pop(context);
            },
            child: const Text('Hapus', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tiket Saya')),
      body: ListView.builder(
        itemCount: tickets.length,
        itemBuilder: (context, index) {
          return TicketCard(
            ticket: tickets[index],
            onDelete: () => _deleteTicket(index),
          );
        },
      ),
    );
  }
}

class TicketCard extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final VoidCallback onDelete;

  const TicketCard({super.key, required this.ticket, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        leading: const Icon(Icons.local_activity, size: 40, color: Colors.blue),
        title: Text(ticket['name']),
        subtitle: Text('Rp ${ticket['price']}'),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: onDelete,
        ),
      ),
    );
  }
}
