import 'package:fitness_app/constants.dart';
import 'package:fitness_app/screens/activities.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(Icons.person),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(Icons.search),
                      ),
                    ),
                    xMargin(8.0),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(Icons.person),
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
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: text("It's all about how", 20.0, Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: text("we treat you.", 20.0, Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: text("That's powerful healing.", 13.0, Colors.grey),
                ),
              ],
            ),
            const Divider(
              height: 50.0,
              color: Colors.amber,
              thickness: 1.0,
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
            yMargin(12),
            Row(
              children: [
                Flexible(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
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
                                    text("SYS", 15, Colors.black),
                                    yMargin(20),
                                    RichText(
                                        text: const TextSpan(children: [
                                      TextSpan(
                                          text: "1123",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.blue)),
                                      TextSpan(
                                          text: "mmHg",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black))
                                    ])),
                                    yMargin(10),
                                    text("The meaning of ", 10, Colors.black),
                                    text("Care", 10, Colors.black)
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Icon(Icons.favorite_border_rounded),
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
                          color: Colors.grey,
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
                                    text("SYS", 15, Colors.black),
                                    yMargin(20),
                                    RichText(
                                        text: const TextSpan(children: [
                                      TextSpan(
                                          text: "1123",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.blue)),
                                      TextSpan(
                                          text: "mmHg",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black))
                                    ])),
                                    yMargin(10),
                                    text("The meaning of ", 10, Colors.black),
                                    text("Care", 10, Colors.black)
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Icon(Icons.favorite_border_rounded),
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
                Container(
                  color: Colors.amber,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        child: Icon(Icons.abc),
                      ),
                      xMargin(10),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              text("text", 10, Colors.black),
                              xMargin(20),
                              text("text", 10, Colors.black)
                            ],
                          ),
                          Row(
                            children: [
                              text("text", 10, Colors.black),
                              xMargin(20),
                              text("text", 10, Colors.black)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
