import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.symmetric(
        vertical: 8
      ),
      height: 2,
      width: 18,
      color: Colors.blue,
    );
  }  
}