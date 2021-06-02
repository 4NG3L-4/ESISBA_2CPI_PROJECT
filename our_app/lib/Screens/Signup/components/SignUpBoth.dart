import 'package:flutter/material.dart';
import 'package:our_app/components/RoundedButton.dart';
import 'package:our_app/Screens/Signup/components/SignUpTeacher.dart';
import 'package:our_app/constants.dart';

class SignUpBothScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //background
          Container(
            width: double.infinity,
            height: size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [const Color(0xFF424874), const Color(0xFFA6B1E1)],
              ),
            ),
          ),
          //white box
          Center(
            child: Container(
              height: 600,
              child: Card(
                color: myLightWhite,
                margin: EdgeInsets.all(40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(53),
                ),
                child: Column(
                  children: <Widget>[
                    RoundedButton(
                      text: "Teacher",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SignUpTeacherScreen();
                            },
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
