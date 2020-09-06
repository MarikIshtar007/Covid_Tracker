import 'dart:async';

import 'package:covid_tracker_flutter/screens/index.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    myTimer();
  }

  myTimer() async {
    var duration = Duration(milliseconds: 3500);
    return Timer(duration, routeNav);
  }

  routeNav() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => IndexPage()));
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Image.asset('assets/images/virus_banner.png'),
            height: height * 0.58,
            width: width * 0.8,
          ),
          Stack(
            overflow: Overflow.visible,
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: height * 0.08,
                child: Text('COVID-19',
                    style: TextStyle(
                        fontFamily: 'Aldrich',
                        fontSize: 35,
                        color: Color(0xFF4F2E2E),
                        shadows: [
                          Shadow(
                              offset: Offset(0.5, 0.5),
                              blurRadius: 3.0,
                              color: Color.fromARGB(120, 0, 0, 0))
                        ],
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              ),
              Positioned(
                child: Text(
                  'Tracker',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Aldrich',
                      fontSize: 35,
                      color: Color(0xFF4F2E2E),
                      shadows: [
                        Shadow(
                            offset: Offset(0.5, 0.5),
                            blurRadius: 3.0,
                            color: Color.fromARGB(120, 0, 0, 0))
                      ],
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
