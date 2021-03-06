import 'package:flutter/material.dart';
import 'package:our_app/Screens/Principale/Principale.dart';
import 'package:our_app/components/RoundedButton.dart';
import 'package:flutter_svg/svg.dart';
import 'package:our_app/constants.dart';
import 'package:our_app/Screens/Login/login_screen.dart';
import 'package:our_app/Services/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUpStudentScreen extends StatelessWidget {
  final GlobalKey<FormState> _formkey = GlobalKey();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  final _confirmpasswordcontroller = TextEditingController();
  final AuthenticationService _auth = AuthenticationService();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //background
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
          //the big white box
          Center(
            widthFactor: double.infinity,
            heightFactor: double.infinity,
            child: Card(
              color: myLightWhite,
              margin: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(53),
              ),
              child: Container(
                height: size.height,
                width: size.width,
                padding: EdgeInsets.all(16),
                child: Form(
                  key: _formkey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 20),
                        Text(
                          'STUDENT',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        SizedBox(height: 20, width: 20),
                        //First name
                        TextFormField(
                          controller: _firstNameController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          cursorColor: myLightBlue,
                          decoration: InputDecoration(
                            labelText: 'First Name',
                            labelStyle: TextStyle(
                              color: myLightBlue,
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'mandatory';
                            }
                            return null;
                          },
                          onSaved: (value) {},
                        ),
                        SizedBox(height: 20, width: 20),
                        //Last name
                        TextFormField(
                          controller: _lastNameController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          cursorColor: myLightBlue,
                          decoration: InputDecoration(
                            labelText: 'Last Name',
                            labelStyle: TextStyle(
                              color: myLightBlue,
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'mandatory';
                            }
                            return null;
                          },
                          onSaved: (value) {},
                        ),
                        SizedBox(height: 20, width: 20),

                        //email
                        TextFormField(
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
                        SizedBox(height: 20, width: 20),
                        //password
                        TextFormField(
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
                              return 'invalid password';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 20, width: 20),
                        //confirm password
                        TextFormField(
                          controller: _confirmpasswordcontroller,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          cursorColor: myLightBlue,
                          decoration: InputDecoration(
                            labelText: 'Confirm password',
                            labelStyle: TextStyle(
                              color: myLightBlue,
                            ),
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value.isEmpty || value.length < 7) {
                              return 'invalid password';
                            } else if (value !=
                                _passwordController.value.text) {
                              return 'passwords do not match';
                            }
                            return null;
                          },
                          onSaved: (value) {},
                        ),
                        SizedBox(height: 30),
                        //text
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 40),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()),
                                  );
                                },
                                child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                      text: 'You already have an account? ',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.6),
                                        /*fontSize:
                                            MediaQuery.of(context).size.height /
                                                60,*/
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Log In',
                                      style: TextStyle(
                                        color: Color.fromRGBO(101, 141, 218, 1),
                                        /*fontSize:
                                            MediaQuery.of(context).size.height /
                                                60,*/
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 40, width: 20),
                        //button
                        RoundedButton(
                          text: "Sign Up",
                          press: () {
                            if (_formkey.currentState.validate()) {
                              createUser(); //creation of user
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return PrincipaleStScreen();
                                  },
                                ),
                              );
                            }
                          },
                        ),
                        SizedBox(height: 30, width: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.asset(
                              "assets/icons/facebook.svg",
                              height: 30,
                              width: 30,
                              color: myDarkBlue,
                            ),
                            SizedBox(width: 20),
                            SvgPicture.asset(
                              "assets/icons/instagram.svg",
                              height: 30,
                              width: 30,
                              color: myDarkBlue,
                            ),
                            SizedBox(width: 20),
                            SvgPicture.asset(
                              "assets/icons/twitter.svg",
                              height: 30,
                              width: 30,
                              color: myDarkBlue,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

// *************************************************************
  void createUser() async {
    dynamic result = await _auth.createNewUser(
        _emailController.text,
        _passwordController.text,
        _firstNameController.text,
        _lastNameController.text,
        "Student",
        "");
    if (result == null) {
      print('Email is not valid');
    } else {
      print(result.toString());
      _passwordController.clear();
      _emailController.clear();
      _firstNameController.clear();
      _lastNameController.clear();

      // Navigator.pop(context);

    }
  }
}
