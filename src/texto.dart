import 'package:flutter/material.dart';

class Texto extends StatefulWidget {
  @override
  _TextoState createState() => new _TextoState();
}

class _TextoState extends State<Texto> {
  String inputText = "";
  final TextEditingController controller = TextEditingController();

  void onSubmitted(String value) {
    setState(() {
      inputText = inputText + "\n" + value;
      controller.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Textos"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(hintText: "Ingrese el Texto Aquí"),
            onSubmitted: onSubmitted,
            controller: controller,
          ),
          Text(inputText)
        ],
      )),
    );
  }
}
