import 'package:flutter/material.dart';
import 'package:mobile/core/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 112, 168, 157),
              Color.fromARGB(255, 142, 244, 156),
              Color.fromARGB(255, 244, 244, 244),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Text('Login', style: AppTheme.lightTheme.textTheme.headlineLarge),
            ],
          ),
        ),
      ),
    );
  }
}
