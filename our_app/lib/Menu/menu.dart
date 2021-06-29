import 'package:flutter/material.dart';
import 'package:our_app/constants.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: size.height,
              decoration: BoxDecoration(
                color: myDarkBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
