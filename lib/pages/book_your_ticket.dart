import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BookYourTicket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned.fill(
              child: SvgPicture.asset(
                'assets/vectors/vector_214_x2.svg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 170, 16, 29),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 277,
                    height: 294,
                    child: Image.asset(
                      'assets/images/ellipse_12.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Book Your Ticket',
                    style: GoogleFonts.inika(
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                      height: 1.3,
                      color: Color(0xFF121111),
                    ),
                  ),
                  SizedBox(height: 213),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildIndicatorRow(),
                      ElevatedButton(
                        onPressed: () {
                          // Add action for Get Started button
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFF0000),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          padding: EdgeInsets.fromLTRB(
                              0, 11, 2.1, 16), // Adjusted padding
                        ),
                        child: Text(
                          'Get Started',
                          style: GoogleFonts.inika(
                            fontWeight: FontWeight.w400,
                            fontSize: 18, // Adjusted font size
                            letterSpacing: -0.4,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIndicatorRow() {
    return Container(
      margin: EdgeInsets.only(top: 25, bottom: 15),
      child: SizedBox(
        width: 76,
        child: Row(
          children: [
            _buildIndicatorDot(Color(0x2BFF0000)),
            _buildIndicatorDot(Color(0x2BFF0000)),
            _buildIndicatorDot(Color(0xFFFF0000)),
          ],
        ),
      ),
    );
  }

  Widget _buildIndicatorDot(Color color) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      width: 10,
      height: 10,
    );
  }
}
