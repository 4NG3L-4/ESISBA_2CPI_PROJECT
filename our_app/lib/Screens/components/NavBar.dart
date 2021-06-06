import 'package:flutter/material.dart';
import 'package:our_app/constants.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: <Widget>[
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(
              color: myLightWhite,
            ),
            child: Icon(Icons.home),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(
              color: myLightWhite,
            ),
            child: Icon(Icons.home),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(
              color: myLightWhite,
            ),
            child: Icon(Icons.home),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(
              color: myLightWhite,
            ),
            child: Icon(Icons.home),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(
              color: myLightWhite,
            ),
            child: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
