import 'package:flutter/material.dart';
import 'package:icorrect/callbacks/LoginCallBack.dart';
import 'package:icorrect/presenter/LoginPresenter.dart';
import 'package:icorrect/theme/app_themes.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:icorrect/view/auth/RegisterRoute.dart';
import 'package:icorrect/view/dialog/MessageDialog.dart';

class LoginRoute extends StatefulWidget {
  const LoginRoute({Key? key}) : super(key: key);

  @override
  State<LoginRoute> createState() => _LoginRouteState();
}

class _LoginRouteState extends State<LoginRoute> implements LoginCallBack {
  final _txtEmailController = TextEditingController();
  final _txtPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding:
              const EdgeInsets.only(left: 30, top: 70, right: 30, bottom: 0),
          child: _loginItem(),
        ),
      ),
    );
  }

  Widget _loginItem() {
    return Column(
      children: [
        const Image(width: 200, image: AssetImage('assets/logo6.png')),
        Text("REACH YOUR DREAM TARGET",
            style: TextStyle(color: AppThemes.colors.purple, fontSize: 15)),
        const SizedBox(height: 20),
        _fieldEmail(),
        const SizedBox(height: 20),
        _fieldPassword(),
        const SizedBox(height: 20),
        _buttonLogin(),
        const SizedBox(height: 10),
        _textButtonSignUp(),
        _textButtonForgotPassword(),
        const SizedBox(height: 50),
        _optionsLogin(),
        const SizedBox(height: 30),
        _footerDescription()
      ],
    );
  }

  Widget _fieldEmail() {
    return TextField(
      controller: _txtEmailController,
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
      controller: _txtPasswordController,
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

  Widget _buttonLogin() {
    return SizedBox(
      width: 350,
      height: 40,
      child: ElevatedButton(
        onPressed: () {
          _onPressLogin();
        },
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(AppThemes.colors.purple),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)))),
        child: const Text("Sign In"),
      ),
    );
  }

  void _onPressLogin() {
    String email = _txtEmailController.text;
    String password = _txtPasswordController.text;

    var presenter = LoginPresenter();
    presenter.execLogin(email, password, this);
  }

  @override
  void loginFail(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return MessageDialog.alertDialog(context, message);
        });
  }

  @override
  void loginSuccess(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return MessageDialog.alertDialog(context, message);
        });
  }

  @override
  void loginWarning(String message) {
    // Fluttertoast.showToast(
    //     msg: message,
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.BOTTOM,
    //     timeInSecForIosWeb: 2,
    //     backgroundColor: Colors.amberAccent,
    //     textColor: Colors.white,
    //     fontSize: 16.0);

    showDialog(
        context: context,
        builder: (context) {
          return MessageDialog.alertDialog(context, message);
        });
  }

  Widget _textButtonSignUp() {
    return TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const RegisterRoute()));
        },
        style: TextButton.styleFrom(
            padding: const EdgeInsets.all(0),
            minimumSize: const Size(50, 30),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            alignment: Alignment.centerLeft),
        child: const Text(
          "Sign up",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              decorationColor: Colors.black),
        ));
  }

  Widget _textButtonForgotPassword() {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            padding: const EdgeInsets.all(0),
            minimumSize: const Size(50, 30),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            alignment: Alignment.centerLeft),
        child: const Text(
          "Forgot Password ?",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              decorationColor: Colors.black),
        ));
  }

  Widget _optionsLogin() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppThemes.colors.gray),
                height: 1,
                margin: const EdgeInsets.only(
                    left: 80, right: 10, top: 10, bottom: 0),
              ),
            ),
            Text(
              "Or",
              style: TextStyle(color: AppThemes.colors.gray, fontSize: 15),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppThemes.colors.gray),
                height: 1,
                margin: const EdgeInsets.only(
                    left: 10, right: 80, top: 10, bottom: 0),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              flex: 1,
              child: SizedBox(
                width: 150,
                height: 40,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          AppThemes.colors.facebook),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                  label: const Text("Facebook"),
                  icon: const Icon(Icons.facebook),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: SizedBox(
                width: 150,
                height: 40,
                child: ElevatedButton.icon(
                  icon: Image.asset(width: 25, "assets/gg_logo.png"),
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          AppThemes.colors.white),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                  label: Text(
                    "Google",
                    style: TextStyle(color: AppThemes.colors.gray),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
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
