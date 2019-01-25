import 'package:flutter/material.dart';
import 'package:planet/routes/PlanetRoute.dart';

void main() {
  runApp(new MaterialApp(
    title: "Planets",
    routes: PlanetRoute.route,
    initialRoute: '/',
    ));
}