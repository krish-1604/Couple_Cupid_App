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
  bool _confirmPasswordVisible = false;
  bool _isAgreeChecked = false;
  String _password = '';
  String _confirmPassword = '';
  String _passwordError = '';
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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 80 * fem),
          TextField(
            decoration: InputDecoration(
              hintText: 'Username',
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
              hintText: 'Email',
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
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 20 * fem),
          Row(
            children: [
              Container(
                width: 70 * fem,
                padding: EdgeInsets.all(19),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffCC323F),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    '+91',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10 * fem),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Mobile Number',
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
                  keyboardType: TextInputType.phone,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: 20 * fem),
          TextField(
            onChanged: (value) {
              setState(() {
                _password = value;
              });
            },
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
          SizedBox(height: 20 * fem),
          TextField(
            onChanged: (value) {
              setState(() {
                _confirmPassword = value;
                _passwordError = ''; // Clear the error message
              });
            },
            decoration: InputDecoration(
              hintText: 'Confirm Password',
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
                    _confirmPasswordVisible = !_confirmPasswordVisible;
                  });
                },
                icon: Icon(_confirmPasswordVisible ? Icons.visibility : Icons.visibility_off),
                color: Colors.white,
              ),
            ),
            obscureText: !_confirmPasswordVisible, // Use _confirmPasswordVisible here
            style: TextStyle(color: Colors.white),
          ),

// Display error message if passwords don't match
          if (_passwordError.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                _passwordError,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14 * fem,
                ),
              ),
            ),
          SizedBox(height: 20 * fem),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red), // Red border
                  borderRadius: BorderRadius.circular(4.0), // Adjust the border radius as needed
                ),
                padding: EdgeInsets.all(2.0), // Adjust the padding as needed
                child: SizedBox(
                  width: 13.0, // Adjust the size of the checkbox
                  height: 13.0, // Adjust the size of the checkbox
                  child: Checkbox(
                    value: _isAgreeChecked,
                    onChanged: (value) {
                      setState(() {
                        _isAgreeChecked = value!;
                      });
                    },
                    activeColor: Colors.red,
                    checkColor: Colors.white, // Color of the checkmark when checked
                    fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                      if (states.contains(MaterialState.selected)) {
                        return Colors.red; // Color of the checkbox when checked
                      }
                      return Colors.transparent; // Color of the checkbox when unchecked
                    }),
                  ),
                ),
              ),
              Text(
                '   I agree with the terms and conditions of the app ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.2 * fem,
                ),
              ),
            ],
          ),

          SizedBox(height: 20 * fem),
          ElevatedButton(
            onPressed: _isAgreeChecked
                ? () {
              if (_confirmPassword != _password) {
                setState(() {
                  _passwordError = 'Passwords do not match. Please make sure the passwords match.';
                });
                return; // Don't proceed with signup
              }
              // Add your sign-up functionality here
            }
                : null, // Disable button if checkbox is not checked
            style: ButtonStyle(
              backgroundColor: _isAgreeChecked
                  ? MaterialStateProperty.all<Color>(Color(0xffCC323F)) // Enabled color
                  : MaterialStateProperty.all<Color>(Colors.grey),      // Disabled color
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(12 * fem)),
            ),

            child: Text(
              'Sign Up',
              style: TextStyle(
                fontFamily: 'Sk-Modernist',
                fontSize: 14 * fem,
                fontWeight: FontWeight.w700,
                height: 1.5 * fem,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 40 * fem),
          Text(
            'Or sign up with',
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
                  // Add your desired functionality here (Facebook signup)
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
                  // Add your desired functionality here (Google signup)
                },
                icon: FaIcon(FontAwesomeIcons.google, color: Colors.red, size: 27 * fem),
              ),
              SizedBox(width: 20 * fem),
              IconButton(
                onPressed: () {
                  // Add your desired functionality here (Apple signup)
                },
                icon: FaIcon(FontAwesomeIcons.apple, color: Colors.grey, size: 30 * fem),
              ),
            ],
          ),
        ],
      ),
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
