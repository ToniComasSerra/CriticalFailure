import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class Mago extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: ListView(
        children: [
          SizedBox(height: 20.0,),

          //Aquí cargamos la imagen en un Container para su mejor uso
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

          //Container con RichText, lo que nos permite editar y darle formato al texto
          Container(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 20),
                  children: <TextSpan> [
                    TextSpan(text: 'La clase del '),
                    TextSpan(text: 'mago ', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'es una clase de conjurador que utiliza '),
                    TextSpan(text: 'hechizos poderosos de un único objetivo o en área', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: '. Es muy débil y cualquier ataque que reciba puede ser fatal.')
                  ]
              ),
            ),
          ),

          Padding(padding: EdgeInsets.symmetric(vertical: 30)),

          /*
           * Align nos permitirá alinear el botón. El botón utiliza un RichText para darle formato
           * al texto. En el evento onPressed() hemos añadido un enlace a un vídeo de youtube
           * mediante una dependencia llamada url_launcher.
           */
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
            child: RichText(
              text: TextSpan(
                text: 'Guía Mago',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                )
              )
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.red[300],
              minimumSize: Size(100, 100)
            ),
              onPressed: () async {
                if (await canLaunch("https://youtu.be/U1Gs8WTddI4"))
                  launch("https://youtu.be/U1Gs8WTddI4");
                else
                print("Error, no se puede acceder a la URL");
              }
            ),
          )
        ],
      ),
    );
  }

}