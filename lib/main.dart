import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'pages/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reciclômetro',
      theme: AppTheme.theme,
      home: const LoginPage(),
    );
  }
}
