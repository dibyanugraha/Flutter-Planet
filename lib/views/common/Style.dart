import 'package:flutter/material.dart';

class Style {
  static final baseTextStyle = const TextStyle(fontFamily: 'Poppins');
  static final commonTextStyle = baseTextStyle.copyWith(
      color: Colors.lightBlue, fontSize: 14, fontWeight: FontWeight.w400);

  static final smallTextStyle = commonTextStyle.copyWith(
    fontSize: 9,
  );

  static final headerTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static final titleTextStyle = baseTextStyle.copyWith(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
}
