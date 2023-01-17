import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

Widget tracker(IconData icon, String text1, String text2, Color color) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(),
        borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 15,
            color: color,
          ),
          xMargin(5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(text1, 10, Colors.grey),
              text(text2, 13, Colors.black)
            ],
          )
        ],
      ),
    ),
  );
}
