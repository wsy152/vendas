import 'package:flutter/material.dart';
import 'package:sales_telecom012021/app/login/view/components/login_form.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Loginform(),
        ],
      ),
    );
  }
}
