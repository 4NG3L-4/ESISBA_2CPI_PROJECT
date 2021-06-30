import 'package:flutter/material.dart';

class OurteachersScreen extends StatelessWidget {
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
                color: Colors.white,
              ),
            ),
            Container(
              child: Text("Our teacher page !"),
            )
          ],
        ),
      ),
    );
  }
}
