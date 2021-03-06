import 'package:critical_failure/src/pages/player_subpages/drawer_builder.dart';
import 'package:flutter/material.dart';

class Player extends StatelessWidget {
  //Clase que nos permitirá acceder a los subelementos que servirán para introducir al jugador a una partida
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
          //Aquí cargamos la imagen en un Container para su mejor uso
          Container(
            child: Column(
              children: [
                FadeInImage(
                  placeholder: AssetImage('assets/dado.gif'),
                  image: NetworkImage('https://i.imgur.com/1mv1zFA.png'),
                  fadeInDuration: Duration(milliseconds: 100),
                  height: 250,
                  fit: BoxFit.cover,
                ),

                SizedBox(height: 30.0),

                //Container con RichText, lo que nos permite editar y darle formato al texto
                Container(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                'En este apartado se muestran varios menús con diversos elementos necesarios para la comprensión de una partida de D&D. Es información muy básica en referente a la '),
                        TextSpan(
                            text: 'creación de personaje ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'mediante la selección de '),
                        TextSpan(
                            text: 'clase ',
                            style: TextStyle(fontStyle: FontStyle.italic)),
                        TextSpan(text: 'y '),
                        TextSpan(
                            text: 'raza.',
                            style: TextStyle(fontStyle: FontStyle.italic)),
                      ]
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      //Llamado a la clase DrawerBuilder que creará el Drawer (el menú lateral)
      drawer: DrawerBuilder(),
    );
  }
}