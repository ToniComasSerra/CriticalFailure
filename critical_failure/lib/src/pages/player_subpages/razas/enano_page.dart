import 'package:flutter/material.dart';

class Enano extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: ListView(
        children: [
          SizedBox(height: 20.0),

          //Aquí cargamos la imagen en un Container para su mejor uso
          Container(
            child: Column(
              children: [
                FadeInImage(
                  placeholder: AssetImage('assets/dado.gif'),
                  image: NetworkImage('https://static.wikia.nocookie.net/dungeons202620dragons205c2aa20edicic3b3n/images/6/66/Enana.png/revision/latest/top-crop/width/360/height/450?cb=20200506081420&path-prefix=es'),
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
                  TextSpan(text: 'enanos ', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'son una raza de estatura similar a la de un niño humano y son gruñones. Jugando como uno obtendréis visión en la oscuridad y aumentaréis vuestra constitución.'),
                ]
              ),
            ),
          ),
        ],
      ),
    );
  }

}