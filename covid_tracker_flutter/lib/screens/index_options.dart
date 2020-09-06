import 'package:flutter/material.dart';

class IndexOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Container(
              height: 100,
              width: 400,
              color: Colors.grey,
              child: Text('Sign In'),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Container(
              height: 100,
              width: 400,
              color: Colors.green,
              child: Text('Sign Up'),
            ),
          ),
        ],
      ),
    );
  }
}
