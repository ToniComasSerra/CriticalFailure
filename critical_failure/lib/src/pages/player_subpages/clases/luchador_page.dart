import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Luchador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: ListView(
        children: [
          SizedBox(height: 20),

          Container(
            child: Column(
              children: [
                FadeInImage(
                  placeholder: AssetImage('assets/dado.gif'),
                  image: NetworkImage('https://i.imgur.com/1MzgkLc.png'),
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
                    TextSpan(text: 'luchador ', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'es la clase marcial más básica. Es la idónea si quieres equilibrar daño y vida y es perfecta para principiantes.'),
                  ]
              ),
            ),
          ),

          Padding(padding: EdgeInsets.symmetric(vertical: 30)),

          ElevatedButton(
            child: RichText(
              text: TextSpan(
                
              )
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.red[300],
              minimumSize: Size(100, 100)
            ),
            onPressed: () async {
                if (await canLaunch("https://youtu.be/nVReBH3QYD0"))
                  launch("https://youtu.be/nVReBH3QYD0");
                else
                print("Error, no se puede acceder a la URL");
            }
            
          )
        ],
      ),
    );
  }
}