import 'package:flutter/material.dart';
import 'package:our_app/components/RoundedButton.dart';
import 'package:our_app/Screens/Welcome/welcome_screen.dart';

class Body extends StatelessWidget {
  final GlobalKey<FormState> _formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(53),
              ),
              child: Container(
                height: 700,
                width: 322,
                padding: EdgeInsets.all(16),
                child: Form(
                  key: _formkey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'TEACHER',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20, width: 20),
                        //First name
                        TextFormField(
                          decoration: InputDecoration(labelText: 'First Name'),
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
                          decoration: InputDecoration(labelText: 'Last Name'),
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
                          decoration: InputDecoration(labelText: 'Speciality'),
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
                          decoration: InputDecoration(labelText: 'Email'),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value.isEmpty || value.contains('@')) {
                              return 'invalid email';
                            }
                            return null;
                          },
                          onSaved: (value) {},
                        ),
                        SizedBox(height: 20, width: 20),
                        //password
                        TextFormField(
                          decoration: InputDecoration(labelText: 'password'),
                          obscureText: true,
                          validator: (value) {
                            if (value.isEmpty || value.length <= 5) {
                              return 'invalid password';
                            }
                            return null;
                          },
                          onSaved: (value) {},
                        ),
                        SizedBox(height: 20, width: 20),
                        //confirm password
                        TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Confirm password'),
                          obscureText: true,
                          validator: (value) {
                            if (value.isEmpty || value.length <= 5) {
                              return 'invalid password';
                            }
                            return null;
                          },
                          onSaved: (value) {},
                        ),
                        SizedBox(height: 40, width: 20),
                        RoundedButton(
                          text: "Sign Up",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return WelcomeScreen();
                                },
                              ),
                            );
                          },
                        ),
                        Row(
                          children: [],
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
