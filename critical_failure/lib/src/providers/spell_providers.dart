import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class _SpellProvider {
  List<dynamic> opcions = [];
  _SpellProvider() {
    CarregarSpell();
  }

  Future<List<dynamic>> CarregarSpell() async {
    final resposta = await rootBundle.loadString('data/spell.json');
    Map dataMap = json.decode(resposta);
    opcions = dataMap['spells'];
    return opcions;
  }
}

final spellProvider = _SpellProvider();
