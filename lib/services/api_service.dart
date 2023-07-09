import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/user_model.dart';

mixin ApiService {
  static const String _baseUrl = 'https://jsonplaceholder.typicode.com';

  static Future<List<UserModel>> getUsers() async {
    final res = await http.get(Uri.parse('$_baseUrl/posts'));
    final body = jsonDecode(res.body);

    if (res.statusCode != 200) throw Exception('Error getting users');

    final List<UserModel> users = [];

    for (var user in body) {
      users.add(UserModel.fromJson(user));
    }

    return users;
  }
}
