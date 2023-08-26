import 'package:flutter/material.dart';
import 'package:couplecupid/number.dart';
import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> with TickerProviderStateMixin {
  late TabController _tabController;
  bool _passwordVisible = false;

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
        padding: EdgeInsets.fromLTRB(40 * fem, 20 * fem, 40 * fem, 48 * fem),
        decoration: BoxDecoration(
          color: Color(0xff000000),
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            TabBar(
              controller: _tabController,
              indicatorColor: Color(0xffCC323F),
              tabs: [
                Tab(text: 'Login'),
                Tab(text: 'Sign Up'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildLoginTab(fem),
                  _buildSignUpTab(fem),
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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 4 * fem),
          Container(
            height: 300 * fem,
            child: Lottie.asset(
              'assets/LOGIN.json',
              height: 300 * fem,
              fit: BoxFit.contain,
            ),
          ),

          SizedBox(height: 20 * fem),
          TextField(
            decoration: InputDecoration(
              hintText: 'Username/Email/Phone Number',
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Color(0xffCC323F)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Color(0xffCC323F)),
              ),
            ),
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 20 * fem),
          TextField(
            decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Color(0xffCC323F)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Color(0xffCC323F)),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
                icon: Icon(_passwordVisible ? Icons.visibility : Icons.visibility_off),
                color: Colors.white,
              ),
            ),
            obscureText: !_passwordVisible,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 10 * fem),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  // Add your forgot password functionality here
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Color(0xffCC323F),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20 * fem),
          ElevatedButton(
            onPressed: () {
              // Add your sign-in functionality here
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xffCC323F),
              padding: EdgeInsets.all(12 * fem),
            ),
            child: Text(
              'Sign In',
              style: TextStyle(
                fontFamily: 'Sk-Modernist',
                fontSize: 14 * fem,
                fontWeight: FontWeight.w700,
                height: 1.5 * fem,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20 * fem),
          Text(
            'Or sign in with',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Sk-Modernist',
              fontSize: 14 * fem,
              fontWeight: FontWeight.w400,
              height: 1.5 * fem,
              color: Color(0xffcc323f),
            ),
          ),
          SizedBox(height: 20 * fem),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  // Add your desired functionality here (Facebook sign-in)
                },
                icon: Icon(
                  Icons.facebook,
                  color: Color(0xff1877F2),
                  size: 30 * fem,
                ),
              ),
              SizedBox(width: 20 * fem),
              IconButton(
                onPressed: () {
                  // Add your desired functionality here (Instagram sign-in)
                },
                icon: FaIcon(FontAwesomeIcons.google, color: Colors.red, size: 27 * fem),
              ),
              SizedBox(width: 20 * fem),
              IconButton(
                onPressed: () {
                  // Add your desired functionality here (Apple sign-in)
                },
                icon: FaIcon(FontAwesomeIcons.apple, color: Colors.grey, size: 30 * fem),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Signup(),
    );
  }
}
