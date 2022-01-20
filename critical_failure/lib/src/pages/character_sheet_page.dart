import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CharacterSheet extends StatefulWidget {
  const CharacterSheet({Key? key}) : super(key: key);

  @override
  _CharacterSheetState createState() => _CharacterSheetState();
}

class _CharacterSheetState extends State<CharacterSheet> {
  // La formkey es clave para trabajar con formularios, se usa principalmente
  // con currentState para verificar cada input del formulario
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
      // En lugar de usar los form de flutter, es una version descargada por dependencias
      // Los datos se manejan mucho mas facil con la propiedad values
      body: FormBuilder(
        // Aqui asignamos la key al formulario
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
        // Se asegura que el formulario sea validado
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
    // Campo custpmizado en lugar del TextField normal
    return FormBuilderTextField(
      name: 'nombre',
      decoration: const InputDecoration(labelText: 'Nombre para el personaje'),
      // Validacion para que el campo no devuelva un null
      validator: FormBuilderValidators.required(context)
    );
  }

  Widget _inputClase() {
    // Campo customizado el lugar del dropdownbutton
    return FormBuilderDropdown(
      name: 'clase',
      decoration: const InputDecoration(labelText: 'Selecciona una clase para el personaje'),
      initialValue: 'Luchador',
      // Aqui se inserta el map y el value del input con nombre clase, sera el valor seleccionado
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
            // Funcionalidad para reiniciar el formulario
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
          onPressed: () => {
            // Se guarda el estado del formulario para realizar la validacion
            _formKey.currentState!.save(),

            if(_formKey.currentState!.validate()) {
              // Si todos los campos han sido seleccionados, se informa del exito por consola
              print('Validation Succes, the hero is: ' + _formKey.currentState!.value.toString()),
            } else {
              print('Validation Failed')
            }
          }
        )
      ],
    );
  }
}