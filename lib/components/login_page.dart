import 'package:flutter/material.dart';
import '../components/custom_button.dart';
import '../utils/navigator_extension.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButton(
          text: 'Login',
          onPressed: () {
            context.pushReplacementNamed('/main'); // Implementasi navigator
          },
        ),
      ),
    );
  }
}