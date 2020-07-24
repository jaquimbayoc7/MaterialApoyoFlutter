import 'package:flutter/material.dart';

class Favorito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(Icons.favorite, size: 170.0, color: Colors.orangeAccent),
          Text("Tercer tabulador")
        ],
      ),
    );
  }
}
