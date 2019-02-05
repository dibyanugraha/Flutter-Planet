import 'package:flutter/material.dart';
import 'package:planet/views/summary/PlanetSummary.dart';
import 'package:planet/data/PlanetData.dart';

class PlanetHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
        child: new Container(
      color: Colors.orange,
      child: new CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          new SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            sliver: new SliverFixedExtentList(
              itemExtent: 152,
              delegate: new SliverChildBuilderDelegate(
                (context, index) => new PlanetSummary(planets[index]),
                childCount: planets.length,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
