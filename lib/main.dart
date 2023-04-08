import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icorrect/theme/app_themes.dart';
import 'package:icorrect/view/auth/LoginRoute.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(
  //    SystemUiOverlayStyle(statusBarColor: AppThemes
  //    .colors.purple)
  // );
  runApp(const MyIcorrect());
}

class MyIcorrect extends StatelessWidget {
  const MyIcorrect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginRoute(),
    );
  }
}
