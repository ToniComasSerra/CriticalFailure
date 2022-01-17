import 'package:critical_failure/src/pages/player_page.dart';
import 'package:critical_failure/src/pages/player_subpages/mago_page.dart';
import 'package:critical_failure/src/pages/player_subpages/drawer_builder.dart';
import 'package:critical_failure/src/pages/player_subpages/paladin_page.dart';
import 'package:flutter/material.dart';

import 'monje_page.dart';
class PlayerClases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.red[100],
        appBar: AppBar(
          title: Text('Clases'),
          backgroundColor: Colors.red[300],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Monje'),
              Tab(text: 'Mago'),
              Tab(text: 'Paladín'),
            ]
          ),
        ),
        body: TabBarView(
          children: [
            Monje(),
            Mago(),
            Paladin()
          ]
        ),
        drawer: DrawerBuilder(),
      )
    );
  }
}