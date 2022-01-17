import 'package:flutter/material.dart';

class CharacterSheet extends StatefulWidget {
  const CharacterSheet({Key? key}) : super(key: key);

  @override
  _CharacterSheetState createState() => _CharacterSheetState();
}

class _CharacterSheetState extends State<CharacterSheet> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ficha de Personaje'),
      ),
      
    );
  }
}