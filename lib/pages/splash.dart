import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: Container(
              width: 200, // Adjust the width as needed
              height: 200, // Adjust the height as needed
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle, // Changed to circle shape
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    offset: const Offset(0, 4),
                    blurRadius:
                        10, // Increased blur radius for a more pronounced shadow
                    spreadRadius:
                        2, // Spread radius to control the size of the shadow
                  ),
                ],
              ),
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 75, // Adjust the radius as needed
                  child: SvgPicture.asset(
                    'assets/vectors/container_1_x2.svg',
                    width: 150, // Adjust the width as needed
                    height: 150, // Adjust the height as needed
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          // Welcome text
          Text(
            'Welcome to\nRail Ease',
            textAlign: TextAlign.center,
            style: GoogleFonts.aDLaMDisplay(
              fontWeight: FontWeight.w400,
              fontSize: 38, // Adjust the font size as needed
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          Spacer(),
          // Book Your Ticket Easily text
          Text(
            'Book Your Ticket Easily',
            style: GoogleFonts.aDLaMDisplay(
              fontWeight: FontWeight.w400,
              fontSize: 28, // Adjust the font size as needed
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
