//signup.dart
import 'package:flutter/material.dart';
import 'package:project1/number.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fem = 1.0;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(40 * fem, 145 * fem, 40 * fem, 48 * fem),
        decoration: BoxDecoration(
          color: Color(0xff000000),
        ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 9 * fem, 38 * fem),
              width: 132 * fem,
              height: 123 * fem,
              child: Image.network(
                "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 64 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 27 * fem),
                    child: Text(
                      'Sign up to continue',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Sk-Modernist',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                        color: Color(0xffc2cad7),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
                    child: TextButton(
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
                            'Continue with email',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Sk-Modernist',
                              fontSize: 16 * fem,
                              fontWeight: FontWeight.w700,
                              height: 1.5 * fem,
                              color: Color(0xffc2cad7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Number()),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 56 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xfff3f3f3)),
                        color: Color(0xffc2cad7),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Use phone number',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Sk-Modernist',
                            fontSize: 16 * fem,
                            fontWeight: FontWeight.w700,
                            height: 1.5 * fem,
                            color: Color(0xffcc323f),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 2 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 2.5 * fem, 0 * fem, 0 * fem),
                          width: 94 * fem,
                          height: 0.5 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffc2cad7),
                          ),
                        ),
                        SizedBox(
                          width: 16.5 * fem,
                        ),
                        Text(
                          'or sign up with',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Sk-Modernist',
                            fontSize: 12 * fem,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                            color: Color(0xffc2cad7),
                          ),
                        ),
                        SizedBox(
                          width: 16.5 * fem,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 2.5 * fem, 0 * fem, 0 * fem),
                          width: 94 * fem,
                          height: 0.5 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffc2cad7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(49 * fem, 0 * fem, 51.94 * fem, 0 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Add your desired functionality here
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, // Set the button background color
                            elevation: 0, // Remove the button shadow
                          ),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 10.5 * fem, 0 * fem),
                            width: 28 * fem,
                            height: 28 * fem,
                            child: Image(
                                image: AssetImage("assets/facebook.png"),
                              width: 28 *fem,
                              height: 28 * fem,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Add your desired functionality here
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, // Set the button background color
                            elevation: 0, // Remove the button shadow
                          ),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 10.6 * fem, 0 * fem),
                            width: 28 * fem,
                            height: 28 * fem,
                            child: Image.network(
                              "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
                              width: 28 * fem,
                              height: 28 * fem,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Add your desired functionality here
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, // Set the button background color
                            elevation: 0, // Remove the button shadow
                          ),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 10.6 * fem, 0 * fem),
                            width: 28 * fem,
                            height: 28 * fem,
                            child: Image.network(
                              "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
                              width: 28 * fem,
                              height: 28 * fem,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Container(
              margin: EdgeInsets.fromLTRB(40.5 * fem, 0 * fem, 39.5 * fem, 0 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 30 * fem, 0 * fem),
                    child: TextButton(
                      onPressed: () {

                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        primary: Colors.transparent, // Set the button text color
                      ),
                      child: Text(
                        'Terms of use',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Sk-Modernist',
                          fontSize: 14 * fem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * fem,
                          color: Color(0xffc2cad7),
                        ),
                      ),
                    ),


                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: Text(
                      'Privacy Policy',
                      textAlign: TextAlign.center,
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
          ],
        ),
      ),
    );
  }
}
