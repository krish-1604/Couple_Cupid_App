//profile.dart
import 'package:couplecupid/gender.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? _image;
  bool _showAvatar = true;

  void _setImage(File? image) {
    setState(() {
      _image = image;
      _showAvatar = false;
    });
  }

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);

    if (pickedImage != null) {
      _setImage(File(pickedImage.path));
      Navigator.pop(context);
    }
  }

  void _showImagePickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Select Image'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  _pickImage(ImageSource.camera);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: Text('Take Picture'),
              ),
              ElevatedButton(
                onPressed: () {
                  _pickImage(ImageSource.gallery);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: Text('Choose from Gallery'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double fem = 1.0;
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20 * fem, 80 * fem, 20 * fem, 40 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 40 * fem),
                    child: Text(
                      'Profile details',
                      style: TextStyle(
                        fontFamily: 'Sk-Modernist',
                        fontSize: 24 * fem,
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                        color: Color(0xffc2cad7),
                      ),
                    ),
                  ),
                  Container(
                    width: 150 * fem,
                    height: 150 * fem,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xffcc323f),
                        width: 3.0,
                      ),
                    ),
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _showImagePickerDialog(context);
                          },
                          child: Container(
                            width: 200,
                            height: 150,
                            child: ClipOval(
                              child: _showAvatar
                                  ? Image.asset(
                                "assets/avatar.jpg",
                                width: 200 , // Match the width
                                height: 150, // Match the height
                                fit: BoxFit.cover,
                              )
                                  : _image != null
                                  ? Image.file(
                                _image!,
                                fit: BoxFit.cover,
                              )
                                  : Container(),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: SizedBox(
                            width: 34 * fem,
                            height: 34 * fem,
                            child: ElevatedButton(
                              onPressed: () {
                                _showImagePickerDialog(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Icon(
                                Icons.camera,
                                size: 20,
                                color: Color(0xffcc323f),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 130),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        20 * fem, 0 * fem, 20 * fem, 5 * fem),
                    width: double.infinity,
                    height: 67 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0 * fem,
                          top: 9 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 295 * fem,
                              height: 58 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(15 * fem),
                                  border: Border.all(
                                      color: Color(0xfff94c57)),
                                  color: Color(0xff000000),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10 * fem),
                                  child: TextField(
                                    style: TextStyle(
                                      fontFamily: 'Sk-Modernist',
                                      fontSize: 14 * fem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5,
                                      color: Color(0xffc2cad7),
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'First Name',
                                      hintStyle: TextStyle(
                                        fontFamily: 'Sk-Modernist',
                                        fontSize: 14 * fem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5,
                                        color: Color(0xffc2cad7),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20 * fem,
                          top: 9 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 72 * fem,
                              height: 1 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        20 * fem, 0 * fem, 20 * fem, 5 * fem),
                    width: double.infinity,
                    height: 67 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0 * fem,
                          top: 9 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 295 * fem,
                              height: 58 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(15 * fem),
                                  border: Border.all(
                                      color: Color(0xfff94c57)),
                                  color: Color(0xff000000),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10 * fem),
                                  child: TextField(
                                    style: TextStyle(
                                      fontFamily: 'Sk-Modernist',
                                      fontSize: 14 * fem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5,
                                      color: Color(0xffc2cad7),
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Last Name',
                                      hintStyle: TextStyle(
                                        fontFamily: 'Sk-Modernist',
                                        fontSize: 14 * fem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5,
                                        color: Color(0xffc2cad7),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20 * fem,
                          top: 9 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 72 * fem,
                              height: 1 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // inputcalendarDL5 (1:363)
                    margin:  EdgeInsets.fromLTRB(20*fem, 0*fem, 97.5*fem, 107*fem),
                    child:
                    TextButton(
                      onPressed:  () {},
                      style:  TextButton.styleFrom (
                        padding:  EdgeInsets.zero,
                      ),
                      child:
                      Container(
                        padding:  EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                        width:  double.infinity,
                        child:
                        Row(
                          crossAxisAlignment:  CrossAxisAlignment.center,
                          children:  [
                            Container(
                              // iconcalendarW4H (1:366)
                              margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 19.5*fem, 0*fem),
                              width:  18*fem,
                              height:  20*fem,
                              child:
                              Image.network(
                                "",
                                width:  18*fem,
                                height:  20*fem,
                              ),
                            ),
                            Text(
                              // p4y (1:365)
                              'Choose birthday date',
                              style:  TextStyle(
                                fontFamily: 'Sk-Modernist',
                                fontSize:  14*fem,
                                fontWeight:  FontWeight.w700,
                                height:  1.2575*fem/fem,
                                color:  Color(0xffcc323f),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    // btnconfirmwvH (1:360)
                    onPressed:  () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Gender()),
                      );
                    },
                    style:  TextButton.styleFrom (
                      padding:  EdgeInsets.zero,
                    ),
                    child:
                    Container(
                      width:  double.infinity,
                      height:  56*fem,
                      decoration:  BoxDecoration (
                        color:  Color(0xffcc323f),
                        borderRadius:  BorderRadius.circular(15*fem),
                      ),
                      child:
                      Center(
                        child:
                        Text(
                          'Confirm',
                          textAlign:  TextAlign.center,
                          style:  TextStyle(
                            fontFamily: 'Sk-Modernist',
                            fontSize:  16*fem,
                            fontWeight:  FontWeight.w700,
                            height:  1.5*fem/fem,
                            color:  Color(0xffc2cad7),
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

      ),
    );
  }
}