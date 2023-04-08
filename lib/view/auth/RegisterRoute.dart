import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme/app_themes.dart';

class RegisterRoute extends StatefulWidget {
  const RegisterRoute({Key? key}) : super(key: key);

  @override
  State<RegisterRoute> createState() => _RegisterRouteState();
}

class _RegisterRouteState extends State<RegisterRoute> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
        return true as Future<bool>;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding:
              const EdgeInsets.only(left: 30, top: 70, right: 30, bottom: 0),
          child: _registerItem(),
        ),
      ),
    ));
  }

  Widget _registerItem() {
    return Column(
      children: [
        const Image(width: 200, image: AssetImage('assets/logo6.png')),
        Text("REACH YOUR DREAM TARGET",
            style: TextStyle(color: AppThemes.colors.purple, fontSize: 15)),
        Text("SIGN UP",
            style: TextStyle(
                color: AppThemes.colors.gray,
                fontSize: 17,
                fontWeight: FontWeight.w300)),
        const SizedBox(height: 10),
        _fieldEmail(),
        const SizedBox(height: 10),
        _fieldPassword(),
        const SizedBox(height: 10),
        _fieldConfirmPassword(),
        const SizedBox(height: 10),
        _buttonRegister(),
        const SizedBox(height: 10),
        _descriptionHaveAccount(),
        const SizedBox(height: 40),
        _footerDescription()
      ],
    );
  }

  Widget _fieldEmail() {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Email',
          hintStyle: TextStyle(
            color: AppThemes.colors.gray,
            fontWeight: FontWeight.w300,
            fontSize: 13,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
          prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 18, right: 12),
              child:
                  Icon(Icons.email_outlined, color: AppThemes.colors.purple)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppThemes.colors.purple),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppThemes.colors.purple),
              borderRadius: BorderRadius.circular(10))),
    );
  }

  Widget _fieldPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          hintStyle: TextStyle(
            color: AppThemes.colors.gray,
            fontWeight: FontWeight.w300,
            fontSize: 13,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
          prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 18, right: 12),
              child: Icon(Icons.key_outlined, color: AppThemes.colors.purple)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppThemes.colors.purple),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppThemes.colors.purple),
              borderRadius: BorderRadius.circular(10))),
    );
  }

  Widget _fieldConfirmPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Retype Password',
          hintStyle: TextStyle(
            color: AppThemes.colors.gray,
            fontWeight: FontWeight.w300,
            fontSize: 13,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
          prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 18, right: 12),
              child: Icon(Icons.key_outlined, color: AppThemes.colors.purple)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppThemes.colors.purple),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppThemes.colors.purple),
              borderRadius: BorderRadius.circular(10))),
    );
  }

  Widget _buttonRegister() {
    return SizedBox(
      width: 350,
      height: 40,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(AppThemes.colors.purple),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)))),
        child: const Text("Sign Up"),
      ),
    );
  }

  Widget _descriptionHaveAccount() {
    return const Text('Already have account?',
        style: TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.black,
            decorationColor: Colors.black));
  }

  Widget _footerDescription() {
    return Column(
      children: [
        Text("Icorrect version 1.0",
            style: TextStyle(fontSize: 14, color: AppThemes.colors.gray)),
        Text("Contact : support@ielts-correction.com",
            style: TextStyle(fontSize: 14, color: AppThemes.colors.gray)),
        const SizedBox(height: 10),
        Text("@Csupporter JSC",
            style: TextStyle(fontSize: 16, color: AppThemes.colors.black)),
      ],
    );
  }
}
