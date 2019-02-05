import 'package:flutter/material.dart';
import 'package:planet/views/home/PlanetRow.dart';
import 'package:planet/data/PlanetData.dart';

class PlanetHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
        child: new Container(
      color: Colors.blue,
      child: new CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          new SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            sliver: new SliverFixedExtentList(
              itemExtent: 152,
              delegate: new SliverChildBuilderDelegate(
                (context, index) => new PlanetRow(planets[index]),
                childCount: planets.length,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
