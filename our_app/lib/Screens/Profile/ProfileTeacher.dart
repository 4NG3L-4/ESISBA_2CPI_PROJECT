import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:our_app/Screens/chating/Comments.dart';
import 'package:our_app/components/CourseCard.dart';
import 'package:our_app/constants.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';
//import 'dart:io';
import 'dart:math';
import 'package:firebase_database/firebase_database.dart';
import 'dart:convert';

class ProfileTeacherScreen extends StatefulWidget {
  final String value;
  ProfileTeacherScreen({Key key, this.value}) : super(key: key);
 
  @override
  _ProfileTeacherScreenState createState() =>
      _ProfileTeacherScreenState(value: value);
}

class _ProfileTeacherScreenState extends State<ProfileTeacherScreen> {
  String value;
   final mainReference = FirebaseDatabase.instance.reference();


  _ProfileTeacherScreenState({this.value});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // Add your onPressed code here!
            getPdfAndUpload();
          },
          label: const Text('Add Course'),
          icon: const Icon(Icons.add),
          backgroundColor: myDarkBlue,
        ),
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
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: SvgPicture.asset(
                      "assets/icons/teacher.svg",
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Container(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'HELLO ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextSpan(
                            text: value,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "have a nice day",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 180,
              left: 0,
              child: Container(
                child: Text(
                  "Your Courses:",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 220, 10, 0),
              child: Column(
                children: [
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 30.0,
                      mainAxisSpacing: 20.0,
                      childAspectRatio: 0.85,
                      children: <Widget>[
                        CourseCard(
                          nCourse: "course 1",
                          name: "Strings",
                        ),
                        CourseCard(
                          nCourse: "course 2",
                          name: "Variables",
                        ),
                        CourseCard(
                          nCourse: "course 3",
                          name: "For Loop",
                        ),
                        CourseCard(
                          nCourse: "course 4",
                          name: "If Else Statement",
                        ),
                        CourseCard(
                          nCourse: "course 5",
                          name: "While Loop",
                        ),
                        CourseCard(
                          nCourse: "course 6",
                          name: "Trees",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  //fonction add courses
  Future getPdfAndUpload()async{
    var rng = new Random();
    String randomName="";
    for (var i = 0; i < 20; i++) {
      print(rng.nextInt(100));
     randomName+=rng.nextInt(100).toString();
    }
    FilePickerResult file = await FilePicker.platform.pickFiles(
          type: FileType.custom,);
          if (file != null) {
  Uint8List fileBytes = file.files.first.bytes;
  String fileName = file.files.first.name;
   /* String fileName = '${randomName}.pdf';
    savePdf(file.readAsBytesSync(),fileName);*/
    
  }
  }
  savePdf(List<int> asset, String name) async {
    Reference reference = FirebaseStorage.instance.ref().child(name);
    UploadTask uploadTask = reference.putData(asset);
    String url = await (await uploadTask).ref.getDownloadURL();
    documentFileUpload(url);
  }
 String CreateCryptoRandomString([int length = 32]) {
    final Random _random=Random.secure();
    var values=List<int>.generate(length,(i) => _random.nextInt(256));
    return base64Url.encode(values);
  }

  void documentFileUpload(String str) {
    var data = {
      "PDF":str,
      "FIleName":"new course",
    };
    mainReference.child(CreateCryptoRandomString()).set(data).then((v) {
      print("Store Successfully");
    });
  }
}
