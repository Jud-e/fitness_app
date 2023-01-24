import 'package:fitness_app/colors.dart';
import 'package:fitness_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBg,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(context, "Activities"),
            yMargin(20),
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
                                    text("Carbo", 20, Colors.black),
                                    yMargin(30),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text: "10",
                                          style: TextStyle(
                                              fontSize: 20, color: blueIcon)),
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
                                    Icon(
                                      Icons.more_horiz_rounded,
                                      color: darker,
                                    ),
                                    yMargin(40),
                                    const Icon(Icons.favorite_border_rounded),
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
                                    text("Water", 20, Colors.black),
                                    yMargin(30),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text: "2 Litres",
                                          style: TextStyle(
                                              fontSize: 20, color: blueIcon)),
                                      TextSpan(
                                          text: "/day",
                                          style: TextStyle(
                                              fontSize: 13, color: blackBg))
                                    ])),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.more_horiz_rounded,
                                      color: darker,
                                    ),
                                    yMargin(40),
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
            yMargin(10),
            Container(
              decoration: BoxDecoration(
                  color: greyBg,
                  border: Border.all(color: greyBg),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(3, 10, 3, 3),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 0, 3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(FontAwesomeIcons.personWalking,
                                      color: blueIcon),
                                ),
                              ),
                              xMargin(10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text("Walking", 14, blackBg),
                                  text("Today at 12PM . 12KM", 13, darker)
                                ],
                              )
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_horiz,
                                color: darker,
                              ))
                        ],
                      ),
                    ),
                    yMargin(7),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                            flex: 3,
                            child: tracker(Icons.arrow_upward, "Calories",
                                "8.5 mmol/L", darker)),
                        Flexible(
                            flex: 3,
                            child: tracker(Icons.compare_arrows, "Run duration",
                                "2 hours", darker)),
                        Flexible(
                            flex: 3,
                            child: tracker(
                                Icons.arrow_downward, "Speed", "4km", darker)),
                      ],
                    )
                  ],
                ),
              ),
            ),
            yMargin(20),
            text("Description", 15, blackBg),
            yMargin(10),
            text(
                "A medical student-run clinic is a health care delivery program in which medical students take primary responsibility for logistics",
                15,
                darker),
            Divider(
              height: 50,
              color: darkGrey,
            ),
            Container(
              decoration: BoxDecoration(
                  color: greyBg,
                  border: Border.all(color: greyBg),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(3, 10, 3, 3),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 0, 3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(FontAwesomeIcons.dumbbell,
                                      color: blueIcon),
                                ),
                              ),
                              xMargin(10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text("Fitness", 14, blackBg),
                                  text("Today at 12PM . 12KM", 13, darker)
                                ],
                              )
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_horiz,
                                color: darker,
                              ))
                        ],
                      ),
                    ),
                    yMargin(7),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                            flex: 3,
                            child: tracker(Icons.arrow_upward, "Calories",
                                "12 mmol/L", darker)),
                        Flexible(
                            flex: 3,
                            child: tracker(Icons.compare_arrows, "Run duration",
                                "4 hours", darker)),
                        Flexible(
                            flex: 3,
                            child: tracker(
                                Icons.arrow_downward, "Speed", "0km", darker)),
                      ],
                    )
                  ],
                ),
              ),
            ),
            yMargin(20),
            text("Description", 15, blackBg),
            yMargin(10),
            text(
                "Medical Fitness and Wellness Group specializes in Personal Training, Corrective Exercise, Stretching, Massage, Nutrition for weight loss",
                15,
                darker),
          ],
        ))),
      ),
    );
  }
}
