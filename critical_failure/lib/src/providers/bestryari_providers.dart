import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class _BestyariProvider {
  List<dynamic> opcions = [];
  _BestyariProvider() {
    CarregarBestyari();
  }

  Future<List<dynamic>> CarregarBestyari() async {
    final resposta = await rootBundle.loadString('data/bestiary.json');
    Map dataMap = json.decode(resposta);
    opcions = dataMap['monsters'];
    return opcions;
  }
}

final bestyariProvider = _BestyariProvider();
