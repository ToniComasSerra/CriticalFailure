import 'package:critical_failure/src/pages/home_page.dart';
import 'package:critical_failure/src/pages/player_subpages/drawer_builder.dart';
import 'package:critical_failure/src/pages/player_subpages/player_page_clases.dart';
import 'package:critical_failure/src/pages/player_subpages/player_page_combate.dart';
import 'package:critical_failure/src/pages/player_subpages/player_page_razas.dart';
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
          Container(
            child: Column(
              children: [
                FadeInImage(
                  placeholder: AssetImage('assets/dado.gif'), 
                  image: NetworkImage('https://noticiasgamer.com/wp-content/uploads/2021/03/calabozos_y_dragones.jpg'),
                  fadeInDuration: Duration(milliseconds: 100),
                  height: 250,
                  fit: BoxFit.cover,
                ),
                
                SizedBox(height: 30.0),

                Container(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      
                      children: <TextSpan> [
                        TextSpan(text: 'En este apartado se muestran varios menús con diversos elementos necesarios para la comprensión de una partida de D&D. Es información muy básica en referente a la '),
                        TextSpan(text: 'creación de personaje ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'mediante la selección de '),
                        TextSpan(text: 'clase ', style: TextStyle(fontStyle: FontStyle.italic)),
                        TextSpan(text: 'y '),
                        TextSpan(text: 'raza ', style: TextStyle(fontStyle: FontStyle.italic)),
                        TextSpan(text: 'e información sobre el sistema de combate.')
                      ]
                    ),  
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: DrawerBuilder(),
    );
  }  
}