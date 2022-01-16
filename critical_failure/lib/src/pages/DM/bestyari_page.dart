import 'package:critical_failure/src/providers/bestryari_providers.dart';
import 'package:critical_failure/src/providers/menu_providers.dart';
import 'package:critical_failure/src/utils/icona_string.dart';
import 'package:flutter/material.dart';

class BestyariPage extends StatelessWidget {
  const BestyariPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bestiario'),
      ),
      body: _opcionsMenu(),
    );
  }
}

Widget _opcionsMenu() {
  return FutureBuilder(
    future: bestyariProvider.CarregarDades(),
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
      child: Stack(alignment: Alignment.center,
      children: [
      //   Ink.image(
      //     image: AssetImage(element['img']))
        // Text(Text(element['texte']),)
      ],)
      
    );
    }
   );
    return elements;
  }