import 'package:flutter/material.dart';
import 'package:our_app/Courses/Strings.dart';
import 'package:our_app/Menu/menu.dart';
import 'package:our_app/Screens/Profile/ProfileStudent.dart';
import 'package:our_app/constants.dart';
import 'package:our_app/Screens/Principale/PrincipaleStudent.dart';
import 'package:our_app/Screens/Profile/ProfileTeacher.dart';
import 'package:our_app/Screens/Search/search.dart';
import 'package:our_app/Screens/chating/chat.dart';
import 'package:our_app/Screens/Notification/notification.dart';

class PrincipaleScreen extends StatefulWidget {
  @override
  _PrincipaleScreenState createState() => _PrincipaleScreenState();
}

class _PrincipaleScreenState extends State<PrincipaleScreen> {
  int _selectedItemIndex = 0;
  final List<Widget> _children = [
    PrincipaleStudentScreen(),
    ChatScreen(),
    NotificationScreen(),
    SearchScreen(),
    ProfileTeacherScreen(),
    MenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedItemIndex],
      bottomNavigationBar: Row(
        children: <Widget>[
          buildBarNavItem(Icons.home, 0, PrincipaleStudentScreen()),
          buildBarNavItem(Icons.chat_bubble, 1, ChatScreen()),
          buildBarNavItem(Icons.notifications, 2, NotificationScreen()),
          buildBarNavItem(Icons.search, 3, SearchScreen()),
          buildBarNavItem(Icons.person, 4, ProfileTeacherScreen()),
          buildBarNavItem(Icons.menu, 5, MenuScreen()),
        ],
      ),
    );
  }

  Widget buildBarNavItem(IconData icon, int index, Widget page) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 6,
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

//The other nav bar of student

class PrincipaleStScreen extends StatefulWidget {
  @override
  _PrincipaleStScreenState createState() => _PrincipaleStScreenState();
}

class _PrincipaleStScreenState extends State<PrincipaleStScreen> {
  int _selectedItemIndex = 0;
  final List<Widget> _children = [
    PrincipaleStudentScreen(),
    ChatScreen(),
    NotificationScreen(),
    SearchScreen(),
    ProfileStudentScreen(),
    MenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedItemIndex],
      bottomNavigationBar: Row(
        children: <Widget>[
          buildBarNavItem(Icons.home, 0, PrincipaleStudentScreen()),
          buildBarNavItem(Icons.chat_bubble, 1, ChatScreen()),
          buildBarNavItem(Icons.notifications, 2, NotificationScreen()),
          buildBarNavItem(Icons.search, 3, SearchScreen()),
          buildBarNavItem(Icons.person, 4, ProfileStudentScreen()),
          buildBarNavItem(Icons.menu, 5, MenuScreen()),
        ],
      ),
    );
  }

  Widget buildBarNavItem(IconData icon, int index, Widget page) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 6,
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
