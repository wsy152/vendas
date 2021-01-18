import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:sales_telecom012021/app/login/controller/login_store.dart';
import 'package:sales_telecom012021/global/components/myTextFormField.dart';

class TextFieldSenha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _loginStore = Provider.of<LoginStore>(context);
    return Observer(builder: (_) {
      return MyTextFormField(
        'Senha',
        'Digite sua senha',
        enabled: !_loginStore.loading,
        iconData: _loginStore.passwordVisible
            ? Icons.visibility_off
            : Icons.visibility,
        icon: Icon(
          Icons.lock,
        ),
        senha: !_loginStore.passwordVisible,
        onTapVisibility: _loginStore.togglePasswordVisibility,
        onChanged: _loginStore.setSenha,
      );
    });
  }
}
