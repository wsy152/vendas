import 'dart:convert' as convert;
import 'package:sales_telecom012021/global/function/myprefs.dart';

class UsuariosModel {
  bool success;
  Payload payload;

  UsuariosModel({this.success, this.payload});

  UsuariosModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    payload =
        json['payload'] != null ? new Payload.fromJson(json['payload']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.payload != null) {
      data['payload'] = this.payload.toJson();
    }
    return data;
  }

  static void clear() {
    Prefs.setString("user.prefs", '');
  }

  void save() {
    Map map = toJson();
    String json = convert.json.encode(map);
    Prefs.setString("user.prefs", json);
  }

  static Future<UsuariosModel> get() async {
    String json = await Prefs.getString('user.prefs');
    if (json.isEmpty) {
      return null;
    }
    Map map = convert.json.decode(json);
    UsuariosModel user = UsuariosModel.fromJson(map);
    return user;
  }
}

class Payload {
  int codigo;
  int empresa;
  String login;
  String nome;
  Funcao funcao;
  Funcao cargo;
  Funcao grupo;
  String foto;
  String descemp;
  bool liberadaVenda;
  String token;
  Acesso acesso;
  List<String> modulos;

  Payload(
      {this.codigo,
      this.empresa,
      this.login,
      this.nome,
      this.funcao,
      this.cargo,
      this.grupo,
      this.foto,
      this.descemp,
      this.liberadaVenda,
      this.token,
      this.acesso,
      this.modulos});

  Payload.fromJson(Map<String, dynamic> json) {
    codigo = json['CODIGO'];
    empresa = json['EMPRESA'];
    login = json['LOGIN'];
    nome = json['NOME'];
    funcao =
        json['FUNCAO'] != null ? new Funcao.fromJson(json['FUNCAO']) : null;
    cargo = json['CARGO'] != null ? new Funcao.fromJson(json['CARGO']) : null;
    grupo = json['GRUPO'] != null ? new Funcao.fromJson(json['GRUPO']) : null;
    foto = json['FOTO'];
    descemp = json['DESCEMP'];
    liberadaVenda = json['LIBERADA_VENDA'];
    token = json['token'];
    acesso =
        json['ACESSO'] != null ? new Acesso.fromJson(json['ACESSO']) : null;
    modulos = json['MODULOS'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CODIGO'] = this.codigo;
    data['EMPRESA'] = this.empresa;
    data['LOGIN'] = this.login;
    data['NOME'] = this.nome;
    if (this.funcao != null) {
      data['FUNCAO'] = this.funcao.toJson();
    }
    if (this.cargo != null) {
      data['CARGO'] = this.cargo.toJson();
    }
    if (this.grupo != null) {
      data['GRUPO'] = this.grupo.toJson();
    }
    data['FOTO'] = this.foto;
    data['DESCEMP'] = this.descemp;
    data['LIBERADA_VENDA'] = this.liberadaVenda;
    data['token'] = this.token;
    if (this.acesso != null) {
      data['ACESSO'] = this.acesso.toJson();
    }
    data['MODULOS'] = this.modulos;
    return data;
  }
}

class Funcao {
  int codigo;
  String descricao;

  Funcao({this.codigo, this.descricao});

  Funcao.fromJson(Map<String, dynamic> json) {
    codigo = json['CODIGO'];
    descricao = json['DESCRICAO'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CODIGO'] = this.codigo;
    data['DESCRICAO'] = this.descricao;
    return data;
  }
}

class Acesso {
  List<String> pessoal;
  List<String> grupo;

  Acesso({this.pessoal, this.grupo});

  Acesso.fromJson(Map<String, dynamic> json) {
    pessoal = json['PESSOAL'].cast<String>();
    grupo = json['GRUPO'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['PESSOAL'] = this.pessoal;
    data['GRUPO'] = this.grupo;
    return data;
  }
}
