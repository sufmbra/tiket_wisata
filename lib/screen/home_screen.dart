import 'package:flutter/material.dart';
import 'package:tiket_wisata/constants/colors.dart';
import 'package:tiket_wisata/gen/assets.gen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Menampilkan Icon
            Image.asset(
              Assets.icons.logo1.path,
              width: 50,
              height: 50,
            ),
            const SizedBox(height: 20),

            // Menampilkan Image
            Image.asset(
              Assets.images.image1.path,
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 20),

            Text(
              'Hello Flutter!',
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}