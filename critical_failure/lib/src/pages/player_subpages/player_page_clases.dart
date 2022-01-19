import 'package:critical_failure/src/pages/player_subpages/drawer_builder.dart';
import 'package:flutter/material.dart';

import 'clases/clerigo_page.dart';
import 'clases/luchador_page.dart';
import 'clases/mago_page.dart';

class PlayerClases extends StatelessWidget {
  /*
   * Clase donde se mostrarán las 3 clases disponibles. La navegación entre las
   * tres clases se hará utilizando TabBar, lo que hará que cambiemos de clase cuando
   * hagamos click encima de su nombre.
   */
  @override
  Widget build(BuildContext context) {
    //DefaultTabController se encargará de los eventos como pulsar encima de un elemento del TabBar
    return DefaultTabController(
      //Elementos totales del TabBar
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.red[100],
        appBar: AppBar(
          title: Text('Clases'),
          backgroundColor: Colors.red[300],
          bottom: TabBar(
            //Cambio del color del indicador de clase en la que nos encontramos
            indicatorColor: Colors.white,
            //Nombre de las tabs que habrá en el TabBar
            tabs: [
              Tab(text: 'Luchador'),
              Tab(text: 'Mago'),
              Tab(text: 'Clérigo'),
            ]
          ),
        ),
        /*
         * El TabBarView nos permite mostrar la clase seleccionada sin tener que movernos a
         * una nueva página.
         */
        body: TabBarView(
          children: [
            Luchador(),
            Mago(),
            Clerigo()
          ]
        ),
        //Llamada a DrawerBuilder
        drawer: DrawerBuilder(),
      )
    );
  }
}