import 'package:flutter/material.dart';

class Elfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: ListView(
        children: [
          //Aquí cargamos la imagen en un Container para su mejor uso
          Container(
            child: Column(
              children: [
                FadeInImage(
                  placeholder: AssetImage('assets/dado.gif'),
                  image: NetworkImage('https://s3-eu-west-2.amazonaws.com/dungeon20/images/211/medium-838b83c553eeca3aabb66f72ee2648141bdf7dc7.png?1529672007'),
                  fadeInDuration: Duration(milliseconds: 100),
                  fit: BoxFit.cover,
                  height: 400,
                )
              ],
            ),
          ),

          SizedBox(height: 20.0),

          //Container con RichText, lo que nos permite editar y darle formato al texto
          Container(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 20),
                children: <TextSpan> [
                  TextSpan(text: 'Los '),
                  TextSpan(text: 'elfos ', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'son una raza que se reconocen por sus orejas puntiagudas. Jugando como uno obtendréis visión en la oscuridad y aumentaréis vuestra destreza base.'),
                ]
              ),
            ),
          ),
        ],
      ),
    );
  }

}