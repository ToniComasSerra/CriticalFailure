import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Mago extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: ListView(
        children: [
          SizedBox(height: 20.0,),

          Container(
            child: Column(
              children: [
                FadeInImage(
                  placeholder: AssetImage('assets/dado.gif'),
                  image: NetworkImage('https://i.imgur.com/l3BqKMc.png'),
                  fadeInDuration: Duration(milliseconds: 100),
                  fit: BoxFit.cover,
                  height: 200,
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
                    TextSpan(text: 'La clase del '),
                    TextSpan(text: 'mago ', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'es una clase de conjurador que utiliza hechizos poderosos de un único objetivo o en área. Es muy débil y cualquier ataque que reciba puede ser fatal.'),
                  ]
              ),
            ),
          )
        ],
      ),
    );
  }

}