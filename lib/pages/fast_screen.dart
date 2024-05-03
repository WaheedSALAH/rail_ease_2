import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Fast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned.fill(
              child: SvgPicture.asset(
                'assets/vectors/vector_62_x2.svg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(18, 41, 18, 29),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 235.7, bottom: 102),
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your action for the "Skip" button
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                      ),
                      child: Text(
                        'Skip',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xFFD7D7D7),
                        ),
                      ),
                    ),
                  ),
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
                    'fast ticket read qr-code',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inika(
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      height: 1.3,
                      color: Color(0xFF121111),
                    ),
                  ),
                  SizedBox(height: 167),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25, bottom: 15),
                        child: Row(
                          children: [
                            _buildIndicatorDot(Color(0xFFFF0000)),
                            _buildIndicatorDot(Color(0x26FF0000)),
                            _buildIndicatorDot(Color(0x26FF0000)),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Add action for NEXT button
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFF0000),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          padding: EdgeInsets.fromLTRB(0, 11, 2.1, 16),
                        ),
                        child: Text(
                          'NEXT',
                          style: GoogleFonts.inika(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
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
