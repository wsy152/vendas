import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:sales_telecom012021/app/login/controller/login_store.dart';

class TextFieldLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _loginStore = Provider.of<LoginStore>(context);
    final _tLogin = TextEditingController(
        text: 'edvaldo.santana@experiencesolucoes.com.br');
    final _focusSenha = FocusNode();
    return Observer(builder: (_) {
      return Form(
        key: _formKey,
        child: MyTextFormField(
          'Login',
          'Digite seu login',
          enabled: !_loginStore.loading,
          icon: Icon(Icons.person),
          ctrl: _tLogin,
          validar: _validateLogin,
          textInputAction: TextInputAction.next,
          nextFocus: _focusSenha,
          onChanged: _loginStore.setLogin,
        ),
      );
    });
  }

  String _validateLogin(String text) {
    if (text.isEmpty) {
      return 'Digete a senha';
    }
    return null;
  }
}
