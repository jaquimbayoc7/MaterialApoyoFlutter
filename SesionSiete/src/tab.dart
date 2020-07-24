import 'package:app_tabulador/screens/favorito.dart';
import 'package:app_tabulador/screens/home.dart';
import 'package:app_tabulador/screens/video.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => new _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("App con Tabulador"),
          backgroundColor: Colors.redAccent,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.videocam)),
              Tab(icon: Icon(Icons.favorite))
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[Home(), Video(), Favorito()],
        ),
      ),
    );
  }
}
