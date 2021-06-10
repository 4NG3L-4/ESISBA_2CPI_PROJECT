import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:our_app/constants.dart';

class ProfileTeacherScreen extends StatefulWidget {
  @override
  _ProfileTeacherScreenState createState() => _ProfileTeacherScreenState();
}

class _ProfileTeacherScreenState extends State<ProfileTeacherScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
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
          Container(
            margin: EdgeInsets.fromLTRB(150, 50, 10, 70),
            child: SvgPicture.asset(
              "assets/icons/man.svg",
              width: 100,
              height: 100,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(90, 160, 10, 0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'HELLO, ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextSpan(
                    text: 'MED!',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(130, 200, 10, 0),
            child: Text(
              "have a nice day",
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 20,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 250, 10, 0),
            child: Text(
              "Your Courses:",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 290, 10, 0),
            child: Column(
              children: [
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 30.0,
                    mainAxisSpacing: 20.0,
                    childAspectRatio: 0.85,
                    children: <Widget>[
                      //First Card
                      Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Text(
                                "Course 1",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 60, 10, 0),
                              child: Text(
                                "While Loop",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                              child: Text(
                                "May 2020",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: myLightWhite,
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Text(
                                "Course 2",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 60, 10, 0),
                              child: Text(
                                "Variables",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                              child: Text(
                                "May 2020",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: myLightWhite,
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Text(
                                "Course 3",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 60, 10, 0),
                              child: Text(
                                "For Loop",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                              child: Text(
                                "May 2020",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: myLightWhite,
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Text(
                                "Course 4",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 60, 10, 0),
                              child: Text(
                                "If Else Statment",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                              child: Text(
                                "May 2020",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: myLightWhite,
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Text(
                                "Course 1",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 60, 10, 0),
                              child: Text(
                                "While Loop",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                              child: Text(
                                "May 2020",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: myLightWhite,
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Text(
                                "Course 1",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 60, 10, 0),
                              child: Text(
                                "While Loop",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                              child: Text(
                                "May 2020",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: myLightWhite,
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
