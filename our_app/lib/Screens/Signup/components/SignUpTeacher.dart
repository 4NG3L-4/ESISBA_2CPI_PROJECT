import 'package:flutter/material.dart';
import 'package:our_app/Screens/Profile/ProfileTeacher.dart';
import 'package:our_app/components/RoundedButton.dart';
import 'package:our_app/Screens/Principale/Principale.dart';
import 'package:flutter_svg/svg.dart';
import 'package:our_app/constants.dart';
import 'package:our_app/Screens/Login/login_screen.dart';

class SignUpTeacherScreen extends StatefulWidget {
  @override
  _SignUpTeacherScreenState createState() => _SignUpTeacherScreenState();
}

class _SignUpTeacherScreenState extends State<SignUpTeacherScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey();

  final _passwordcontroller = TextEditingController();

  final _confirmpasswordcontroller = TextEditingController();

  var _textcontroller = TextEditingController();

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
                          'TEACHER',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20, width: 20),
                        //First name
                        TextFormField(
                          controller: _textcontroller,
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
                        ),
                        SizedBox(height: 20, width: 20),
                        //Last name
                        TextFormField(
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
                        //Speciality
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          cursorColor: myLightBlue,
                          decoration: InputDecoration(
                            labelText: 'Speciality',
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
                          controller: _passwordcontroller,
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
                            if (value.isEmpty || value.length < 5) {
                              return 'password must be more than 4 characters';
                            } else if (value !=
                                _passwordcontroller.value.text) {
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
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Log In',
                                      style: TextStyle(
                                        color: Color.fromRGBO(101, 141, 218, 1),
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
                              var yup = _textcontroller.text;

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    ProfileTeacherScreen(value: yup);
                                    print("yeess! $yup");
                                    return PrincipaleScreen();
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
}
