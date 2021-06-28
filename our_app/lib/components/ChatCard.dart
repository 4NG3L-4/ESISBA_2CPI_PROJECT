import 'package:flutter/material.dart';
import 'package:our_app/Screens/chating/Comments.dart';
import 'package:our_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatCard extends StatefulWidget {
  final String name;
  final String messageText;
  final String image;

  ChatCard(
      {@required this.name, @required this.messageText, @required this.image});

  @override
  _ChatCardState createState() => _ChatCardState();
}

class _ChatCardState extends State<ChatCard> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            height: 125,
            width: size.width * 0.9,
            decoration: BoxDecoration(
              color: myLightWhite,
              borderRadius: BorderRadius.circular(32),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: CircleAvatar(
                        child: SvgPicture.asset(
                          widget.image,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      widget.name,
                    ),
                  ],
                ),
                Container(
                  child: Text(widget.messageText),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 20),
                      IconButton(
                          icon: Icon(
                              liked ? Icons.favorite : Icons.favorite_border,
                              color: myDarkBlue),
                          onPressed: () {
                            setState(() {
                              liked = !liked;
                            });
                          }),
                      SizedBox(width: 5),
                      Text(
                        "Likes",
                      ),
                      SizedBox(width: 25),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return CommentsScreen();
                              },
                            ),
                          );
                        },
                        child: SvgPicture.asset(
                          "assets/icons/speech-bubble.svg",
                          height: 25,
                          width: 25,
                          color: myDarkBlue,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Comments",
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
