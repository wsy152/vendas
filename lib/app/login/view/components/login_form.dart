import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:sales_telecom012021/app/home/view/home_page.dart';
import 'package:sales_telecom012021/app/login/controller/login_store.dart';
import 'package:sales_telecom012021/app/login/view/components/buttonlogin.dart';
import 'package:sales_telecom012021/app/login/view/components/textfiel_login.dart';
import 'package:sales_telecom012021/app/login/view/components/textfield_senha.dart';
import 'package:sales_telecom012021/global/components/sized_box.dart';
import 'package:sales_telecom012021/global/function/alert.dart';
import 'package:sales_telecom012021/global/function/myNav.dart';

class Loginform extends StatefulWidget {
  @override
  _LoginformState createState() => _LoginformState();
}

class _LoginformState extends State<Loginform> {
  Size get size => MediaQuery.of(context).size;
  bool get tamanhoTela => size.width < 450;
  LoginStore loginStore;
  ReactionDisposer disposer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    loginStore = Provider.of<LoginStore>(context);
    disposer = reaction(
      (context) => loginStore.loggedIn,
      (loggedIn) {
        if (loggedIn) {
          loginStore.loggedInError = false;

          push(
            context,
            HomePage(),
            replace: true,
          );
        }
      },
    );
    disposer = reaction(
      (context) => loginStore.loggedInError,
      (loggedInError) {
        if (loggedInError) {
          alert(
            context,
            loginStore.response.msg,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
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
              width: tamanhoTela ? size.width * 0.93 : size.width * 0.50,
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
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

  @override
  void dispose() {
    disposer();
    super.dispose();
  }
}
