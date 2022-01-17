import 'package:critical_failure/src/pages/player_page.dart';
import 'package:critical_failure/src/pages/player_subpages/artifice_page.dart';
import 'package:critical_failure/src/pages/player_subpages/drawer_builder.dart';
import 'package:critical_failure/src/pages/player_subpages/hechicero_page.dart';
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
              Tab(text: 'Artífice'),
              Tab(text: 'Hechicero'),
            ]
          ),
        ),
        body: TabBarView(
          children: [
            Monje(),
            Artifice(),
            Hechicero()
          ]
        ),
        drawer: DrawerBuilder(),
      )
    );
  }
}