import 'package:flutter/material.dart';
import 'package:sales_telecom012021/app/login/model/usuario_model.dart';

avatar(UsuariosModel user) {
  Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer ${user.payload.token}'
  };

  return CircleAvatar(
    maxRadius: 35,
    backgroundImage: NetworkImage(
      'https://devback.experiencesolucoes.com.br:3000' + user.payload.foto,
      scale: 1.0,
      headers: headers,
    ),
  );
}
