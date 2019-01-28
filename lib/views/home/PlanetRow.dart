import 'package:flutter/material.dart';
import 'package:planet/models/Planet.dart';

class PlanetRow extends StatelessWidget {
  final Planet planet;

  PlanetRow(this.planet);

  @override
  Widget build(BuildContext context) {
    final baseTextStyle = const TextStyle(fontFamily: 'Poppins');

    final headerTextStyle = const TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    );

    final regularTextStyle = baseTextStyle.copyWith(
      color: Colors.white,
      fontSize: 9,
      fontWeight: FontWeight.w400,
    );

    final subHeaderTextStyle = regularTextStyle.copyWith(
      fontSize: 12,
    );

    final planetThumbnail = new Container(
      margin: new EdgeInsets.symmetric(vertical: 16),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: new AssetImage(planet.image),
        height: 92,
        width: 92,
      ),
    );

    Widget _planetValue(
      {
        String value,
        String image
      }
    )
    {
        return new Row(
        children: <Widget>[
          new Image.asset(image, height: 12,),
          new Container(width: 8,),
          new Text(planet.gravity, style: regularTextStyle)
        ],
      );
    }

    final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(76, 16, 16, 16),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            height: 4,
          ),
          new Text(
            planet.name,
          style: headerTextStyle,),
          new Container(
            height: 10,
          ),
          new Text(
            planet.location,
            style: subHeaderTextStyle,
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
                child: _planetValue(
                  value: planet.distance,
                  image: 'assets/images/ic_distance.png'
                ),
              ),
              new Expanded(
                child: _planetValue(
                  value: planet.gravity,
                  image: 'assets/images/ic_gravity.png'
                ),
              )
            ],
          )
        ],
      ),
    );

    final planetCard = new Container(
      child: planetCardContent,
      height: 124,
      margin: new EdgeInsets.only(left: 46),
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
    return new Container(
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
    );
  }
}
