import 'package:flutter/material.dart';
import 'package:planet/models/Planet.dart';

class PlanetDetailPage extends StatelessWidget {
  final Planet planet;

  PlanetDetailPage(this.planet);

  Container _getBackground() {
    return new Container(
      child: new Image.network(
        planet.picture,
        fit: BoxFit.cover,
        height: 300,
      ),
      constraints: new BoxConstraints.expand(height: 300),
    );
  }

  Container _getGradient() {
    return new Container(
      margin: new EdgeInsets.only(
        top: 190,
      ),
      height: 110,
      decoration: new BoxDecoration(
          gradient: new LinearGradient(
        colors: <Color>[Colors.deepPurple, Colors.teal],
        stops: [0, 0.9],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(0, 1),
      )),
    );
  }

  Widget _getContent() {
    return new ListView(
      padding: new EdgeInsets.fromLTRB(0, 72, 0, 32),
      children: <Widget>[],
    );
  }

  Widget _getToolbar(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.only(
        top: MediaQuery.of(context)
          .padding
          .top
      ),
      child: new BackButton(color: Colors.white,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
          constraints: new BoxConstraints.expand(),
          color: Colors.black26,
          child: new Stack(
            children: <Widget>[
              _getBackground(),
              _getGradient(),
              _getContent(),
              _getToolbar(context),
            ],
          )),
    );
  }
}
