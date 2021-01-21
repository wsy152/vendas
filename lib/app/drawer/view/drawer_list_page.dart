import 'package:flutter/material.dart';
import 'package:sales_telecom012021/app/drawer/view/components/list_title.dart';
import 'package:sales_telecom012021/app/login/model/usuario_model.dart';
import 'package:sales_telecom012021/app/login/view/login_page.dart';
import 'package:sales_telecom012021/app/drawer/view/components/header.dart';
import 'package:sales_telecom012021/global/function/myNav.dart';

class DrawerList extends StatefulWidget {
  @override
  _DrawerListState createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
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
                return user != null ? header(user) : Container();
              },
            ),
            ListOpcoes(
              'Minhas Vendas',
              'Mais Invormações',
              Icon(Icons.ac_unit_sharp),
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
