import 'package:flutter/material.dart';
import 'package:our_app/Menu/contactus.dart';

class HelpScreen extends StatelessWidget {
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
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Text(
                      "Help:",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "•	How to use :",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      left: 10,
                    ),
                    child: Text(
                        "   Welcome to (name of the app)! Here are the basics to get started. This app made for the beginners in pascal language and stay in contact with your friends and teachers so if you don’t have (name of the app) yet, learn how to download the app and make a (name of the app) account you find the catalogue of the app.\n\ "),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 15,
                      right: 120,
                    ),
                    child: Text(
                      "How to access in the courses?\n\ ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      left: 10,
                    ),
                    child: Text(
                        "   After logging in you will find the home page with navigation bar which you recognize the course bottom then you find course1, course2, course3…\n\ "),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 15,
                      right: 120,
                    ),
                    child: Text(
                      "   How to contact my friends and my \n\   teacher? \n\ ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      left: 10,
                    ),
                    child: Text(
                        "   In navigation bar there is a message icon after reaching that bottom we will find the questions posed and it allows you to add a comment to answer or ask.\n\ Teacher profile and student profile the difference between those is the teacher can add his own courses and post them in (name) and all users can see and access then in the home menu in icon “OUR TEACHERS”.\n\ \n\ Teacher: \n\ "),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 15,
                      right: 120,
                    ),
                    child: Text(
                      "   how I can add my courses? ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      left: 10,
                    ),
                    child: Text(
                        "  You need to acces your profile page from the navigtion bar below, and you'll find the button \"\ Add Course\"\. After the validation of your course from the admin it'll be published on your profile only!\n\ Student:\n\  "),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 15,
                      right: 120,
                    ),
                    child: Text(
                      "   How I can track my progress?\n\ ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      left: 10,
                    ),
                    child: Text(
                        " Every time you solve any quizz from the courses of your principale page, your progress will change and appear in your profile page. \n\ \n\ In the end if u have any problem, bug or suggestion don’t hesitate to send an  email to our administrator. \n\ "),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 220),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ContactusScreen();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Contact us",
                        style: TextStyle(
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
