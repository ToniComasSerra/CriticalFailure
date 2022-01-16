import 'package:flutter/material.dart';

import 'drawer_builder.dart';

class PlayerTrasfondo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trasfondo'),
      ),
      drawer: DrawerBuilder(),
    );
  }

}