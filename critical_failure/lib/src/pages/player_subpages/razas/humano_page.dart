import 'package:flutter/material.dart';

class Humano extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                FadeInImage(
                  placeholder: AssetImage('assets/dado.gif'),
                  image: NetworkImage('https://static.wikia.nocookie.net/amalur/images/6/68/Almain_male.png/revision/latest?cb=20120207110830&path-prefix=es'),
                  fadeInDuration: Duration(milliseconds: 100),
                  fit: BoxFit.cover,
                  height: 400,
                )
              ],
            ),
          ),

          SizedBox(height: 20.0),

          Container(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 20),
                children: <TextSpan> [
                  TextSpan(text: 'Los '),
                  TextSpan(text: 'humanos ', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'son la raza más básica y sencilla. Al inicio de la partida pueden decidir si mejorar sus estadísticas o recibir una \'dote\', una especie de pasiva con efectos diversos.'),
                ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}