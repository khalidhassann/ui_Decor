import 'package:flutter/material.dart';

class ColorCircle {
  Color? clr;
  ColorCircle({required this.clr});
}

class ColorPalette extends StatelessWidget {
  final ColorCircle colorCircle;
  ColorPalette({required this.colorCircle});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18.0,
      height: 18.0,
      decoration: new BoxDecoration(
          shape: BoxShape.circle,
          color: colorCircle.clr,
          border: Border.all(color: Colors.grey, width: 0.1)),
    );
  }
}
