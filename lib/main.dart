import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/cadastro_screen.dart';

void main() {
  runApp(ReciclometroApp());
}

class ReciclometroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reciclômetro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF4CAF50),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color(0xFFDD742E), // cor dos botões principais
        ),
        fontFamily: 'Roboto',
      ),
      initialRoute: '/login', // abre direto a tela de login
      routes: {
        '/login': (context) => LoginScreen(),
        '/cadastro': (context) => CadastroScreen(),
      },
    );
  }
}




