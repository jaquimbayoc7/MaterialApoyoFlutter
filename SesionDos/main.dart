import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  final double iconoSize = 40.0;
  final TextStyle textStyle = TextStyle(color: Colors.grey, fontSize: 30.0);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Aplicación en Flutter"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Mycard(
                titulo: Text(
                  "I love Flutter!",
                  style: textStyle,
                ),
                icono:
                    Icon(Icons.favorite, color: Colors.red, size: iconoSize)),
            Mycard(
                titulo: Text(
                  "I Like Facebook!",
                  style: textStyle,
                ),
                icono:
                    Icon(Icons.thumb_up, color: Colors.blue, size: iconoSize))
          ],
        ),
      ),
    );
  }
}

class Mycard extends StatelessWidget {
  final Widget titulo;
  final Widget icono;

  Mycard({this.titulo, this.icono});
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[this.titulo, this.icono],
            )));
  }
}
