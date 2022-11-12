import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:weather_myapp/screens/weather_details.dart';

class animationScreen extends StatefulWidget {
  const animationScreen({super.key});

  @override
  State<animationScreen> createState() => _animationScreenState();
}

class _animationScreenState extends State<animationScreen> {
  void initState() {
    Timer(
      Duration(milliseconds: 2000),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => weatherDetailScreen(),
            ));
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      body: (Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ElasticInDown(
              child: ColorMethod(renk: Colors.red),
              duration: Duration(milliseconds: 1000),
            ),
            ElasticInDown(
              child: ColorMethod(renk: Colors.blue),
              duration: Duration(milliseconds: 1500),
            ),
            ElasticInDown(
              child: ColorMethod(renk: Colors.green),
              duration: Duration(milliseconds: 2000),
            ),
            ElasticInDown(
              child: ColorMethod(renk: Colors.yellow),
              duration: Duration(milliseconds: 2500),
            ),
          ],
        ),
      )),
    );
  }
}

class ColorMethod extends StatelessWidget {
  ColorMethod({
    required this.renk,
    Key? key,
  }) : super(key: key);
  Color renk;

  @override
  Widget build(BuildContext context) {
    return Container(width: 50, height: 50, color: renk);
  }
}
