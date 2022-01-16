import 'package:critical_failure/src/pages/player_page.dart';
import 'package:critical_failure/src/pages/player_subpages/drawer_builder.dart';
import 'package:flutter/material.dart';
class PlayerClases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clases'),
      ),
      drawer: DrawerBuilder(),
    );
  }
}