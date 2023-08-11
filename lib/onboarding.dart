//onboarding.dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project1/signup.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fem = 1.0;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xff000000)),
        child: ListView(
          children: [
            SizedBox(
              width: 400 * fem,
              height: 181 * fem,
            ),
            SizedBox(
              width: 40 * fem,
              height: 7 * fem,
            ),
            SizedBox(
              width: 400 * fem,
              height: 175 * fem,
              child: Image.network(
                "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40 * fem, 95 * fem, 40 * fem, 60 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(9.5 * fem, 0 * fem, 9.5 * fem, 36.41 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
                          child: Text(
                            'Algorithm',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Sk-Modernist',
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              height: 1.5,
                              color: Color(0xffc2cad7),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 30 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 276 * fem,
                          ),
                          child: Text(
                            'Users going through a vetting process to ensure you never match with bots.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Sk-Modernist',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              color: Color(0xffc2cad7),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 26.07 * fem),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup()),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 55.52 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffcc323f),
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Create an account',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Sk-Modernist',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              height: 1.5,
                              color: Color(0xffc2cad7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Already have an account?',
                            style: TextStyle(
                              fontFamily: 'Sk-Modernist',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 1.2575,
                              color: Color(0xffcbdeef),
                            ),
                          ),
                          TextSpan(
                            text: ' ',
                          ),
                          TextSpan(
                            text: 'Sign In',
                            style: TextStyle(
                              fontFamily: 'Sk-Modernist',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              height: 1.2575,
                              color: Color(0xffcc323f),
                            ),
                          ),
                        ],
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
