import 'package:flutter/material.dart';

class Paladin extends StatelessWidget {
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
                  image: NetworkImage('https://res.cloudinary.com/teepublic/image/private/s--Kf1LnmkR--/t_Resized%20Artwork/c_fit,g_north_west,h_1054,w_1054/co_ffffff,e_outline:53/co_ffffff,e_outline:inner_fill:53/co_bbbbbb,e_outline:3:1000/c_mpad,g_center,h_1260,w_1260/b_rgb:eeeeee/c_limit,f_auto,h_630,q_90,w_630/v1580225136/production/designs/7741939_0.jpg'),
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
                    TextSpan(text: 'paladín ', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'es una clase marcial de combate cuerpo a cuerpo que venera a un dios con el que hizo un pacto o juramento que no debe romper. Se centra en ser el tanque y sanador del equipo.'),
                  ]
              ),
            ),
          )
        ],
      ),
    );
  }

}