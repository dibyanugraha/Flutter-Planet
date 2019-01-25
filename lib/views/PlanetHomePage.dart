import 'package:flutter/material.dart';
import 'package:planet/views/common/GradientAppBar.dart';

class PlanetHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        body: new Column(
          children: <Widget>[
            new GradientAppBar("Planets"),
            new PlanetHomeBody(),
          ],
        ),
      );
    }
}