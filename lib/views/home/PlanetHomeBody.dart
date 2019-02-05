import 'package:flutter/material.dart';
import 'package:planet/views/home/PlanetRow.dart';
import 'package:planet/data/PlanetData.dart';

class PlanetHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
        child: new ListView.builder(
      itemBuilder: (context, index) => new PlanetRow(planets[index]),
      itemCount: planets.length,
      padding: new EdgeInsets.symmetric(vertical: 16),
    ));
  }
}
