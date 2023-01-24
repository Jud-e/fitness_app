import 'package:fitness_app/colors.dart';
import 'package:fitness_app/constants.dart';
import 'package:fitness_app/screens/activities.dart';
import 'package:fitness_app/screens/overview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBg,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: darkGrey),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(Icons.person),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: darkGrey),
                            borderRadius: BorderRadius.circular(12)),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(Icons.search),
                        ),
                      ),
                      xMargin(8.0),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Overview())),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: darkGrey),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: FaIcon(FontAwesomeIcons.bookmark),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              yMargin(40.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                    child: text("It's all about how", 30.0, Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: text("we treat you.", 30.0, Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: text("That's powerful healing.", 18.0, Colors.grey),
                  ),
                ],
              ),
              Divider(
                height: 50.0,
                color: darkGrey,
                thickness: 1.0,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(3, 10, 3, 2),
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
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Icon(FontAwesomeIcons.recordVinyl),
                                  ),
                                ),
                                xMargin(10),
                                Column(
                                  children: [
                                    text("Glucose: 5.9 mmol/L", 14,
                                        Colors.white),
                                    text("You're on a good slte", 13, darkGrey)
                                  ],
                                )
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.more_horiz,
                                  color: Colors.white,
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
                              child: tracker(Icons.arrow_upward, "High",
                                  "8.5 mmol/L", Colors.green)),
                          Flexible(
                              flex: 3,
                              child: tracker(Icons.compare_arrows, "Normal",
                                  "5.5 mmol/L", Colors.black)),
                          Flexible(
                              flex: 3,
                              child: tracker(Icons.arrow_downward, "Low",
                                  "3.5 mmol/L", Colors.red)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              yMargin(12),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      text("SYS", 15, Colors.black),
                                      yMargin(20),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: "1123",
                                            style: TextStyle(
                                                fontSize: 20, color: blueIcon)),
                                        TextSpan(
                                            text: "mmHg",
                                            style: TextStyle(
                                                fontSize: 13, color: darker))
                                      ])),
                                      yMargin(10),
                                      text("The meaning of ", 10, darker),
                                      text("Care", 10, darker)
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.favorite_border_rounded,
                                        color: darker,
                                      ),
                                      yMargin(40),
                                      Icon(
                                        Icons.favorite_border_rounded,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      text("DIA", 15, Colors.black),
                                      yMargin(20),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: "79",
                                            style: TextStyle(
                                                fontSize: 20, color: blueIcon)),
                                        TextSpan(
                                            text: "mmHg",
                                            style: TextStyle(
                                                fontSize: 13, color: darker))
                                      ])),
                                      yMargin(10),
                                      text("Growing to Meet", 10, darker),
                                      text("Your Needs", 10, darker)
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.favorite_border_rounded,
                                        color: darker,
                                      ),
                                      yMargin(40),
                                      Icon(
                                        Icons.favorite_border_rounded,
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
                  text("Today's Activities", 15, Colors.black),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Activity()));
                      },
                      child: text("Details", 15, Colors.blue))
                ],
              ),
              yMargin(20),
              Column(
                children: [
                  detail(FontAwesomeIcons.circle, "Azoptec Obat", "After lunch",
                      "10mg", blueIcon),
                  yMargin(10),
                  detail(FontAwesomeIcons.bottleWater, "Ketoprofen",
                      "After lunch", "10mg", blueIcon),
                  yMargin(10),
                  detail(FontAwesomeIcons.personWalking, "Walking",
                      "15 Jan 2023", "12PM to 1PM", darker),
                  yMargin(10),
                  detail(FontAwesomeIcons.dumbbell, "Fitness", "15 Jan 2023",
                      "1PM to 2PM", darker)
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
