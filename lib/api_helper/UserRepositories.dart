import 'dart:async';
import 'dart:convert';

import 'package:icorrect/api_helper/APIHelper.dart';
import 'package:http/http.dart' as http;

class UserRepositories {
  UserRepositories._();

  static final UserRepositories _repos = UserRepositories._();

  factory UserRepositories.instance() => _repos;

  Future<Map<String, dynamic>> checkLogin(String email, String password) async {
    final response = await http.post(Uri.parse(APIHelper.API_LOGIN),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'email': email,
          'password': password,
        }));

    Map<String, dynamic> jsonResponse = {};

    if (response.statusCode == APIHelper.RESPONSE_OK) {
      jsonResponse = json.decode(response.body);
    }

    return jsonResponse;
  }


}
