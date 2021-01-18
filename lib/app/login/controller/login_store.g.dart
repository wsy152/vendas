// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStoreBase, Store {
  Computed<bool> _$isLoginValidComputed;

  @override
  bool get isLoginValid =>
      (_$isLoginValidComputed ??= Computed<bool>(() => super.isLoginValid,
              name: '_LoginStoreBase.isLoginValid'))
          .value;
  Computed<bool> _$isSenhaValidComputed;

  @override
  bool get isSenhaValid =>
      (_$isSenhaValidComputed ??= Computed<bool>(() => super.isSenhaValid,
              name: '_LoginStoreBase.isSenhaValid'))
          .value;
  Computed<Function> _$loginPressedComputed;

  @override
  Function get loginPressed =>
      (_$loginPressedComputed ??= Computed<Function>(() => super.loginPressed,
              name: '_LoginStoreBase.loginPressed'))
          .value;

  final _$passwordVisibleAtom = Atom(name: '_LoginStoreBase.passwordVisible');

  @override
  bool get passwordVisible {
    _$passwordVisibleAtom.reportRead();
    return super.passwordVisible;
  }

  @override
  set passwordVisible(bool value) {
    _$passwordVisibleAtom.reportWrite(value, super.passwordVisible, () {
      super.passwordVisible = value;
    });
  }

  final _$_loginAtom = Atom(name: '_LoginStoreBase._login');

  @override
  String get _login {
    _$_loginAtom.reportRead();
    return super._login;
  }

  @override
  set _login(String value) {
    _$_loginAtom.reportWrite(value, super._login, () {
      super._login = value;
    });
  }

  final _$_senhaAtom = Atom(name: '_LoginStoreBase._senha');

  @override
  String get _senha {
    _$_senhaAtom.reportRead();
    return super._senha;
  }

  @override
  set _senha(String value) {
    _$_senhaAtom.reportWrite(value, super._senha, () {
      super._senha = value;
    });
  }

  final _$loadingAtom = Atom(name: '_LoginStoreBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$loggedInAtom = Atom(name: '_LoginStoreBase.loggedIn');

  @override
  bool get loggedIn {
    _$loggedInAtom.reportRead();
    return super.loggedIn;
  }

  @override
  set loggedIn(bool value) {
    _$loggedInAtom.reportWrite(value, super.loggedIn, () {
      super.loggedIn = value;
    });
  }

  final _$loggedInErrorAtom = Atom(name: '_LoginStoreBase.loggedInError');

  @override
  bool get loggedInError {
    _$loggedInErrorAtom.reportRead();
    return super.loggedInError;
  }

  @override
  set loggedInError(bool value) {
    _$loggedInErrorAtom.reportWrite(value, super.loggedInError, () {
      super.loggedInError = value;
    });
  }

  final _$responseAtom = Atom(name: '_LoginStoreBase.response');

  @override
  ResponseApi<dynamic> get response {
    _$responseAtom.reportRead();
    return super.response;
  }

  @override
  set response(ResponseApi<dynamic> value) {
    _$responseAtom.reportWrite(value, super.response, () {
      super.response = value;
    });
  }

  final _$getLoginAsyncAction = AsyncAction('_LoginStoreBase.getLogin');

  @override
  Future<void> getLogin() {
    return _$getLoginAsyncAction.run(() => super.getLogin());
  }

  final _$_LoginStoreBaseActionController =
      ActionController(name: '_LoginStoreBase');

  @override
  void togglePasswordVisibility() {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.togglePasswordVisibility');
    try {
      return super.togglePasswordVisibility();
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLogin(String value) {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.setLogin');
    try {
      return super.setLogin(value);
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String value) {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.setSenha');
    try {
      return super.setSenha(value);
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setResponse(ResponseApi<dynamic> value) {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.setResponse');
    try {
      return super.setResponse(value);
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
passwordVisible: ${passwordVisible},
loading: ${loading},
loggedIn: ${loggedIn},
loggedInError: ${loggedInError},
response: ${response},
isLoginValid: ${isLoginValid},
isSenhaValid: ${isSenhaValid},
loginPressed: ${loginPressed}
    ''';
  }
}
