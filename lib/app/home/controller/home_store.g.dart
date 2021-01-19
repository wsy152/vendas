// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStoreBase, Store {
  final _$headersAtom = Atom(name: '_HomeStoreBase.headers');

  @override
  Map<String, String> get headers {
    _$headersAtom.reportRead();
    return super.headers;
  }

  @override
  set headers(Map<String, String> value) {
    _$headersAtom.reportWrite(value, super.headers, () {
      super.headers = value;
    });
  }

  final _$userAtom = Atom(name: '_HomeStoreBase.user');

  @override
  UsuariosModel get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UsuariosModel value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase');

  @override
  dynamic _header(dynamic user) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase._header');
    try {
      return super._header(user);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
headers: ${headers},
user: ${user}
    ''';
  }
}
