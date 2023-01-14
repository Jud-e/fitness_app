import 'package:flutter/cupertino.dart';

Widget xMargin(double x) {
  return SizedBox(width: x);
}

Widget yMargin(double y) {
  return SizedBox(height: y);
}

Widget text(String text, double fontSize, Color color) {
  return Text(
    text,
    style: TextStyle(fontSize: fontSize, color: color),
  );
}
