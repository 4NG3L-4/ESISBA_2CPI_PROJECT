import 'package:flutter/material.dart';
import 'package:our_app/constants.dart';

class PrincipaleTeacherScreen extends StatelessWidget {
  final bool isActive = false;
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
        ],
      ),
      bottomNavigationBar: Row(
        children: <Widget>[
          buildBarNavItem(context, Icons.home, 0, true),
          buildBarNavItem(context, Icons.chat_bubble, 1, false),
          buildBarNavItem(context, Icons.notifications, 2, false),
          buildBarNavItem(context, Icons.search, 3, false),
          buildBarNavItem(context, Icons.person, 4, false),
        ],
      ),
    );
  }

  Container buildBarNavItem(
      BuildContext context, IconData icon, int index, bool isActive) {
    return GestureDetector(
      onTap: () {
        setState() {
          _selectedItemIndex = index;
        }

        ;
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 5,
        decoration: BoxDecoration(
          color: index == _selectedItemIndex ? myDarkBlue : myLightWhite,
        ),
        child: Icon(icon),
      ),
    );
  }
}
