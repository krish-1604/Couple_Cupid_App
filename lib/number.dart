//number.dart
import'package:flutter/material.dart';
import 'package:project1/profile.dart';

class Number extends StatelessWidget {
  const Number({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fem = 1.0;
    return Scaffold(
      body: Container(
        // numberQYH (1:178)
        padding:  EdgeInsets.fromLTRB(40*fem, 128*fem, 40*fem, 341*fem),
        width:  double.infinity,
        decoration:  BoxDecoration (
          color:  Color(0xff000000),
        ),
        child:
        Column(
          crossAxisAlignment:  CrossAxisAlignment.center,
          children:  [
            Container(
              // headerH6H (1:187)
              margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 32*fem),
              child:
              Column(
                crossAxisAlignment:  CrossAxisAlignment.start,
                children:  [
                  Text(
                    'My mobile',
                    style: TextStyle(
                      fontFamily: 'Sk-Modernist',
                      fontSize: 34 * fem,
                      fontWeight: FontWeight.w700,
                      height: 1.5 * fem / fem,
                      color: Color(0xffc2cad7),
                    ),
                  ),
                  Container(
                    // pleaseenteryourvalidphonenumbe (1:189)
                    constraints:  BoxConstraints (
                      maxWidth:  270*fem,
                    ),
                    child:
                    Text(
                      'Please enter your valid phone number. We will send you a 4-digit code to verify your account.',
                      style: TextStyle(
                        fontFamily: 'Sk-Modernist',
                        fontSize: 14 * fem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * fem,
                        color: Color(0xffc2cad7),
                      ),
                    ),

                  ),
                ],
              ),
            ),
            Container(
              // inputsR61 (1:179)
              margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 64*fem),
              width:  double.infinity,
              height:  58*fem,
              child:
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(165 * fem, 0, 30 * fem, 0),
                    width: 295 * fem,
                    height: 58 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffc2cad7)),
                      color: Color(0xffc2cad7),
                      borderRadius: BorderRadius.circular(15 * fem),
                    ),
                    child: Container(
                      // frame1qQd (1:302)
                      width: double.infinity,
                      height: 56 * fem,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile()),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 56 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffc2cad7),
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Use Phone Number',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Sk-Modernist',
                              fontSize: 16 * fem,
                              fontWeight: FontWeight.w700,
                              height: 1.5,
                              color: Color(0xffcc323f),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ),
            TextButton(
              // btncontinueu9b (1:190)
              onPressed:  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
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
                    'Continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Sk-Modernist',
                      fontSize: 16 * fem,
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                      color: Color(0xffc2cad7),
                    ),
                  ),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}