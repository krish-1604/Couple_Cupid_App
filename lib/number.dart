//number.dart
import'package:flutter/material.dart';

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
                children:  [
                Positioned(
                // countryregionxLq (1:300)
                left:  0*fem,
                top:  0*fem,
                child:
                Container(
                  padding:  EdgeInsets.fromLTRB(165*fem, 0*fem, 30*fem, 0*fem),
                  width:  295*fem,
                  height:  58*fem,
                  decoration:  BoxDecoration (
                      border:  Border.all(color :Color(0xffc2cad7)),
                  color:  Color(0xffc2cad7),
                  borderRadius:  BorderRadius.circular(15*fem),
                ),
                child:
                Container(
                  // frame1qQd (1:302)
                  width:  double.infinity,
                  height:  100*fem,
                ),
              ),
            ),
            Positioned(
              // usephonenumberbeh (1:303)
              left:  78.6623535156*fem,
              top:  24.0239868164*fem,
              child:
              Align(
                child:
                SizedBox(
                  width:  138.15*fem,
                  height:  13.95*fem,
                  child:
                  Text("Use phone number",
                      style: TextStyle(
                        color: Color(0xffcc323f),
                        fontFamily: 'Sk-Modernist',
                        fontSize: 16 * fem,
                        fontWeight: FontWeight.w700,
                        height: 1.5,
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
        onPressed:  () {},
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