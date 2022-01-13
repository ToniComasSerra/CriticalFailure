import 'package:flutter/material.dart';

class CharacterSheet extends StatefulWidget {
  CharacterSheet({Key? key}) : super(key: key);

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
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ficha de Personaje'),
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildNombre(),

              SizedBox(height: 100,),
              ElevatedButton(
                child: Text(
                  'Enviar',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                onPressed: () => {
                  
                },
              )
            ],
          ),
        ),
      )
    );
  }
}