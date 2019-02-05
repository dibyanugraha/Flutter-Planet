import 'package:flutter/material.dart';
import 'package:planet/models/Planet.dart';
import "package:planet/views/PlanetDetailPage.dart";
import 'package:planet/views/common/Style.dart';

class PlanetSummary extends StatelessWidget {
  final Planet planet;
  final bool horizontal;

  PlanetSummary(
    this.planet,
    {this.horizontal = true});

    PlanetSummary.vertical(this.planet) : horizontal = false;

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = new Container(
      margin: new EdgeInsets.symmetric(vertical: 16),
      alignment: horizontal ? FractionalOffset.centerLeft
        : FractionalOffset.center,
      child: new Hero(
        tag: "planet-hero-${planet.id}",
        child: new Image(
          image: new AssetImage(planet.image),
          height: 92,
          width: 92,
        ),
      ),
    );

    Widget _planetValue({String value, String image}) {
      return new Row(
        children: <Widget>[
          new Image.asset(
            image,
            height: 12,
          ),
          new Container(
            width: 8,
          ),
          new Text(value, style: Style.commonTextStyle)
        ],
      );
    }

    final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(horizontal ? 76 : 16, 
        horizontal ? 16 : 42, 16, 16),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
          new Container(
            height: 4,
          ),
          new Text(
            planet.name,
            style: Style.headerTextStyle,
          ),
          new Container(
            height: 10,
          ),
          new Text(
            planet.location,
            style: Style.regularTextStyle,
          ),
          new Container(
            margin: new EdgeInsets.symmetric(vertical: 8),
            height: 2,
            width: 18,
            color: Colors.teal,
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                flex: horizontal ? 1 : 0,
                child: _planetValue(
                    value: planet.distance,
                    image: 'assets/images/ic_distance.png'),
              ),
              new Expanded(
                flex: horizontal ? 1 : 0,
                child: _planetValue(
                    value: planet.gravity,
                    image: 'assets/images/ic_gravity.png'),
              )
            ],
          )
        ],
      ),
    );

    final planetCard = new Container(
      child: planetCardContent,
      height: horizontal ? 124 : 154,
      margin: horizontal
        ? new EdgeInsets.only(left: 46)
        : new EdgeInsets.only(top: 72),
      decoration: new BoxDecoration(
        color: Colors.lightBlue,
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: new Offset(0, 10),
          ),
        ],
      ),
    );

    return new GestureDetector(
      onTap: horizontal
        ? () => Navigator.of(context).push(
          new PageRouteBuilder(
            pageBuilder: (_, __, ___) => new PlanetDetailPage(planet),
            transitionsBuilder: 
              (context, animation, secondaryAnimation, child) => 
                FadeTransition(
                  opacity: animation,
                  child: child,
                )
          ))
        : null,
      child: new Container(
        height: 120,
        margin: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        child: new Stack(
          children: <Widget>[
            planetCard,
            planetThumbnail,
          ],
        ),
      ),
    );
  }
}
