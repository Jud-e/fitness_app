import 'package:fitness_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget xMargin(double x) {
  return SizedBox(width: x);
}

Widget yMargin(double y) {
  return SizedBox(height: y);
}

Widget text(String text, double fontSize, Color color) {
  return Text(
    text,
    // style: GoogleFonts.quicksand(fontSize: fontSize, color: color),
    style: TextStyle(fontSize: fontSize, color: color),
  );
}

Widget tracker(IconData icon, String text1, String text2, Color color) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: whiteBg),
        borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
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

Widget detail(IconData icon1, String title, String subtitle, String duration) {
  return Container(
    decoration:
        BoxDecoration(color: greyBg, borderRadius: BorderRadius.circular(15)),
    width: double.infinity,
    // height: 80,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(2, 2, 15, 2),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(
                    icon1,
                    color: blueIcon,
                  ),
                )),
            xMargin(12),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text(title, 15, Colors.black),
                yMargin(5),
                text(subtitle, 12, Colors.black)
              ],
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
              Icons.more_horiz_outlined,
              color: blackBg,
            ),
            text(duration, 12, blueIcon),
          ],
        )
      ]),
    ),
  );
}

Widget header(BuildContext context, String title) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        decoration: BoxDecoration(
            border: Border.all(color: darkGrey),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(Icons.arrow_back)),
        ),
      ),
      text(title, 15, Colors.black),
      Container(
        decoration: BoxDecoration(
            border: Border.all(color: darkGrey),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(Icons.abc)),
        ),
      ),
    ],
  );
}
