import 'package:flutter/material.dart';
import 'package:sales_telecom012021/app/home/view/components/costumer_app_bar.dart';
import 'package:sales_telecom012021/app/drawer/view/drawer_list_page.dart';
import 'package:sales_telecom012021/app/home/view/components/header_home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          buildHeader(screenHeight),
        ],
      ),
      appBar: CustomAppBar(),
      drawer: DrawerList(),
    );
  }
}
