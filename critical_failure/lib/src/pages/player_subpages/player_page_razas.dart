import 'package:critical_failure/src/pages/player_subpages/drawer_builder.dart';
import 'package:critical_failure/src/pages/player_subpages/razas/elfo_page.dart';
import 'package:critical_failure/src/pages/player_subpages/razas/enano_page.dart';
import 'package:critical_failure/src/pages/player_subpages/razas/humano_page.dart';
import 'package:flutter/material.dart';

class PlayerRazas extends StatelessWidget {
  /*
   * Clase donde se mostrarán las 3 razas disponibles. La navegación entre las
   * tres razas se hará utilizando TabBar, lo que hará que cambiemos de raza cuando
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
          title: Text('Razas'),
          backgroundColor: Colors.red[300],
          bottom: TabBar(
            //Cambio del color del indicador de clase en la que nos encontramos
            indicatorColor: Colors.white,
            //Nombre de las tabs que habrá en el TabBar
            tabs: [
              Tab(text: 'Humano'),
              Tab(text: 'Elfo'),
              Tab(text: 'Enano'),
            ]
          ),
        ),
        /*
         * El TabBarView nos permite mostrar la clase seleccionada sin tener que movernos a
         * una nueva página.
         */
        body: TabBarView(
          children: [
            Humano(),
            Elfo(),
            Enano()
          ]
        ),
        //Llamada a DrawerBuilder
        drawer: DrawerBuilder(),
      ),
    );
  }

}