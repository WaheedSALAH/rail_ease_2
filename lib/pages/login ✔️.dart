import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _forgetPasswordClicked = false;
  bool _registerNowClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(15, 42, 20, 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 45,
                  height: 45,
                  child: IconButton(
                    icon: SvgPicture.asset('assets/vectors/back_17_x2.svg'),
                    onPressed: () {
                      // Implement action to go back
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Welcome Back!',
                style: GoogleFonts.inika(
                  fontWeight: FontWeight.w700,
                  fontSize: 40,
                  color: Color(0xFFFF0000),
                ),
              ),
              SizedBox(height: 40),
              buildInputField('Email', 'assets/vectors/subtract_2_x2.svg'),
              SizedBox(height: 20),
              buildInputField('Password', 'assets/vectors/group_21_x2.svg'),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  setState(() {
                    _forgetPasswordClicked = !_forgetPasswordClicked;
                    // Add action for forget password
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: _forgetPasswordClicked
                            ? Colors.red
                            : Colors.transparent,
                        width: 2,
                      ),
                    ),
                  ),
                  child: Text(
                    'Forget Password?',
                    style: GoogleFonts.inika(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: _forgetPasswordClicked
                          ? Colors.red
                          : Color(0xFFFF0101),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add your login action here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color(0xFFFF0000), // Specify primary color here
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  elevation: 2,
                ),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'Login',
                    style: GoogleFonts.inika(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Or Login with',
                    style: GoogleFonts.inika(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Add action for Facebook login
                    },
                    child: buildSocialLoginButton(
                        'assets/vectors/vector_28_x2.svg'),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      // Add action for Google login
                    },
                    child: buildSocialLoginButton(
                        'assets/vectors/group_123_x2.svg'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  setState(() {
                    _registerNowClicked = !_registerNowClicked;
                    // Add action for register now
                  });
                },
                child: AnimatedDefaultTextStyle(
                  duration: Duration(milliseconds: 300),
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: _registerNowClicked ? Colors.red : Color(0xFF000000),
                  ),
                  child: Text(
                    'Don’t have an account? Register Now',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInputField(String labelText, String iconPath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFF3F3F3),
        boxShadow: [
          BoxShadow(
            color: Color(0x40000000),
            offset: Offset(0, 4),
            blurRadius: 2,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 19, 0, 10),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              width: 22.1,
              height: 19,
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: labelText,
                  hintStyle: TextStyle(
                    color: Color(0x96000000),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSocialLoginButton(String iconPath) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x40000000),
                offset: Offset(0, 4),
                blurRadius: 2,
              ),
            ],
          ),
          width: 65,
          height: 32.7,
          padding: EdgeInsets.all(5),
          child: SvgPicture.asset(
            iconPath,
            width: 24,
            height: 25,
          ),
        ),
      ],
    );
  }
}
