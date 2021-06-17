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
              child: Card(
                color: myLightWhite,
                margin: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(53),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
