import 'package:critical_failure/src/providers/bestryari_providers.dart';
import 'package:flutter/material.dart';

class BestyariPage extends StatelessWidget {
  const BestyariPage(BuildContext context, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
              child: Text("Bestyari", textAlign: TextAlign.center),
            ),
            backgroundColor: Colors.green),
        backgroundColor: Colors.green.shade200,
        body: _opcionsBestyari());
  }
}

Widget _opcionsBestyari() {
  return FutureBuilder(
      future: bestyariProvider.CarregarBestyari(),
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _llistat(context, snapshot.data),
        );
      });
}

//Añade en una lista los elementos de Json de su ruta determinada en su provider en este caso Bestiasrio
List<Widget> _llistat(BuildContext context, List<dynamic>? data) {
  final List<Widget> elements = [];
  data?.forEach((element) {
    final widgetTemp = Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Align(
                  alignment: Alignment.center,
                  child: Image(
                      image:
                          AssetImage('lib/src/utils/img/' + element['img']))),
            ),
            ListTile(
              title: Text(element['nom']),
              subtitle: Text(element['texte']),
            )
          ],
        ));
    elements
      ..add(widgetTemp)
      ..add(const Divider());
  });
  return elements;
}
