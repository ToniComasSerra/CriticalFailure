import 'package:critical_failure/src/pages/player_subpages/drawer_builder.dart';
import 'package:flutter/material.dart';

import 'clases/clerigo_page.dart';
import 'clases/luchador_page.dart';
import 'clases/mago_page.dart';

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
              Tab(text: 'Luchador'),
              Tab(text: 'Mago'),
              Tab(text: 'Clérigo'),
            ]
          ),
        ),
        body: TabBarView(
          children: [
            Luchador(),
            Mago(),
            Clerigo()
          ]
        ),
        drawer: DrawerBuilder(),
      )
    );
  }
}