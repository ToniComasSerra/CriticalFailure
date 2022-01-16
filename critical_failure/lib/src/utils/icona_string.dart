import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'character' : Icons.accessibility_new_rounded,
  'player' : Icons.person_pin_rounded,
};

Icon getIcon(String nomIcona){
  return Icon(_icons[nomIcona],color: Colors.blue);
}