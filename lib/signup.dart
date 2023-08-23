import 'package:flutter/material.dart';
import 'package:couplecupid/number.dart';
import 'package:lottie/lottie.dart'; // Import the Lottie package

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double fem = 1.0;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(40 * fem, 20 * fem, 40 * fem, 48 * fem), // Adjusted top padding
        decoration: BoxDecoration(
          color: Color(0xff000000),
        ),
        child: Column(
          children: [
            SizedBox(height: 20), // Extra space here
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: 'Sign Up'),
                Tab(text: 'Login'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildSignUpTab(fem),
                  _buildLoginTab(fem),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSignUpTab(double fem) {
    return ListView(
      children: [
        // ... Your sign up content here ...
      ],
    );
  }

  Widget _buildLoginTab(double fem) {
    return ListView(
      children: [
        SizedBox(height: 300),
        Container(
          width: 200 * fem,
          height: 200 * fem,
          child: Lottie.asset(
            'assets/login_animation.json', // Replace with the actual path to your animation file
            width: 200 * fem,
            height: 200 * fem,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 20 * fem), // Add spacing
        Text(
          'Or sign in with',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Sk-Modernist',
            fontSize: 14 * fem,
            fontWeight: FontWeight.w400,
            height: 1.5 * fem,
            color: Color(0xffc2cad7),
          ),
        ),
        SizedBox(height: 20 * fem), // Add more spacing
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Add your desired functionality here (Facebook sign-in)
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xff1877F2),
                padding: EdgeInsets.all(12 * fem),
              ),
              child: Text(
                'Facebook',
                style: TextStyle(
                  fontFamily: 'Sk-Modernist',
                  fontSize: 14 * fem,
                  fontWeight: FontWeight.w700,
                  height: 1.5 * fem,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 10 * fem),
            ElevatedButton(
              onPressed: () {
                // Add your desired functionality here (Google sign-in)
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xffDB4437),
                padding: EdgeInsets.all(12 * fem),
              ),
              child: Text(
                'Google',
                style: TextStyle(
                  fontFamily: 'Sk-Modernist',
                  fontSize: 14 * fem,
                  fontWeight: FontWeight.w700,
                  height: 1.5 * fem,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 10 * fem),
            ElevatedButton(
              onPressed: () {
                // Add your desired functionality here (Instagram sign-in)
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xffC13584),
                padding: EdgeInsets.all(12 * fem),
              ),
              child: Text(
                'Instagram',
                style: TextStyle(
                  fontFamily: 'Sk-Modernist',
                  fontSize: 14 * fem,
                  fontWeight: FontWeight.w700,
                  height: 1.5 * fem,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
