import 'package:critical_failure/src/pages/character_sheet.dart';
import 'package:critical_failure/src/pages/home_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/' : (BuildContext context) => const HomePage(),
    'character' : (BuildContext context) => CharacterSheet(),
  };
}