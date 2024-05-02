import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CreationAnAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.fromLTRB(15, 42, 20, 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 45,
                height: 45,
                child: IconButton(
                  icon: SvgPicture.asset('assets/vectors/back_10_x2.svg'),
                  onPressed: () {
                    // Implement action to go back
                  },
                ),
              ),
              SizedBox(height: 13),
              Text(
                'Create an account',
                style: GoogleFonts.inika(
                  fontWeight: FontWeight.w700,
                  fontSize: 40,
                  color: Color(0xFFFF0000),
                ),
              ),
              SizedBox(height: 20),
              buildInputField('User name'),
              SizedBox(height: 10),
              buildInputField('Email'),
              SizedBox(height: 10),
              buildInputField('Password', obscureText: true),
              SizedBox(height: 10),
              buildInputField('Confirm Password', obscureText: true),
              SizedBox(height: 33),
              ElevatedButton(
                onPressed: () {
                  // Add action to create account
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFF0000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  elevation: 2,
                ),
                child: Container(
                  width: 284,
                  padding: EdgeInsets.symmetric(vertical: 11, horizontal: 6.8),
                  child: Text(
                    'Create Account',
                    style: GoogleFonts.inika(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      letterSpacing: -0.4,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 75),
              Divider(
                color: Colors.black,
                height: 1,
              ),
              SizedBox(height: 23.3),
              Center(
                child: Text(
                  'Or Login with',
                  style: GoogleFonts.inika(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 23.3),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildSocialLoginButton('assets/vectors/vector_193_x2.svg'),
                  SizedBox(width: 15),
                  buildSocialLoginButton('assets/vectors/group_1231_x2.svg'),
                ],
              ),
              SizedBox(height: 23.3),
              InkWell(
                onTap: () {
                  // Add action to navigate to login screen
                },
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      height: 1.4,
                      letterSpacing: 0.2,
                      color: Color(0xFF151414),
                    ),
                    children: [
                      TextSpan(
                        text: 'I Already Have an Account ',
                        style: GoogleFonts.inika(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          height: 1.3,
                          letterSpacing: 0.2,
                        ),
                      ),
                      TextSpan(
                        text: 'Login',
                        style: GoogleFonts.inika(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          height: 1.3,
                          letterSpacing: 0.2,
                          color: Color(0xFFFF0000),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInputField(String labelText, {bool obscureText = false}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0x2EFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color(0x40000000),
            offset: Offset(0, 4),
            blurRadius: 2,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(13, 10, 0, 17),
        child: SizedBox(
          height: 35, // Adjust the height as needed
          child: TextField(
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: labelText,
              border: InputBorder.none,
            ),
            style: GoogleFonts.inika(
              fontWeight: FontWeight.w400,
              fontSize: 16, // Adjust the font size as needed
              color: Color(0xD90D0D0D),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSocialLoginButton(String iconPath) {
    return Container(
      width: 65,
      height: 32.7,
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
      padding: EdgeInsets.all(3.2),
      child: SvgPicture.asset(iconPath),
    );
  }
}
