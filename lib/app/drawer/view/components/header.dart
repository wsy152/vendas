import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:recase/recase.dart';
import 'package:sales_telecom012021/app/login/model/usuario_model.dart';
import 'package:sales_telecom012021/global/config/palleta_color.dart';

UserAccountsDrawerHeader header(UsuariosModel user) {
  Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer ${user.payload.token}'
  };

  return UserAccountsDrawerHeader(
    currentAccountPicture: Observer(builder: (_) {
      return CircleAvatar(
        backgroundImage: NetworkImage(
          'https://devback.experiencesolucoes.com.br:3000' + user.payload.foto,
          scale: 1.0,
          headers: headers,
        ),
      );
    }),
    accountName: Text(
      user.payload.nome.titleCase,
      style: TextStyle(fontFamily: 'Roboto'),
    ),
    accountEmail: Text(
      user.payload.login,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 10,
      ),
    ),
    decoration: BoxDecoration(
      color: Palette.primaryColor,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10.0),
        bottomRight: Radius.circular(10.0),
      ),
    ),
  );
}
