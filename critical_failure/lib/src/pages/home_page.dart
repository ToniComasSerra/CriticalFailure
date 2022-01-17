import 'package:critical_failure/src/providers/menu_providers.dart';
import 'package:critical_failure/src/utils/icona_string.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú Inicial'),
      ),
      body: _opcionsMenu(),
    );
  }
}

Widget _opcionsMenu() {
  return FutureBuilder(
    future: menuProvider.CarregarDades(),
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
    final widgetTemp = ListTile(
      title: Text(element['texte']),
      leading: getIcon(element['icona']),
      trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.blue,),
      onTap: () {
        Navigator.pushNamed(context, element['ruta']);
      },
    );
    elements..add(widgetTemp)..add(const Divider());
   });
  return elements;
}