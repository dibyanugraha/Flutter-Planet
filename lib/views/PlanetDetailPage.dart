import 'package:flutter/material.dart';
import 'package:planet/models/Planet.dart';

class PlanetDetailPage extends StatelessWidget {

  final Planet planet;

  PlanetDetailPage(this.planet);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Planet Detail"),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () => Navigator.pop(context),
          child: new Text("<< Go back >>"),
        ),
      ),
    );
  }
}