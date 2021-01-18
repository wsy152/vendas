import 'package:flutter/material.dart';

import 'package:sales_telecom012021/app/home/view/components/drawer_list_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Edvaldo1'),
            ),
          ),
        ],
      ),
      appBar: AppBar(),
      drawer: DrawerList(),
    );
  }
}
