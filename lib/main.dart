import 'package:flutter/material.dart';
import 'components/main_page.dart';
import 'pages/order_page.dart';
import 'pages/order_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tiket Wisata',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainPage(),
        '/order': (context) => OrderPage(),
      },
    );
  }
}
