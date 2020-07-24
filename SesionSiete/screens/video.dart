import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(Icons.videocam, size: 170.0, color: Colors.greenAccent),
          Text("Segundo tabulador")
        ],
      ),
    );
  }
}
