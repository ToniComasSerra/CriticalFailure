import 'package:critical_failure/src/pages/home_page.dart';
import 'package:critical_failure/src/pages/player_subpages/drawer_builder.dart';
import 'package:critical_failure/src/pages/player_subpages/player_page_clases.dart';
import 'package:critical_failure/src/pages/player_subpages/player_page_combate.dart';
import 'package:critical_failure/src/pages/player_subpages/player_page_razas.dart';
import 'package:critical_failure/src/pages/player_subpages/player_page_trasfondo.dart';
import 'package:flutter/material.dart';

class Player extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text('Guía Jugador'),
        backgroundColor: Colors.red[300],
      ),
      body: ListView(
        children: [
          /*FadeInImage(
            placeholder: AssetImage(''), 
            image: NetworkImage('https://noticiasgamer.com/wp-content/uploads/2021/03/calabozos_y_dragones.jpg'),

          )*/
        ],
      ),
      drawer: DrawerBuilder(),
    );
  }  
}