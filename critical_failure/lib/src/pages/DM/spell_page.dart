import 'package:critical_failure/src/providers/spell_providers.dart';
import 'package:flutter/material.dart';

class SpellPage extends StatelessWidget {
  const SpellPage(BuildContext context, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Center(child: new Text("Hechizos", textAlign: TextAlign.center),),
             backgroundColor: Colors.green),
             backgroundColor: Colors.green.shade200,
        body: _opcionsBestyari()
    );
     }
}

Widget _opcionsBestyari() {
  return FutureBuilder(
    future: spellProvider.CarregarSpell(),
    builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
      return ListView(
        children: _llistat(context, snapshot.data),
      );
    }
  );
}

List<Widget> _llistat(BuildContext context, List<dynamic>? data) {
  final List<Widget> elements = [];
  data?.forEach((element) {
    final widgetTemp = Card(
      elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
    child: Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: Align(
            alignment: Alignment.center,
            child: Image(image: AssetImage('lib/src/utils/img/'+ element['img']))),
          ),
            ListTile(
              title: Text(element ['nom']),
              subtitle: Text(element['texte']),
            )
          ],
        )
      );
      elements..add(widgetTemp)..add(Divider());
    });
    return elements;
  }