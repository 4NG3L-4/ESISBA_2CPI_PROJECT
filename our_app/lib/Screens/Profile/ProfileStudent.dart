import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:our_app/components/CourseCard.dart';

class ProfileStudentScreen extends StatelessWidget {
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
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0xFF424874), const Color(0xFFA6B1E1)],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: SvgPicture.asset(
                      "assets/icons/student.svg",
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Container(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'HELLO ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "have a nice day",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 220, 10, 0),
                    child: Column(
                      children: [
                        Expanded(
                          child: GridView.count(
                            crossAxisCount: 2,
                            crossAxisSpacing: 30.0,
                            mainAxisSpacing: 20.0,
                            childAspectRatio: 0.85,
                            children: <Widget>[
                              CourseCard(
                                nCourse: "course 1",
                                name: "Strings",
                              ),
                              CourseCard(
                                nCourse: "course 2",
                                name: "Variables",
                              ),
                              CourseCard(
                                nCourse: "course 3",
                                name: "For Loop",
                              ),
                              CourseCard(
                                nCourse: "course 4",
                                name: "If Else Statement",
                              ),
                              CourseCard(
                                nCourse: "course 5",
                                name: "While Loop",
                              ),
                              CourseCard(
                                nCourse: "course 6",
                                name: "Trees",
                              ),
                            ],
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
      ),
    );
  }
}
