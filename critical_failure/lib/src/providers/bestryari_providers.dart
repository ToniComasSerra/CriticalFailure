import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class _BestyariProvider{
  List<dynamic> opcions = [];
  __Bestyarirovider() {
    CarregarDades();
  }

  Future<List<dynamic>> CarregarDades() async {
    final resposta = await rootBundle.loadString('data/bestiary.json');
    Map dataMap = json.decode(resposta);
    opcions = dataMap['monster'];
    return opcions;
  }
}

final bestyariProvider = new _BestyariProvider();