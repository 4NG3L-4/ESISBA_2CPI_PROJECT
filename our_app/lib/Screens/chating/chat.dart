import 'package:flutter/material.dart';
import 'package:our_app/components/ChatCard.dart';
import 'package:our_app/Models/ChatUsersModel.dart';
import 'package:our_app/constants.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final String username = "Ines";
  final String ourimage = "assets/icons/teacher.svg";
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Med Yassim",
        messageText: "I need help!",
        image: "assets/icons/teacher.svg"),
    ChatUsers(
        name: "Yasmine Bencheikh",
        messageText: "I have an awesome informations for you",
        image: "assets/icons/student.svg"),
    ChatUsers(
        name: "Youcef Daoudi",
        messageText: "what do you think of this?",
        image: "assets/icons/teacher.svg"),
    ChatUsers(
        name: "Manel Mansouri",
        messageText: "I have an awesome informations for you",
        image: "assets/icons/student.svg"),
    ChatUsers(
        name: "Khaled Akid",
        messageText: "Look what I found in this course...",
        image: "assets/icons/teacher.svg"),
    ChatUsers(
        name: "Wafaa Slimani",
        messageText: "I have an awesome informations for you",
        image: "assets/icons/teacher.svg"),
    ChatUsers(
        name: "Ismail bellaouedj",
        messageText: "I have an awesome informations for you",
        image: "assets/icons/student.svg"),
    ChatUsers(
        name: "Amira Saria",
        messageText: "I have an awesome informations for you",
        image: "assets/icons/teacher.svg"),
  ];
  void _addComment(String val) {
    setState(() {
      chatUsers
          .add(ChatUsers(name: username, messageText: val, image: ourimage));
    });
  }

  Widget _buildCommentsList() {
    return ListView.builder(itemBuilder: (context, index) {
      if (index < chatUsers.length) {
        return _buildCommentsItem(chatUsers[index].messageText,
            chatUsers[index].name, chatUsers[index].image);
      }
    });
  }

  ChatCard _buildCommentsItem(String messageText, String name, String image) {
    return ChatCard(messageText: messageText, name: name, image: image);
  }

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
            TextField(
              decoration: InputDecoration(
                labelText: "add comment",
                labelStyle: TextStyle(color: myDarkBlue),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
                fillColor: myLightWhite,
                filled: true,
              ),
              onSubmitted: (String comment) {
                _addComment(comment);
              },
            ),
            /*Column(
              children: <Widget>[
                _buildCommentsList(),
              ],
            ),*/
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: ListView.builder(
                  itemCount: chatUsers.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 16),
                  itemBuilder: (context, index) {
                    return ChatCard(
                      name: chatUsers[index].name,
                      messageText: chatUsers[index].messageText,
                      image: chatUsers[index].image,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
