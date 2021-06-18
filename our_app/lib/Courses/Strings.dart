import 'package:flutter/material.dart';
import 'package:our_app/constants.dart';
import 'package:our_app/Screens/Principale/Principale.dart';
import 'package:our_app/Screens/Profile/ProfileTeacher.dart';
import 'package:our_app/Screens/Search/search.dart';
import 'package:our_app/Screens/chating/chat.dart';
import 'package:our_app/Screens/Notification/notification.dart';

class StringsScreen extends StatefulWidget {
  @override
  _StringsScreenState createState() => _StringsScreenState();
}

class _StringsScreenState extends State<StringsScreen> {
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
            Center(
              widthFactor: double.infinity,
              heightFactor: double.infinity,
              //box blanc
              child: Card(
                color: myLightWhite,
                margin: EdgeInsets.only(top: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      //partie cours
                      Container(
                        child: Card(
                          color: myLightBlue,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Strings manipulation:\n\ ',
                                          style: TextStyle(
                                            color: myLightWhite,
                                            fontSize: 15,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '  Strings are defined as an array of characters. \n\The difference between a character array and a string is the string is terminated with a special character ‘\0’.\n\Declaring a string is as simple as declaring a one dimensional array.\n\Below is the basic syntax for declaring a string in Pascal:',
                                          style: TextStyle(
                                            color: myDarkBlue,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '\n\ > S: string; \n\ S: array [10] of char;  ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //exemple
                      Container(
                        child: Card(
                          color: myLightBlue,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Exemple:\n\ ',
                                          style: TextStyle(
                                            color: myLightWhite,
                                            fontSize: 17,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '> var\n\ s : string; \n\ begin \n\   s:=\'\Hello, dear\'\; \n\   writeln(s); \n\    s[1]:=\'\J`\'\;    { Replace the first character with J } \n\    s[5]:=\'\y\'\;    { Replace the fifth character with y }\n\    writeln(s);   { Jelly, dear } \n\    writeln(\'\The length of s is \'\,ord(s[0])); \n\ end. ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],

                    //fin partie cours
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
