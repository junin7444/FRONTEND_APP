import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background_login.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("LOGIN",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    labelText: "E-MAIL",
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "SENHA",
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                  ),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFDD742E),
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 14),
                  ),
                  onPressed: () => Navigator.pushNamed(context, '/cadastro'),
                  child: Text("ENTRAR",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 16),
                TextButton(
                  onPressed: () {},
                  child: Text("ESQUECEU A SENHA?",
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
