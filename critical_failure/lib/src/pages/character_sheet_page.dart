import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CharacterSheet extends StatefulWidget {
  const CharacterSheet({Key? key}) : super(key: key);

  @override
  _CharacterSheetState createState() => _CharacterSheetState();
}

class _CharacterSheetState extends State<CharacterSheet> {
  
  final _formKey = GlobalKey<FormBuilderState>();
  var clases = ['Luchador', 'Mago', 'Clerigo'];
  var razas = ['Humano', 'Elfo', 'Enano'];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: const Text('Ficha de Personaje'),
        backgroundColor: Colors.yellow[300],
      ),
      body: FormBuilder(
        key: _formKey,
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)),

            FormBuilderTextField(
              name: 'nombre',
              decoration: const InputDecoration(labelText: 'Nombre para el personaje'),
            ),

            FormBuilderDropdown(
              name: 'clase',
              decoration: const InputDecoration(labelText: 'Clases'),
              allowClear: true,
              hint: const Text('Selecciona una clase para el personaje'),
              items: clases.map((clase) => DropdownMenuItem(
                value: clase,
                child: Text(clase),
              )).toList(),
            ),

            FormBuilderDropdown(
              name: 'raza',
              decoration: const InputDecoration(labelText: 'Razas'),
              allowClear: true,
              hint: const Text('Selecciona una raza para el personaje'),
              items: razas.map((raza) => DropdownMenuItem(
                value: raza,
                child: Text(raza),
              )).toList(),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow[300],
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              ),
              onPressed: () {
                /*final validactionSucces = _formKey.currentState.validate();

                if(validactionSucces) {
                  _formKey.currentState.save();
                }*/
              },
              child: const Text('Crear')
            )
          ],
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }
}