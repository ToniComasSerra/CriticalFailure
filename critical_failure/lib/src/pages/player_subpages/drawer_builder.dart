import 'package:critical_failure/src/pages/player_subpages/player_page_clases.dart';
import 'package:critical_failure/src/pages/player_subpages/player_page_razas.dart';
import 'package:flutter/material.dart';

import '../home_page.dart';
import '../player_page.dart';

class DrawerBuilder extends StatelessWidget {
  //Clase auxiliar que crea los elementos que se mostrarán en el Drawer  
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
            color: Colors.red[300],
            child: ListView(
              padding: const EdgeInsets.all(20.0),
              children: <Widget> [
                _elementsMenu(
                  text: 'Inicio',
                  icon: Icons.home,
                  onClicked: () => _selectedElement(context, 0),
                ),
                _elementsMenu(
                  text: 'Clases',
                  icon: Icons.shield,
                  onClicked: () => _selectedElement(context, 1),
                ),
                _elementsMenu(
                  text: 'Razas',
                  icon: Icons.people,
                  onClicked: () => _selectedElement(context, 2),
                ),
                const Divider(color: Colors.white, height: 20),
                _elementsMenu(
                  text: 'Menú de inicio', 
                  icon: Icons.arrow_back,
                  onClicked: () => _selectedElement(context, 3)
                ),
              ],
            ),
          ),
      );
  }

  //Método que crea el elemento del Drawer
  Widget _elementsMenu({required String text, required IconData icon, VoidCallback? onClicked,}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text, style: const TextStyle(fontSize: 18, color: Colors.white),),
      hoverColor: Colors.white70,
      onTap: onClicked,
    );
  }

  //Método que cambia las páginas según el elemento que pulsemos
  void _selectedElement(BuildContext context, int i) {
    switch (i) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Player(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PlayerClases(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PlayerRazas(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const HomePage(),
        ));
        break;
      default:
    }
  }
}