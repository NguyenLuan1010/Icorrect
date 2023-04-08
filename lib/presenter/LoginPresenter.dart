import 'dart:convert';

import 'package:icorrect/api_helper/UserRepositories.dart';
import 'package:icorrect/callbacks/LoginCallBack.dart';
import 'package:http/http.dart' as http;

import '../api_helper/APIHelper.dart';

class LoginPresenter {
  final String REGEX_EMAIL =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#\$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  Future<void> execLogin(
      String email, String password, LoginCallBack callBack) async {
    if (email.isEmpty || password.isEmpty) {
      callBack.loginWarning("Please input data completely !");
      return;
    }
    if (!RegExp(REGEX_EMAIL).hasMatch(email)) {
      callBack.loginWarning("Invalid email .Please try again !");
      return;
    }

    Map<String, dynamic> jsonResponse =
        await UserRepositories.instance().checkLogin(email, password);

    if (jsonResponse.isNotEmpty) {
      String status = jsonResponse['status'] as String;

      if (status == "success") {
        callBack.loginSuccess("Login successfully !");
      } else {
        callBack.loginFail("Email or password was wrong !");
      }
    } else {
      callBack.loginFail("An error occur.Please try again !");
    }
  }
}
