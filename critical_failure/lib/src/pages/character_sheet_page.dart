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
        child: ListView(
          children: [
            const Padding(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)),

            const FadeInImage(
              placeholder: AssetImage('assets/dado.gif'), 
              image: NetworkImage('https://i.imgur.com/SdRQ8eh.png'),
              fadeInDuration: Duration(milliseconds: 100),
              height: 100,
              fit: BoxFit.cover,
            ),

            FormBuilderTextField(
              name: 'nombre',
              decoration: const InputDecoration(labelText: 'Nombre para el personaje'),
              validator: (value) {
                if(value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                  return "Inserta un nombre valido";
                } else {
                  return null;
                }
              },
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

            Wrap(
              children: <Widget>[
                ElevatedButton(
                  child: const Text('Reset'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow[300],
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  ),
                  onPressed: () {
                    _formKey.currentState!.reset();
                    FocusScope.of(context).unfocus();
                  } ,
                ),

                ElevatedButton(
                  child: const Text('Crear'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow[300],
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  ),
                  onPressed: () {
                    if(_formKey.currentState!.validate()) {
                      
                    }
                  },
                )
              ],
            ),
          ],
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }
}