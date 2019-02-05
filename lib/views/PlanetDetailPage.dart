import 'package:flutter/material.dart';
import 'package:planet/models/Planet.dart';

class PlanetDetailPage extends StatelessWidget {

  final Planet planet;

  PlanetDetailPage(this.planet);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        constraints: new BoxConstraints.expand(),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(planet.name),
            new Image.asset(
              planet.image,
              width: 96,
              height: 96,
            )
          ],
        ),
      ),
    );
  }
}