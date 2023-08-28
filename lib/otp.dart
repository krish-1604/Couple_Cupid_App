import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  int _remainingTime = 240;
  bool _isResendingOtp = false;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    if (_remainingTime > 0) {
      Future.delayed(Duration(seconds: 1), () {
        setState(() {
          _remainingTime--;
        });
        startTimer();
      });
    } else {
      setState(() {
        _isResendingOtp = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'OTP Verification',
          style: TextStyle(color: Color(0xffCC323F)),
        ),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Color(0xffCC323F)),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff000000),
        ),
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Please enter the OTP sent to your number and email.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildOtpField(),
                  SizedBox(width: 10),
                  _buildOtpField(),
                  SizedBox(width: 10),
                  _buildOtpField(),
                  SizedBox(width: 10),
                  _buildOtpField(),
                ],
              ),
              SizedBox(height: 30),
              Text(
                _isResendingOtp
                    ? 'Did not receive OTP? Tap to resend.'
                    : 'Resend OTP in ${_remainingTime.toString()} seconds',
                style: TextStyle(
                  color: _isResendingOtp ? Colors.blue : Colors.grey,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _isResendingOtp ? () {} : null,
                style: ButtonStyle(
                  backgroundColor: _isResendingOtp
                      ? MaterialStateProperty.all<Color>(Color(0xffCC323F))
                      : MaterialStateProperty.all<Color>(Colors.grey),
                ),
                child: Text(
                  'Resend OTP',
                  style: TextStyle(
                    fontFamily: 'Sk-Modernist',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOtpField() {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffCC323F), width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        maxLength: 1,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 20, color: Colors.white),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          counterText: '',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: OtpPage()));
}
