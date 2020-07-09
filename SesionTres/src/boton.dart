import 'package:flutter/material.dart';

class Boton extends StatefulWidget {
  @override
  BotonState createState() => BotonState();
}

class BotonState extends State<Boton> {
  String fluttertext = "";
  int indice = 0;
  List<String> coleccion = ['Hola', 'Como', 'Estas', 'Hoy'];

  void onPressBoton() {
    setState(() {
      fluttertext = coleccion[indice];
      if (indice < 3) {
        indice = indice + 1;
      } else {
        indice = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("App Con Estado"),
          backgroundColor: Colors.orange,
        ),
        body: Container(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              fluttertext,
              style: TextStyle(fontSize: 40.0),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
              child: Text("Actualizar"),
              onPressed: onPressBoton,
              textColor: Colors.white,
              color: Colors.blueAccent,
            )
          ],
        ))));
  }
}
