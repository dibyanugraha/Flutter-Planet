import 'package:flutter/material.dart';
import 'package:planet/models/Planet.dart';
import 'package:planet/views/summary/PlanetSummary.dart';
import 'package:planet/views/common/Style.dart';
import 'package:planet/views/separator/PlanetSeparator.dart';

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
    final _overviewTitle = "Overview".toUpperCase();
    return new ListView(
      padding: new EdgeInsets.fromLTRB(0, 72, 0, 32),
      children: <Widget>[
        new PlanetSummary(
          planet,
          horizontal: false,
        ),
        new Container(
          padding: new EdgeInsets.symmetric(horizontal: 32),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                _overviewTitle,
                style: Style.headerTextStyle,
              ),
              new Separator(),
              new Text(planet.description, style: Style.commonTextStyle),
            ],
          ),
        )
      ],
    );
  }

  Widget _getToolbar(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: new BackButton(
        color: Colors.white,
      ),
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
