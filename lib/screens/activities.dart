import 'package:fitness_app/colors.dart';
import 'package:fitness_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        text("Water", 20, Colors.black),
                                        xMargin(54),
                                        Icon(Icons.more_horiz_outlined)
                                      ],
                                    ),
                                    yMargin(30),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text: "2 Litres",
                                          style: TextStyle(
                                              fontSize: 30, color: blueIcon)),
                                    ])),
                                  ],
                                ),
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
                  color: Colors.black,
                  border: Border.all(),
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
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(Icons.search),
                                ),
                              ),
                              xMargin(10),
                              Column(
                                children: [
                                  text("Glucose: 5.9 mmol/L", 14, Colors.white),
                                  text("You're on a good slte", 13,
                                      const Color.fromARGB(255, 230, 230, 230))
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
            yMargin(20),
            text("Description", 20, blackBg),
            yMargin(10),
            text(
                "liroboborubfiwvfboibefyovfoywbfiwfbweifbeifefwhfbwhebfwfbwefbwfubweifbewfuvewfiuvewfiuewvfiuefue",
                15,
                blackBg),
            Divider(
              height: 50,
              color: blackBg,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(),
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
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(Icons.search),
                                ),
                              ),
                              xMargin(10),
                              Column(
                                children: [
                                  text("Glucose: 5.9 mmol/L", 14, Colors.white),
                                  text("You're on a good slte", 13,
                                      const Color.fromARGB(255, 230, 230, 230))
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
            yMargin(20),
            text("Description", 20, blackBg),
            yMargin(10),
            text(
                "liroboborubfiwvfboibefyovfoywbfiwfbweifbeifefwhfbwhebfwfbwefbwfubweifbewfuvewfiuvewfiuewvfiuefue",
                15,
                blackBg),
          ],
        ))),
      ),
    );
  }
}
