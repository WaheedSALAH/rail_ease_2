import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(23, 42, 27, 406),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: SvgPicture.asset(
                    'assets/vectors/back_2_x2.svg',
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 13, 34),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(13.7, 0, 13.7, 12),
                    child: Text(
                      'Forgot Password',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        height: 1.3,
                        color: Color(0xFFFF0000),
                      ),
                    ),
                  ),
                  Text(
                    'Code has been send to n***---Mail.Com',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Inika',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      height: 1.5,
                      color: Color(0xFFA0A0A0),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 29),
              child: Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  width: 305,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFFFFFFFF),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x4D000000),
                              offset: Offset(0, 2),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Container(
                          width: 40,
                          height: 50,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFFFFFFFF),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x4D000000),
                              offset: Offset(0, 2),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Container(
                          width: 40,
                          height: 50,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFFFFFFFF),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x4D000000),
                              offset: Offset(0, 2),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Container(
                          width: 40,
                          height: 50,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFFFFFFFF),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x4D000000),
                              offset: Offset(0, 2),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Container(
                          width: 40,
                          height: 50,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFFFFFFFF),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x4D000000),
                              offset: Offset(0, 2),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Container(
                          width: 40,
                          height: 50,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFFFFFFFF),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x4D000000),
                              offset: Offset(0, 2),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Container(
                          width: 40,
                          height: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(21, 0, 0, 37),
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.getFont(
                    'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    height: 1.4,
                    color: Color(0xFF5A5A5A),
                  ),
                  children: [
                    TextSpan(
                      text: 'Didn’t receive code? ',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1.3,
                      ),
                    ),
                    TextSpan(
                      text: 'Resend again',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1.3,
                        color: Color(0xFFFF0000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(31, 0, 0, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Color(0xFF5B5959),
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
                padding: EdgeInsets.fromLTRB(0, 10, 10.3, 17),
                child: Text(
                  'Verify',
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
          ],
        ),
      ),
    );
  }
}
