import 'package:critical_failure/src/providers/bestryari_providers.dart';
import 'package:critical_failure/src/providers/menu_providers.dart';
import 'package:critical_failure/src/utils/icona_string.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class BestyariPage extends StatelessWidget {
  const BestyariPage(BuildContext context, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(bestyariProvider.opcions);
    return Scaffold(
        appBar: AppBar(
            title: new Center(
              child: new Text("s", textAlign: TextAlign.center),
            ),
            backgroundColor: Colors.green),
        backgroundColor: Colors.green.shade200,
        body: Column(children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: Hero(
              tag: 'monsterIcon',
              child: Image.network(
                  'https://static.wikia.nocookie.net/disney/images/9/9e/Monstruos_S.A..png/revision/latest/scale-to-width-down/250?cb=20180305225626&path-prefix=es',
                  width: 50.0,
                  height: 50.0),
            ),
          ),
          _opcionsMenu(context)
        ]));
  }
}

Widget _cardTipus1() {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
          title: Text('Títol de la targeta'),
          subtitle: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
        ),
      ],
    ),
  );
}

Widget _opcionsMenu(context) {
  List data;
  return FutureBuilder(
    future: DefaultAssetBundle.of(context).loadString('data/bestiary.json'),
    builder: (context, snapshot) {
      //Codi Json
      var mobs = json.decode(snapshot.data.toString());
      return new ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            elevation: 10.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ListTile(
                  title: Text("Name: " + mobs[index]['nom']),
                  subtitle: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
                ),
              ],
            ),
          );
        },
        itemCount: mobs == null ? 0 : mobs.length,
      );
    },
  );
}

List<Widget> _llistat(BuildContext context, List<dynamic>? data) {
  final List<Widget> elements = [];
  data?.forEach((element) {
    final widgetTemp = ListTile(
      title: Text(element['nom']),
      //leading: getIcon(element['texte']),
    );
    elements
      ..add(widgetTemp)
      ..add(Divider());
  });
  return elements;
}
