import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 42, 0, 126),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(23, 0, 23, 6),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 220,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 28.3),
                        child: SizedBox(
                          width: 39.4,
                          height: 42.7,
                          child: SvgPicture.asset(
                            'assets/vectors/back_20_x2.svg',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 23, 0, 0),
                        child: Text(
                          'Notifications',
                          style: GoogleFonts.getFont(
                            'Inika',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            height: 2.7,
                            letterSpacing: -0.4,
                            color: Color(0xFF0D0D0D),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(17, 0, 17, 9),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Today',
                  style: GoogleFonts.getFont(
                    'Inika',
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    height: 2.2,
                    letterSpacing: -0.5,
                    color: Color(0xFF0D0D0D),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFE0E0E0),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(17, 26, 24.9, 19),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(32.5),
                                ),
                                child: Container(
                                  width: 65,
                                  height: 65,
                                  padding: EdgeInsets.fromLTRB(
                                      16.1, 16.1, 16.1, 16.1),
                                  child: Container(
                                    width: 32.8,
                                    height: 32.8,
                                    child: SizedBox(
                                      width: 32.8,
                                      height: 32.8,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_313_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 7, 16.8, 8),
                              child: Text(
                                'The train from cairo to zagazig now arrives at the 1st...',
                                style: GoogleFonts.getFont(
                                  'Inika',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  height: 1.7,
                                  letterSpacing: -0.3,
                                  color: Color(0xB20D0D0D),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 16, 0, 22),
                              child: Text(
                                'Now',
                                style: GoogleFonts.getFont(
                                  'Inika',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  height: 1.8,
                                  letterSpacing: -0.3,
                                  color: Color(0x660D0D0D),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 16.3,
                        top: -6.4,
                        child: SizedBox(
                          width: 10.5,
                          height: 11.4,
                          child: SvgPicture.asset(
                            'assets/vectors/ellipse_22_x2.svg',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(13, 0, 23.9, 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 19, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(32.5),
                      ),
                      child: Container(
                        width: 65,
                        height: 65,
                        padding: EdgeInsets.fromLTRB(20, 12.8, 16.6, 12.9),
                        child: Container(
                          width: 28.5,
                          height: 39.3,
                          child: SizedBox(
                            width: 28.5,
                            height: 39.3,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_302_x2.svg',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 22, 42.7, 18),
                    child: Text(
                      'Your train is arriving now',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        height: 1.7,
                        letterSpacing: -0.3,
                        color: Color(0xB20D0D0D),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 22, 0, 16),
                    child: Text(
                      '5 min',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        height: 1.8,
                        letterSpacing: -0.3,
                        color: Color(0x660D0D0D),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(11, 0, 11, 12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Yesterday',
                  style: GoogleFonts.getFont(
                    'Inika',
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    height: 2.2,
                    letterSpacing: -0.5,
                    color: Color(0xFF0D0D0D),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(13, 0, 15.1, 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 19, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(32.5),
                      ),
                      child: Container(
                        width: 65,
                        height: 65,
                        padding: EdgeInsets.fromLTRB(14, 15, 16.8, 15.8),
                        child: SizedBox(
                          width: 34.2,
                          height: 34.2,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_82_x2.svg',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 18, 36.7, 22),
                    child: Text(
                      'Ticket purchase successful.',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        height: 1.7,
                        letterSpacing: -0.3,
                        color: Color(0xB20D0D0D),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 23),
                    child: Text(
                      '20 May',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        height: 1.8,
                        letterSpacing: -0.3,
                        color: Color(0x660D0D0D),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(11, 0, 15.1, 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 21, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(32.5),
                      ),
                      child: Container(
                        width: 65,
                        height: 65,
                        padding: EdgeInsets.fromLTRB(16, 14, 14.8, 14),
                        child: SizedBox(
                          width: 34.2,
                          height: 37,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_14_x2.svg',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 14, 51.6, 11),
                    child: RichText(
                      text: TextSpan(
                        style: GoogleFonts.getFont(
                          'Open Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          height: 1.7,
                          letterSpacing: -0.3,
                          color: Color(0xB2050505),
                        ),
                        children: [
                          TextSpan(
                            text: 'Visit our website today.',
                            style: GoogleFonts.getFont(
                              'Inika',
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              height: 1.3,
                              letterSpacing: -0.3,
                            ),
                          ),
                          TextSpan(
                            text: 'www.railway.gov.lk',
                            style: GoogleFonts.getFont(
                              'Inika',
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              height: 1.3,
                              letterSpacing: -0.3,
                              color: Color(0xFF24A0ED),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 24, 0, 14),
                    child: Text(
                      '20 May',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        height: 1.8,
                        letterSpacing: -0.3,
                        color: Color(0x660D0D0D),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(13, 0, 14.1, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(32.5),
                      ),
                      child: Container(
                        width: 65,
                        height: 65,
                        padding: EdgeInsets.fromLTRB(17, 12, 13.8, 18.8),
                        child: SizedBox(
                          width: 34.2,
                          height: 34.2,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_134_x2.svg',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 40.7, 25),
                    child: Text(
                      'Ticket purchase successful.',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        height: 1.7,
                        letterSpacing: -0.3,
                        color: Color(0xB20D0D0D),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 13, 0, 25),
                    child: Text(
                      '20 May',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        height: 1.8,
                        letterSpacing: -0.3,
                        color: Color(0x660D0D0D),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
