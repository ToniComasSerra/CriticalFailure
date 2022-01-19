import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class _ItemProvider {
  List<dynamic> opcions = [];
  _ItemProvider() {
    CarregarItem();
  }

  Future<List<dynamic>> CarregarItem() async {
    final resposta = await rootBundle.loadString('data/item.json');
    Map dataMap = json.decode(resposta);
    opcions = dataMap['items'];
    return opcions;
  }
}

final itemProvider = _ItemProvider();
