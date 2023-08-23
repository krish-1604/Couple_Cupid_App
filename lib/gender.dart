//gender.dart
import 'package:couplecupid/profile.dart';
import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double fem = 1.0; // Adjust the 'fem' value as needed
    final double ffem = 1.0; // Adjust the 'ffem' value as needed

    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(40 * fem, 44 * fem, 40 * fem, 48 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff000000),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 243 * fem, 32 * fem),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()),);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(40 * fem),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffcc323f)),
                        color: Color(0xff000000),
                        borderRadius: BorderRadius.circular(35 * fem),
                      ),
                      child: Icon(
                        Icons.arrow_left,
                        size: 16 * fem,
                        color: Color(0xffcc323f),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 206 * fem, 91 * fem),
                  child: Text(
                    'I am a',
                    style: TextStyle(
                      fontFamily: 'Sk-Modernist',
                      fontSize: 34 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5 * ffem / fem,
                      color: Color(0xffc2cad7),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
                  padding: EdgeInsets.fromLTRB(20 * fem, 16 * fem, 23.33 * fem, 18 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffcc323f)),
                    color: Color(0xffc2cad7),
                    borderRadius: BorderRadius.circular(15 * fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 187.17 * fem, 0 * fem),
                        child: Text(
                          'Woman',
                          style: TextStyle(
                            fontFamily: 'Sk-Modernist',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffcc323f),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
                  padding: EdgeInsets.fromLTRB(20 * fem, 16 * fem, 23.33 * fem, 18 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffcc323f),
                    borderRadius: BorderRadius.circular(15 * fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 209.17 * fem, 0 * fem),
                        child: Text(
                          'Man',
                          style: TextStyle(
                            fontFamily: 'Sk-Modernist',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffc2cad7),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 244 * fem),
                  padding: EdgeInsets.fromLTRB(20 * fem, 16 * fem, 26.25 * fem, 18 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffcc323f)),
                    color: Color(0xffc2cad7),
                    borderRadius: BorderRadius.circular(15 * fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 136.08 * fem, 0 * fem),
                        child: Text(
                          'Others',
                          style: TextStyle(
                            fontFamily: 'Sk-Modernist',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffcc323f),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 56 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xffcc323f),
                      borderRadius: BorderRadius.circular(15 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Continue',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Sk-Modernist',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffc2cad7),
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
}