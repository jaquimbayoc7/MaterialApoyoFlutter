import 'package:flutter/material.dart';

class Boton extends StatefulWidget {
  @override
  BotonState createState() => BotonState();
}

class BotonState extends State<Boton> {
  String flutterText = "";
  int indice = 0;
  List<String> coleccion = ['Hola', 'a', 'todos', 'Que más'];

  void onPressBoton() {
    setState(() {
      flutterText = coleccion[indice];
      if (indice < 3) {
        indice++;
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
          title: Text("App con Estado"),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Container(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(flutterText, style: TextStyle(fontSize: 40.0)),
            Padding(padding: EdgeInsets.all(10.0)),
            RaisedButton(
                child: Text("Actualizar"),
                textColor: Colors.white,
                onPressed: onPressBoton,
                color: Colors.orangeAccent)
          ],
        ))));
  }
}
