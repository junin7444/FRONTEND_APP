import 'package:http/http.dart' as http;
import 'dart:convert';

const String baseUrl = "http://192.168.1.7:8080"; // ajuste se rodar em servidor

class ApiService {
  Future<String> registerUser(String nome, String email, String senha) async {
    final response = await http.post(
      Uri.parse('$baseUrl/users/register'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'nome': nome, 'email': email, 'senha': senha}),
    );
    return response.body;
  }

  Future<Map<String, dynamic>?> loginUser(String email, String senha) async {
    final response = await http.post(
      Uri.parse('$baseUrl/users/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'senha': senha}),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return null;
    }
  }

  Future<String> deleteUser(int id) async {
    final response = await http.delete(Uri.parse('$baseUrl/users/$id'));
    return response.body;
  }
}
