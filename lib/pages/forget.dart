import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Forget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(17, 42, 18, 337),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(6, 0, 6, 45),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFE8ECF4)),
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFFF0000),
                  ),
                  child: Container(
                    width: 41,
                    height: 41,
                    padding: EdgeInsets.fromLTRB(14.9, 13.1, 17.6, 13.1),
                    child: Container(
                      width: 8.5,
                      height: 14.9,
                      child: SizedBox(
                        width: 8.5,
                        height: 14.9,
                        child: SvgPicture.asset(
                          'assets/vectors/vector_241_x2.svg',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 51),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Forgot password?',
                  style: GoogleFonts.getFont(
                    'Inika',
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    height: 1.2,
                    color: Color(0xFFFF0000),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 17),
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
              child: Container(
                padding: EdgeInsets.fromLTRB(12, 20, 0, 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 2, 0, 3),
                      width: 24.2,
                      height: 18,
                      child: SizedBox(
                        width: 24.2,
                        height: 18,
                        child: SvgPicture.asset(
                          'assets/vectors/shape_7_x2.svg',
                        ),
                      ),
                    ),
                    Text(
                      'Enter your email address',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color(0xFF676767),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 36),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '* We will send you a message to set  or reset your new password',
                  style: GoogleFonts.getFont(
                    'Inika',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Color(0xFFFF0000),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(21, 0, 0, 0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Color(0xFFFF0000),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x40000000),
                        offset: Offset(0, 4),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Container(
                    width: 152,
                    padding: EdgeInsets.fromLTRB(0, 10, 2.1, 17),
                    child: Text(
                      'Submit',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        letterSpacing: -0.4,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
