import 'package:flutter/material.dart';
import 'components/splash_page.dart';
import 'components/login_page.dart';
import 'components/main_page.dart';
// ignore: unused_import
import 'models/product.dart';
// ignore: unused_import
import 'pages/order_page.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splash',  // Halaman pertama yang dibuka
      routes: {
        '/splash': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/main': (context) => const MainPage(),
      },
    );
  }
}