import 'package:critical_failure/src/pages/player_subpages/drawer_builder.dart';
import 'package:flutter/material.dart';

class PlayerRazas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Razas'),
      ),
      drawer: DrawerBuilder(),
    );
  }

}