import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:sales_telecom012021/app/home/view/components/home_page.dart';
import 'package:sales_telecom012021/app/login/controller/login_store.dart';
import 'package:sales_telecom012021/global/components/myButton.dart';
import 'package:sales_telecom012021/global/function/myNav.dart';

class ButtonLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _loginStore = Provider.of<LoginStore>(context);
    return Observer(builder: (_) {
      return MyButton(
        'Login',
        _loginStore.isformValid
            ? () {
                _loginStore.loggedIn = false;
                _loginStore.getLogin(context);
                if (_loginStore.loggedIn) {
                  push(
                    context,
                    HomePage(),
                  );
                }
              }
            : null,
        loading: _loginStore.loading,
      );
    });
  }
}
