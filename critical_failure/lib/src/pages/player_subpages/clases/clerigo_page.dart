import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Clerigo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: ListView(
        children: [
          SizedBox(height: 20.0),

          Container(
            child: Column(
              children: [
                FadeInImage(
                  placeholder: AssetImage('assets/dado.gif'),
                  image: NetworkImage('https://i.imgur.com/Ns4op2a.png'),
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
                    TextSpan(text: 'clérigo ', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'es una clase centrada principalmente en '),
                    TextSpan(text: 'sanar, proteger de estados alterados ', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'y '),
                    TextSpan(text: 'potenciar al equipo', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: '. También poseen poderosos hechizos dañinos.')
                  ]
              ),
            ),
          ),

          Padding(padding: EdgeInsets.symmetric(vertical: 30)),

          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
            child: RichText(
              text: TextSpan(
                text: 'Guía Clérigo',
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
                if (await canLaunch("https://youtu.be/y84OYRwzZU8"))
                  launch("https://youtu.be/y84OYRwzZU8");
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