import 'package:flutter/material.dart';

import 'package:sales_telecom012021/app/home/view/components/drawer_list_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [],
      ),
      appBar: AppBar(),
      drawer: DrawerList(),
    );
  }
}
