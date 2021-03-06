import 'package:critical_failure/src/pages/DM/spell_page.dart';
import 'package:flutter/material.dart';
import 'bestyari_page.dart';
import 'objetos_page.dart';

class DungeonMaster extends StatelessWidget {
  const DungeonMaster({Key? key}) : super(key: key);

  static const String _title = 'Dungeon Master';
  //Variables para poder cambiar las imagenes de network más rapido
  static var mon =
      'https://static.wikia.nocookie.net/disney/images/9/9e/Monstruos_S.A..png/revision/latest/scale-to-width-down/250?cb=20180305225626&path-prefix=es';
  static var loot =
      'https://i.pinimg.com/originals/15/4d/76/154d76982b56e45ce2faeb2adaa65cf0.png';
  static var spells =
      'https://darksouls3.wiki.fextralife.com/file/Dark-Souls-3/affinity.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
            child: Text(_title, textAlign: TextAlign.center),
          ),
          backgroundColor: Colors.green),
      backgroundColor: Colors.green.shade200,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Divider(),
          ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: const Align(
                  alignment: Alignment.center,
                  child: FadeInImage(
                    placeholder: AssetImage('assets/dado.gif'),
                    image: NetworkImage('https://i.imgur.com/bYriJqV.png'),
                    fadeInDuration: Duration(milliseconds: 100),
                  ))),
          const Divider(),
          //Tabla para poder dividir las filas en segmentos i asi poder añadir las imagees de seudo botones
          Table(children: <TableRow>[
            TableRow(children: [
              GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BestyariPage(context))),
                  child: Hero(tag: 'monsterIcon', child: _showIcon(mon))),
              GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ObjetosPage(context))),
                  child: Hero(tag: 'lootIcon', child: _showIcon(loot))),
              GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SpellPage(context))),
                  child: Hero(tag: 'spellsIcon', child: _showIcon(spells)))
            ]),
          ]),
        ],
      ),
    );
  }
}

//Widget per ahorrar tiempo cuando quiera introducir una imagen de internet
Widget _showIcon(img) {
  return Image.network(img, height: 120);
}
