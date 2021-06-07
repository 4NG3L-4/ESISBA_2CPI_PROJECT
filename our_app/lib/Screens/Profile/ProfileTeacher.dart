import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:our_app/constants.dart';

class ProfileTeacherScreen extends StatefulWidget {
  @override
  _ProfileTeacherScreenState createState() => _ProfileTeacherScreenState();
}

class _ProfileTeacherScreenState extends State<ProfileTeacherScreen> {
  int _selectedItemIndex = 0;

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
                      Container(
                        decoration: BoxDecoration(
                          color: myLightWhite,
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: myLightWhite,
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: myLightWhite,
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: myLightWhite,
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: myLightWhite,
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      Container(
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
      bottomNavigationBar: Row(
        children: <Widget>[
          buildBarNavItem(Icons.home, 0),
          buildBarNavItem(Icons.chat_bubble, 1),
          buildBarNavItem(Icons.notifications, 2),
          buildBarNavItem(Icons.search, 3),
          buildBarNavItem(Icons.person, 4),
        ],
      ),
    );
  }

  Widget buildBarNavItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 5,
        decoration: index == _selectedItemIndex
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 4, color: myDarkBlue),
                ),
                gradient: LinearGradient(
                  colors: [
                    myDarkBlue.withOpacity(0.3),
                    myDarkBlue.withOpacity(0.015),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              )
            : BoxDecoration(),
        child: Icon(
          icon,
          color: index == _selectedItemIndex
              ? Colors.black.withOpacity(0.6)
              : myDarkBlue,
        ),
      ),
    );
  }
}
