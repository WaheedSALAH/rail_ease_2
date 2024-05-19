import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            IconButton(
              icon: SvgPicture.asset(
                'assets/vectors/back_4_x2.svg',
                width: 39.4,
                height: 42.7,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 5),
            Text(
              'Privacy Policy',
              style: GoogleFonts.inika(
                fontWeight: FontWeight.w400,
                fontSize: 30,
                color: Color(0xFF1E1E2D),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Rail ease !',
              style: GoogleFonts.inika(
                fontWeight: FontWeight.w400,
                fontSize: 22,
                color: Color(0xFF1E1E2D),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Protecting your privacy is our top priority. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our mobile application. Please read this Privacy Policy carefully.',
              style: GoogleFonts.inika(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xFF1E1E2D),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Information We Collect',
              style: GoogleFonts.inika(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Color(0xFF1E1E2D),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'We collect information from you when you register on our app, make a booking, subscribe to our newsletter, respond to a survey, fill out a form, or enter information on our app.',
              style: GoogleFonts.inika(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xFF1E1E2D),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'How We Use Your Information',
              style: GoogleFonts.inika(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Color(0xFF1E1E2D),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'We may use the information we collect from you when you register, make a purchase, sign up for our newsletter, respond to a survey or marketing communication, surf the website, or use certain other app features in the following ways:',
              style: GoogleFonts.inika(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xFF1E1E2D),
              ),
            ),
            SizedBox(height: 10),
            Text(
              '- To personalize your experience and to allow us to deliver the type of content and product offerings in which you are most interested.',
              style: GoogleFonts.inika(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xFF1E1E2D),
              ),
            ),
            SizedBox(height: 10),
            Text(
              '- To improve our app in order to better serve you.',
              style: GoogleFonts.inika(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xFF1E1E2D),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Contact Us',
              style: GoogleFonts.inika(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Color(0xFF1E1E2D),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us.',
              style: GoogleFonts.inika(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xFF1E1E2D),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Email: support@trainticketbook.com',
              style: GoogleFonts.inika(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xFF1E1E2D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PrivacyPolicy(),
  ));
}
