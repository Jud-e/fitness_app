import 'package:fitness_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class Overview extends StatefulWidget {
  const Overview({super.key});

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBg,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          children: [
            header(context, "Overview"),
            yMargin(20),
            Divider(
              color: blackBg,
              height: 50.0,
            ),
            Row(
              children: [
                Flexible(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          color: greyBg,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    text("Vegetable", 20, Colors.black),
                                    yMargin(30),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text: "35",
                                          style: TextStyle(
                                              fontSize: 30, color: blueIcon)),
                                      TextSpan(
                                          text: "%",
                                          style: TextStyle(
                                              fontSize: 13, color: blackBg))
                                    ])),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Icon(Icons.more_horiz_rounded),
                                    yMargin(40),
                                    Icon(
                                      FontAwesomeIcons.bottleDroplet,
                                      color: blueIcon,
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
                xMargin(10),
                Flexible(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          color: greyBg,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    text("Protein", 20, Colors.black),
                                    yMargin(30),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text: "55",
                                          style: TextStyle(
                                              fontSize: 30, color: blueIcon)),
                                      TextSpan(
                                          text: "%",
                                          style: TextStyle(
                                              fontSize: 13, color: blackBg))
                                    ])),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Icon(Icons.more_horiz_rounded),
                                    yMargin(40),
                                    Icon(
                                      FontAwesomeIcons.boltLightning,
                                      color: blueIcon,
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
              ],
            ),
            yMargin(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text("Make your life healthy", 15, Colors.black),
                GestureDetector(
                    onTap: () {}, child: text("Show all", 15, Colors.blue))
              ],
            ),
            yMargin(20),
            Column(
              children: [
                detail(FontAwesomeIcons.stethoscope, "Consultation",
                    "15 Jan 2023", "9AM to 10AM", darker),
                yMargin(10),
                detail(FontAwesomeIcons.personBooth, "Medical check up",
                    "Heart test", "11AM to 12AM", darker),
                yMargin(10),
                detail(FontAwesomeIcons.bottleWater, "Ketoprofen",
                    "After lunch", "10mg", blueIcon),
                yMargin(10),
                detail(FontAwesomeIcons.personWalking, "Walking", "15 Jan 2023",
                    "12AM to 1PM", darker),
                yMargin(10),
                detail(FontAwesomeIcons.dumbbell, "Fitness", "15 Jan 2023",
                    "1PM to 2PM", darker)
              ],
            )
          ],
        ))),
      ),
    );
  }
}
