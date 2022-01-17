import 'package:critical_failure/src/pages/player_subpages/player_page_clases.dart';
import 'package:critical_failure/src/pages/player_subpages/player_page_combate.dart';
import 'package:critical_failure/src/pages/player_subpages/player_page_razas.dart';
import 'package:flutter/material.dart';

import '../home_page.dart';
import '../player_page.dart';

class DrawerBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
            color: Colors.red[300],
            child: ListView(
              padding: EdgeInsets.all(20.0),
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
                _elementsMenu(
                  text: 'Combate',
                  icon: Icons.hardware,
                  onClicked: () => _selectedElement(context, 3),
                ),
                Divider(color: Colors.red,),
                _elementsMenu(
                  text: 'Menú de inicio', 
                  icon: Icons.arrow_back,
                  onClicked: () => _selectedElement(context, 4)
                ),
              ],
            ),
          ),
      );
  }

  Widget _elementsMenu({required String text, required IconData icon, VoidCallback? onClicked,}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text, style: TextStyle(fontSize: 18, color: Colors.white),),
      hoverColor: Colors.white70,
      onTap: onClicked,
    );
  }

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
          builder: (context) => PlayerCombate(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
        break;
      default:
    }
  }
}