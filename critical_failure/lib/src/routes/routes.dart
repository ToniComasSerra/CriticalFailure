import 'package:critical_failure/src/pages/character_sheet_page.dart';
import 'package:critical_failure/src/pages/DM/dungeon_master_page.dart';
import 'package:critical_failure/src/pages/home_page.dart';
import 'package:critical_failure/src/pages/player_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/' : (BuildContext context) => const HomePage(),
    'character' : (BuildContext context) => CharacterSheet(),
    'player' : (BuildContext context) => Player(),
    'dm' : (BuildContext context) => DungeonMaster(),
  };
}
