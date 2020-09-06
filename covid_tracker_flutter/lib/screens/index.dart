import 'package:covid_tracker_flutter/screens/index_options.dart';
import 'package:covid_tracker_flutter/screens/login.dart';
import 'package:covid_tracker_flutter/screens/signup.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.43,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Positioned(
                  bottom: height * 0.08,
                  right: width * 0.28,
                  child: Container(
                    height: height * 0.44,
                    width: height * 0.44,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.red,
                              Colors.red[300].withOpacity(0.9)
                            ])),
                  ),
                ),
                Positioned(
                  bottom: height * 0.05,
                  right: width * 0.35,
                  child: Container(
                    height: height * 0.42,
                    width: height * 0.42,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.centerRight,
                          colors: [Colors.blue[400], Colors.blue[900]]),
                    ),
                  ),
                ),
                Positioned(
                  bottom: height * 0.12,
                  right: width * 0.47,
                  child: Container(
                    height: height * 0.4,
                    width: height * 0.4,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.blue[600],
                            Colors.blue,
                            Colors.blue[200].withAlpha(250)
                          ],
                        )),
                  ),
                ),
                Positioned(
                  bottom: height * 0.05,
                  right: width * 0.55,
                  child: Container(
                    alignment: Alignment.topLeft,
                    width: width * 0.61,
                    height: height * 0.61,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/virus.png'),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                Positioned(
                  top: height * 0.24,
                  left: width * 0.08,
                  child: Text(
                    'Welcome\nBack',
                    style: TextStyle(
                      letterSpacing: 0.9,
                      fontFamily: 'Aldrich',
                      color: Color(0xFFF0F0F0),
                      fontSize: 30,
                      shadows: [
                        Shadow(
                            blurRadius: 2,
                            color: Colors.black54,
                            offset: Offset(1.0, 1.0))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: height * 0.57,
            width: width,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              initialRoute: '/',
              routes: {
                '/': (context) => IndexOptions(),
                '/login': (context) => LoginScreen(),
                '/signup': (context) => SignUpScreen(),
              },
              // home:
            ),
          ),
        ],
      ),
    );
  }
}
