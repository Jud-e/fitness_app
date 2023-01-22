import 'package:fitness_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
          children: [header(context, "Overview")],
        ))),
      ),
    );
  }
}
