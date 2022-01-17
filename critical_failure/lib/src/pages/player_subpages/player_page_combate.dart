import 'package:flutter/material.dart';

import 'drawer_builder.dart';

class PlayerCombate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text('Combate'),
        backgroundColor: Colors.red[300],
      ),
      drawer: DrawerBuilder(),
    );
  }

}