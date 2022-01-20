import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          children: [
            _mostrarIcono(),
            _inputNombre(),
            _inputClase(),
            _inputRaza(),
            _mostrarBotones()
          ],
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }

  Widget _mostrarIcono() {
    return const FadeInImage(
      placeholder: AssetImage('assets/dado.gif'), 
      image: NetworkImage('https://i.imgur.com/SdRQ8eh.png'),
      fadeInDuration: Duration(milliseconds: 100),
      height: 250,
    );
  }

  Widget _inputNombre() {
    return FormBuilderTextField(
      name: 'nombre',
      decoration: const InputDecoration(labelText: 'Nombre para el personaje'),
      validator: FormBuilderValidators.required(context)
    );
  }

  Widget _inputClase() {
    return FormBuilderDropdown(
      name: 'clase',
      decoration: const InputDecoration(labelText: 'Selecciona una clase para el personaje'),
      initialValue: 'Luchador',
      items: clases.map((clase) => DropdownMenuItem(
        value: clase,
        child: Text(clase),
      )).toList(),
    );
  }

  Widget _inputRaza() {
    return FormBuilderDropdown(
      name: 'raza',
      decoration: const InputDecoration(labelText: 'Selecciona una raza para el personaje'),
      initialValue: 'Humano',
      items: razas.map((raza) => DropdownMenuItem(
        value: raza,
        child: Text(raza),
      )).toList(),
    );
  }

  Widget _mostrarBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            _formKey.currentState!.save();
            if(_formKey.currentState!.validate()) {
              
              const AlertDialog(
                title: Text('Resultado'),
                content: Text('Personaje'),
              );
            } else {
              print('Validation Failed');
            }
          }
        )  
      ],
    );
  }
}