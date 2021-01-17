import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:sales_telecom012021/app/login/controller/login_store.dart';
import 'package:sales_telecom012021/global/components/myButton.dart';

class ButtonLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _loginStore = Provider.of<LoginStore>(context);
    return Observer(builder: (_) {
      return MyButton(
        'Login',
        _loginStore.loginPressed,
      );
    });
  }
}
