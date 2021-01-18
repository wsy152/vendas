class ModelResumoVendas {
  bool success;
  Payload payload;

  ModelResumoVendas({this.success, this.payload});

  ModelResumoVendas.fromJson(Map<String, dynamic> json) {
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
}

class Payload {
  Vendedor vendedor;
  ResumoVendas resumoVendas;
  List<InfoTime> infoTime;
  List<Vendas> vendas;
  List<Time> time;

  Payload(
      {this.vendedor,
      this.resumoVendas,
      this.infoTime,
      this.vendas,
      this.time});

  Payload.fromJson(Map<String, dynamic> json) {
    vendedor = json['vendedor'] != null
        ? new Vendedor.fromJson(json['vendedor'])
        : null;
    resumoVendas = json['resumoVendas'] != null
        ? new ResumoVendas.fromJson(json['resumoVendas'])
        : null;
    if (json['infoTime'] != null) {
      // ignore: deprecated_member_use
      infoTime = new List<InfoTime>();
      json['infoTime'].forEach((v) {
        infoTime.add(new InfoTime.fromJson(v));
      });
    }
    if (json['vendas'] != null) {
      // ignore: deprecated_member_use
      vendas = new List<Vendas>();
      json['vendas'].forEach((v) {
        vendas.add(new Vendas.fromJson(v));
      });
    }
    if (json['time'] != null) {
      // ignore: deprecated_member_use
      time = new List<Time>();
      json['time'].forEach((v) {
        time.add(new Time.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.vendedor != null) {
      data['vendedor'] = this.vendedor.toJson();
    }
    if (this.resumoVendas != null) {
      data['resumoVendas'] = this.resumoVendas.toJson();
    }
    if (this.infoTime != null) {
      data['infoTime'] = this.infoTime.map((v) => v.toJson()).toList();
    }
    if (this.vendas != null) {
      data['vendas'] = this.vendas.map((v) => v.toJson()).toList();
    }
    if (this.time != null) {
      data['time'] = this.time.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Vendedor {
  String nome;
  String funcao;
  String foto;

  Vendedor({this.nome, this.funcao, this.foto});

  Vendedor.fromJson(Map<String, dynamic> json) {
    nome = json['NOME'];
    funcao = json['FUNCAO'];
    foto = json['FOTO'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['NOME'] = this.nome;
    data['FUNCAO'] = this.funcao;
    data['FOTO'] = this.foto;
    return data;
  }
}

class ResumoVendas {
  String dtini;
  String dtfim;
  int total;
  int pendentes;
  int canceladas;
  int concluida;
  int vrt;

  ResumoVendas(
      {this.dtini,
      this.dtfim,
      this.total,
      this.pendentes,
      this.canceladas,
      this.concluida,
      this.vrt});

  ResumoVendas.fromJson(Map<String, dynamic> json) {
    dtini = json['DTINI'];
    dtfim = json['DTFIM'];
    total = json['TOTAL'];
    pendentes = json['PENDENTES'];
    canceladas = json['CANCELADAS'];
    concluida = json['CONCLUIDA'];
    vrt = json['VRT'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['DTINI'] = this.dtini;
    data['DTFIM'] = this.dtfim;
    data['TOTAL'] = this.total;
    data['PENDENTES'] = this.pendentes;
    data['CANCELADAS'] = this.canceladas;
    data['CONCLUIDA'] = this.concluida;
    data['VRT'] = this.vrt;
    return data;
  }
}

class InfoTime {
  String funcao;
  int qtde;

  InfoTime({this.funcao, this.qtde});

  InfoTime.fromJson(Map<String, dynamic> json) {
    funcao = json['funcao'];
    qtde = json['qtde'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['funcao'] = this.funcao;
    data['qtde'] = this.qtde;
    return data;
  }
}

class Vendas {
  int codigo;
  String situacao;
  int status;
  String descstatus;
  String desccliente;
  dynamic vlrTotal;
  String userVendedorDesc;
  int pontuacao;

  Vendas({
    this.codigo,
    this.situacao,
    this.status,
    this.descstatus,
    this.desccliente,
    this.vlrTotal,
    this.userVendedorDesc,
    this.pontuacao,
  });

  Vendas.fromJson(Map<String, dynamic> json) {
    codigo = json['CODIGO'];
    situacao = json['SITUACAO'];
    status = json['STATUS'];
    descstatus = json['DESCSTATUS'];
    desccliente = json['DESCCLIENTE'];
    vlrTotal = json['VLR_TOTAL'];
    userVendedorDesc = json['USER_VENDEDOR_DESC'];
    pontuacao = json['PONTUACAO'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CODIGO'] = this.codigo;
    data['SITUACAO'] = this.situacao;
    data['STATUS'] = this.status;
    data['DESCSTATUS'] = this.descstatus;
    data['DESCCLIENTE'] = this.desccliente;
    data['VLR_TOTAL'] = this.vlrTotal;
    data['USER_VENDEDOR_DESC'] = this.userVendedorDesc;
    data['PONTUACAO'] = this.pontuacao;
    return data;
  }
}

class Time {
  int id;
  String nome;
  String funcao;

  Time({this.id, this.nome, this.funcao});

  Time.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    funcao = json['funcao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['funcao'] = this.funcao;
    return data;
  }
}
