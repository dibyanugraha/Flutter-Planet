import 'package:flutter/material.dart';
import 'package:planet/views/home/PlanetRow.dart';
import 'package:planet/data/PlanetData.dart';

class PlanetHomeBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return new PlanetRow(planets[0]);
    }
}