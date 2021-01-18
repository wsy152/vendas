import 'package:flutter/material.dart';
import 'package:recase/recase.dart';
import 'package:sales_telecom012021/app/login/model/usuario_model.dart';
import 'package:sales_telecom012021/app/login/view/login_page.dart';
import 'package:sales_telecom012021/global/function/myNav.dart';

class DrawerList extends StatefulWidget {
  @override
  _DrawerListState createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  UserAccountsDrawerHeader _header(UsuariosModel user) {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ${user.payload.token}'
    };
    return UserAccountsDrawerHeader(
      currentAccountPicture: CircleAvatar(
        backgroundImage: NetworkImage(
          'https://devback.experiencesolucoes.com.br:3000' + user.payload.foto,
          scale: 1.0,
          headers: headers,
        ),
      ),
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
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Future<UsuariosModel> future = UsuariosModel.get();
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            FutureBuilder<UsuariosModel>(
              future: future,
              builder: (context, snapshot) {
                UsuariosModel user = snapshot.data;
                return user != null ? _header(user) : Container();
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text(
                "Minha Vendas",
                style: TextStyle(fontSize: 12),
              ),
              subtitle:
                  Text("mais informações...", style: TextStyle(fontSize: 10.5)),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Item 1");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Oportunidades"),
              subtitle: Text("mais informações..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Item 1");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Nova Consulta"),
              subtitle: Text("mais informações..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Item 1");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Gerar Venda"),
              subtitle: Text("mais informações..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Item 1");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Pendent de Interação"),
              subtitle: Text("mais informações..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Item 1");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Interação Comercial"),
              subtitle: Text("mais informações..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Item 1");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Configurações"),
              subtitle: Text("mais informações..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Item 1");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () => _onClickLogout(context),
            )
          ],
        ),
      ),
    );
  }

  _onClickLogout(BuildContext context) {
    UsuariosModel.clear();
    Navigator.pop(context);
    push(context, LoginPage(), replace: true);
  }
}
