import 'package:flutter/material.dart';
import 'package:our_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatCard extends StatelessWidget {
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
                          "assets/icons/man.svg",
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Med Yassim",
                    ),
                  ],
                ),
                Container(
                  child: Text(
                      "Maecenas est ligula, suscipit in eros eu, volutpat consequat metus."),
                ),
                Row(
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/icons/heart.svg",
                      height: 30,
                      width: 30,
                      color: myDarkBlue,
                    ),
                    Text(
                      "Likes",
                    ),
                    SvgPicture.asset(
                      "assets/icons/speech-bubble.svg",
                      height: 30,
                      width: 30,
                      color: myDarkBlue,
                    ),
                    Text(
                      "Comments",
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
