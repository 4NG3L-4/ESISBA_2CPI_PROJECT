import 'package:flutter/material.dart';
import 'package:our_app/Menu/help.dart';
import 'package:our_app/Menu/our_teacher.dart';
import 'package:our_app/Menu/settings.dart';
import 'package:our_app/Menu/sign_out.dart';
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
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                child: Container(
                  margin: EdgeInsets.only(
                    top: 50,
                    left: 120,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return OurteachersScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Our teachers",
                      style: TextStyle(
                        color: myLightWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                margin: EdgeInsets.only(
                  top: 100,
                  left: 140,
                ),
                child: Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SettingsScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Settings",
                      style: TextStyle(
                        color: myLightWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                margin: EdgeInsets.only(
                  top: 150,
                  left: 140,
                ),
                child: Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return HelpScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "help",
                      style: TextStyle(
                        color: myLightWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                margin: EdgeInsets.only(
                  top: 200,
                  left: 140,
                ),
                child: Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignoutScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Sign Out",
                      style: TextStyle(
                        color: myLightWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
