import 'package:flutter/material.dart';

class Dialogo extends StatefulWidget {
  @override
  _DialogoState createState() => new _DialogoState();
}

//Enumerador
enum DialogAction { yes, no }

class _DialogoState extends State<Dialogo> {
  String inputText = "";

  void alertResult(DialogAction action) {
    print('Tu selección es: $action');
  }

  void mostrarAlerta(String value) {
    AlertDialog dialog = AlertDialog(
      content: Text(value),
      actions: <Widget>[
        FlatButton(
            onPressed: () {
              alertResult(DialogAction.yes);
            },
            child: Text("Si")),
        FlatButton(
            onPressed: () {
              alertResult(DialogAction.no);
            },
            child: Text("No"))
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        });
  }

  void onChanged(String value) {
    inputText = value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("App con Dialog"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(hintText: "Ingrese el texto Aquí"),
            onChanged: onChanged,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          RaisedButton(
              child: Text("Mostrar Dialogo"),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                mostrarAlerta(inputText);
              })
        ],
      )),
    );
  }
}
