import 'package:flutter/material.dart';
import 'package:our_app/Screens/Principale/Principale.dart';

import 'package:our_app/Screens/Signup/SignUpScreen.dart';
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
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _key = GlobalKey();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  final AuthenticationService _auth = AuthenticationService();

  String email, password;
  Widget _buildEmailRow() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(0.025),
        child: SingleChildScrollView(
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
        ),
        // SizedBox(height: 20, width: 20),
      ),
    );
  }

  Widget _buildPasswordRow() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(0.0001),
        child: Form(
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
              if (value.isEmpty || value.length < 5) {
                return 'password must be more than 4 characters';
              }
              return null;
            },
            onSaved: (value) {},
          ),
        ),
        //SizedBox(height: 20, width: 20),
      ),
    );
  }

  Widget _buildForgetPasswordButton() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Forget Password ?",
                style: TextStyle(
                  color: Color.fromRGBO(101, 141, 218, 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginButton() {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              height: 1.4 * (MediaQuery.of(context).size.height / 20),
              width: 5 * (MediaQuery.of(context).size.width / 10),
              margin: EdgeInsets.all(12),
              // ignore: deprecated_member_use
              child: Container(
                child: RaisedButton(
                  elevation: 5.0,
                  color: myDarkBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  //add login function
                  onPressed: () {
                    if (_key.currentState.validate()) {
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
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.5,
                      fontSize: MediaQuery.of(context).size.height / 40,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildContainer() {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SingleChildScrollView(
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(53),
              ),
              //container white box
              child: Form(
                key: _key,
                child: SingleChildScrollView(
                    child: Container(
                  height: MediaQuery.of(context).size.height * 0.585,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                    color: myLightWhite,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SingleChildScrollView(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Login",
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height / 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        _buildEmailRow(),
                        _buildPasswordRow(),
                        _buildForgetPasswordButton(),
                        _buildLoginButton(),
                        _buildSignUpBtn(),
                        SingleChildScrollView(
                          child: Row(
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
                        ),
                      ],
                    ),
                  ),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpBtn() {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SingleChildScrollView(
            child: Row(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()),
                        );
                      },
                      child: SingleChildScrollView(
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'Dont have an account? ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.height / 40,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                color: Color.fromRGBO(101, 141, 218, 1),
                                fontSize:
                                    MediaQuery.of(context).size.height / 40,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ]),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _buildContainer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  //fonction
  void signInUser() async {
    dynamic authResult =
        await _auth.loginUser(_emailController.text, _passwordController.text);
    if (authResult == null) {
      print('Sign in error. could not be able to login');
    } else {
      _emailController.clear();
      _passwordController.clear();
    }
  }
}
