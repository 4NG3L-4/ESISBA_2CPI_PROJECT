import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:our_app/Screens/Signup/components/OrDivider.dart';
import 'package:our_app/components/RoundedButton.dart';
import 'package:our_app/Screens/Signup/components/SignUpTeacher.dart';
import 'package:our_app/Screens/Signup/components/SignUpStudent.dart';
import 'package:our_app/Screens/Login/login_screen.dart';
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
          Container(
            margin: EdgeInsets.fromLTRB(80, 50, 80, 410),
            child: SvgPicture.asset("assets/icons/signup.svg"),
          ),
          Container(
            child: Card(
              color: myLightWhite,
              margin: EdgeInsets.fromLTRB(20, 300, 20, 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(53),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 11, 0, 0),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 80),
                  RoundedButton(
                    text: "Teacher",
                    sizee: 25,
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
                  ),
                  OrDivider(),
                  RoundedButton(
                    text: "Student",
                    sizee: 25,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignUpStudentScreen();
                          },
                        ),
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: 'You already have an account? ',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  /*fontSize:
                                            MediaQuery.of(context).size.height /
                                                60,*/
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'Log In',
                                style: TextStyle(
                                  color: Color.fromRGBO(101, 141, 218, 1),
                                  /*fontSize:
                                            MediaQuery.of(context).size.height /
                                                60,*/
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        "assets/icons/facebook.svg",
                        height: 30,
                        width: 30,
                        color: myDarkBlue,
                      ),
                      SizedBox(width: 20),
                      SvgPicture.asset(
                        "assets/icons/instagram.svg",
                        height: 30,
                        width: 30,
                        color: myDarkBlue,
                      ),
                      SizedBox(width: 20),
                      SvgPicture.asset(
                        "assets/icons/twitter.svg",
                        height: 30,
                        width: 30,
                        color: myDarkBlue,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
