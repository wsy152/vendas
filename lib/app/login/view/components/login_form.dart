import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:sales_telecom012021/app/login/view/components/buttonlogin.dart';
import 'package:sales_telecom012021/app/login/view/components/textfiel_login.dart';
import 'package:sales_telecom012021/app/login/view/components/textfield_senha.dart';
import 'package:sales_telecom012021/global/components/sized_box.dart';

class Loginform extends StatefulWidget {
  @override
  _LoginformState createState() => _LoginformState();
}

class _LoginformState extends State<Loginform> {
  ReactionDisposer disposer;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Form(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Container(
                height: 150,
              ),
            ),
            Container(
              width: size.width * 0.90,
              margin: EdgeInsets.symmetric(vertical: 50),
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 2.0,
                        offset: Offset(0.0, 2.0),
                        spreadRadius: 1)
                  ]),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextFieldLogin(),
                    MySizedBox(),
                    TextFieldSenha(),
                    SizedBox(
                      height: 30,
                    ),
                    ButtonLogin(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
