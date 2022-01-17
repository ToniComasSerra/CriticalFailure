import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Monje extends StatelessWidget {
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
                  image: NetworkImage('https://res.cloudinary.com/teepublic/image/private/s---_YEb1S0--/t_Resized%20Artwork/c_fit,g_north_west,h_1054,w_1054/co_ffffff,e_outline:53/co_ffffff,e_outline:inner_fill:53/co_bbbbbb,e_outline:3:1000/c_mpad,g_center,h_1260,w_1260/b_rgb:eeeeee/c_limit,f_auto,h_630,q_90,w_630/v1581498607/production/designs/7945100_0.jpg'),
                  fadeInDuration: Duration(milliseconds: 100),
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),

          SizedBox(height: 10.0),

          Container(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 20),
                  children: <TextSpan> [
                    TextSpan(text: 'La clase del '),
                    TextSpan(text: 'monje ', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'es una clase marcial de combate cuerpo a cuerpo que utiliza el '),
                    TextSpan(text: 'ki ', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'para potenciar sus ataques y aturdir al enemigo. Suele atacar con sus puños o con armas simples como bastones o mazas.'),
                    TextSpan(
                      text: 'Guía Monje',
                      style: TextStyle(decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          if (await canLaunch("https://youtu.be/1CZDGFFHnI4?list=PLDnRMnDDjAzK5uZLidDUtHtD1iN06Qe0G") == true) {
                            launch("https://youtu.be/1CZDGFFHnI4?list=PLDnRMnDDjAzK5uZLidDUtHtD1iN06Qe0G");
                          } else {
                            print("Error, no se puede acceder a la URL.");
                          }
                      }
                    ),
                  ]
              ),
            ),
          )
        ],
      ),
    );
  }

}