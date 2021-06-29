import 'package:flutter/material.dart';

class ContactusScreen extends StatelessWidget {
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
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "a.belkhiri@esi-sba.dz\n\ ",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "i.belouad@esi-sba.dz\n\ ",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "a.dahmane@esi-sba.dz\n\ ",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "m.sahel@esi-sba.dz\n\ ",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "r.m.slimani@esi-sba.dz \n\ ",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 15,
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
