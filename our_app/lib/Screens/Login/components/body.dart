import 'package:flutter/material.dart';
import 'package:our_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPage(),
    );
  }
}

//login

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email, password;
  Widget _buildEmailRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        cursorColor: myLightBlue,
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            email = value;
          });
        },
        decoration: InputDecoration(
            labelText: 'E-mail',
            labelStyle: TextStyle(
              color: myLightBlue,
            )),
      ),
    );
  }

  Widget _buildPasswordRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        cursorColor: myLightBlue,
        keyboardType: TextInputType.text,
        obscureText: true,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        decoration: InputDecoration(
            labelText: 'Password',
            labelStyle: TextStyle(
              color: myLightBlue,
            )),
      ),
    );
  }

  Widget _buildForgetPasswordButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text(
            "Forget Password ?",
            style: TextStyle(
              color: Color.fromRGBO(101, 141, 218, 1),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 20),
          width: 5 * (MediaQuery.of(context).size.width / 10),
          margin: EdgeInsets.only(bottom: 20),
          child: RaisedButton(
            elevation: 5.0,
            color: myDarkBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            onPressed: () {},
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(53),
          ),
          //container white box
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: myLightWhite,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height / 30,
                      ),
                    ),
                  ],
                ),
                _buildEmailRow(),
                _buildPasswordRow(),
                _buildForgetPasswordButton(),
                _buildLoginButton(),
                _buildSignUpBtn(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSignUpBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 40),
          child: FlatButton(
            onPressed: () {},
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Dont have an account? ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.height / 40,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'Sign Up',
                  style: TextStyle(
                    color: Color.fromRGBO(101, 141, 218, 1),
                    fontSize: MediaQuery.of(context).size.height / 40,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]),
            ),
          ),
        ),
      ],
    );
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildContainer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
