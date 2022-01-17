import 'package:flutter/material.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';

class CharacterSheet extends StatefulWidget {
  const CharacterSheet({Key? key}) : super(key: key);

  @override
  _CharacterSheetState createState() => _CharacterSheetState();
}

class _CharacterSheetState extends State<CharacterSheet> {
  late String _nombre;
  // La globalkey o formkey es una referencia al form mismo, tiene un uso standarizado en documentos oficiales
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildNombre() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Nombre del personaje'),
      validator: (value) {
        if(value!.isEmpty){
          return 'Se requiere un nombre';
        }
      },
      onSaved: (value){
        _nombre = value!;
      },
    );
  }
  
  String _raza = '';
  String _resultado = '';
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  // La globalkey o formkey es una referencia al form mismo, tiene un uso standarizado en documentos oficiales

  _saveForm() {
    var form = formkey.currentState;
    if (form!.validate()) {
      form.save();
      setState(() {
        _resultado = _raza;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ficha de Personaje'),
      ),
      body: Center(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(16),
                // Esto es una variante del dropdrownbutton que se importa añadiendo la dependencia en el fichero pubspec.yalm
                child: DropDownFormField(
                  titleText: 'Elije tu raza',
                  hintText: 'Elije una de las disponibles',
                  value: _raza,
                  onSaved: (value) {
                    setState(() {
                      _raza = value;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      _raza = value;
                    });
                  },
                  dataSource: [
                    {
                      "display" : "Humano",
                      "value" : "Humano",
                    },
                    {
                      "display" : "Elfo",
                      "value" : "Elfo",
                    },
                    {
                      "display" : "Enano",
                      "value" : "Enano",
                    },
                    {
                      "display" : "Mediano",
                      "value" : "Mediano",
                    },
                  ],
                  textField: 'display',
                  valueField: 'value',
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: ElevatedButton(
                  child: const Text('Guardar'),
                  onPressed: _saveForm,
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}