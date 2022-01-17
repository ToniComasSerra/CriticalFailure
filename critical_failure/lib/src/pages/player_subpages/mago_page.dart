import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Mago extends StatelessWidget {
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
                  image: NetworkImage('https://res.cloudinary.com/teepublic/image/private/s--N1qjDZk0--/t_Resized%20Artwork/c_fit,g_north_west,h_954,w_954/co_000000,e_outline:48/co_000000,e_outline:inner_fill:48/co_ffffff,e_outline:48/co_ffffff,e_outline:inner_fill:48/co_bbbbbb,e_outline:3:1000/c_mpad,g_center,h_1260,w_1260/b_rgb:eeeeee/c_limit,f_auto,h_630,q_90,w_630/v1579088564/production/designs/7582843_0.jpg'),
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