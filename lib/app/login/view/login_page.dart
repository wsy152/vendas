import 'package:flutter/material.dart';
import 'package:sales_telecom012021/app/login/view/components/login_form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Loginform(),
        ],
      ),
    );
  }
}
