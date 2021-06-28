import 'package:flutter/material.dart';
import 'package:our_app/Screens/Principale/Principale.dart';
import 'package:our_app/Screens/Principale/PrincipaleStudent.dart';

import 'package:our_app/Screens/Signup/SignUpScreen.dart';
import 'package:our_app/components/RoundedButton.dart';
import 'package:our_app/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:our_app/Services/auth.dart';

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
}    final GlobalKey<FormState> _key = GlobalKey();


class _LoginPageState extends State<LoginPage> {
  
   final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
       final AuthenticationService _auth = AuthenticationService();


    String email, password;
  Widget _buildEmailRow() {
    return Padding(
      padding: EdgeInsets.all(0.025),
      child: TextFormField(
        controller: _emailController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        cursorColor: myLightBlue,
        decoration: InputDecoration(
          labelText: 'Email',
          labelStyle: TextStyle(
            color: myLightBlue,
          ),
        ),
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value.isEmpty) {
            return 'Enter your email please';
          }
          if (!RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(value)) {
            return 'Invalid Email';
          }
          return null;
        },
        onSaved: (value) {},
      ),
      // SizedBox(height: 20, width: 20),
    );
  }

  Widget _buildPasswordRow() {
    return Padding(
      padding: EdgeInsets.all(0.0001),
      child: TextFormField(
        controller: _passwordController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        cursorColor: myLightBlue,
        decoration: InputDecoration(
          labelText: 'password',
          labelStyle: TextStyle(
            color: myLightBlue,
          ),
        ),
        obscureText: true,
        validator: (value) {
          if (value.isEmpty || value.length < 7) {
            return 'password must be more than 7 characters';
          }
          return null;
        },
        onSaved: (value) {},
      ),
      //SizedBox(height: 20, width: 20),
    );
  }

  Widget _buildForgetPasswordButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextButton(
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
          //height: 1.4 * (MediaQuery.of(context).size.height / 20),
          //width: 5 * (MediaQuery.of(context).size.width / 10),
          margin: EdgeInsets.all(20),
          child: RoundedButton(
                        color: myDarkBlue,
                        text: "LOGIN",
                        textColor: myLightWhite,
                        press: () {
                          if(_key.currentState.validate()){
                            signInUser();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return PrincipaleScreen();
                              },
                            ),
                          );
                          }
                        },
                      ),
          /*
          RaisedButton(
            elevation: 5.0,
            color: myDarkBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            //add login function
            onPressed: () {
              if (_key.currentState.validate()) {
               //signInUser();
                              
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PrincipaleScreen();
                  }
              
                ),
              );
              }
            },
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ),*/
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
            height: MediaQuery.of(context).size.height * 0.585,
            width: MediaQuery.of(context).size.width * 0.85,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/icons/facebook.svg",
                      height: 21,
                      width: 30,
                      color: myDarkBlue,
                    ),
                    SizedBox(width: 20),
                    SvgPicture.asset(
                      "assets/icons/instagram.svg",
                      height: 21,
                      width: 30,
                      color: myDarkBlue,
                    ),
                    SizedBox(width: 20),
                    SvgPicture.asset(
                      "assets/icons/twitter.svg",
                      height: 21,
                      width: 30,
                      color: myDarkBlue,
                    ),
                  ],
                ),
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
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
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
 void signInUser() async {
    dynamic authResult =
        await _auth.loginUser(_emailController.text,_passwordController.text);
    if (authResult == null) {
      print('Sign in error. could not be able to login');
    } else {
      _emailController.clear();
      _passwordController.clear();

    }
  }
}
