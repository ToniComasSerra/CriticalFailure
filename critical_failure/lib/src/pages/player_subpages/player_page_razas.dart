import 'package:critical_failure/src/pages/player_subpages/drawer_builder.dart';
import 'package:critical_failure/src/pages/player_subpages/razas/elfo_page.dart';
import 'package:critical_failure/src/pages/player_subpages/razas/enano_page.dart';
import 'package:critical_failure/src/pages/player_subpages/razas/humano_page.dart';
import 'package:flutter/material.dart';

class PlayerRazas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.red[100],
        appBar: AppBar(
          title: Text('Razas'),
          backgroundColor: Colors.red[300],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Humano'),
              Tab(text: 'Elfo'),
              Tab(text: 'Enano'),
            ]
          ),
        ),
        body: TabBarView(
          children: [
            Humano(),
            Elfo(),
            Enano()
          ]
        ),
        drawer: DrawerBuilder(),
      ),
    );
  }

}