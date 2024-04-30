import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF7F8FA),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(23, 42, 29.3, 0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 80.9),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 40.8,
                        height: 40.8,
                        child: SvgPicture.asset(
                          'assets/vectors/back_5_x2.svg',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(8.7, 0, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(3.3, 0, 3.3, 18.3),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Rest Your Password',
                              style: GoogleFonts.getFont(
                                'Inika',
                                fontWeight: FontWeight.w700,
                                fontSize: 38,
                                height: 1.3,
                                letterSpacing: -1.5,
                                color: Color(0xFFFF0000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.9, 0, 0, 18.6),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(12.8),
                            ),
                            child: Container(
                              padding:
                                  EdgeInsets.fromLTRB(20.9, 20.6, 16.2, 16.2),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0.1, 0, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0, 0, 19.9, 4.9),
                                          child: SizedBox(
                                            width: 15.6,
                                            height: 17.4,
                                            child: SvgPicture.asset(
                                              'assets/vectors/lock_icon_1_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 1.3, 0, 0),
                                          child: Text(
                                            'Enter Your New Password',
                                            style: GoogleFonts.getFont(
                                              'Inika',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              letterSpacing: -0.3,
                                              color: Color(0xFFC2C3CB),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 5.7),
                                    child: SizedBox(
                                      width: 16.8,
                                      height: 16.7,
                                      child: SvgPicture.asset(
                                        'assets/vectors/eye_off_icon_x2.svg',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0.9, 45),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(12.8),
                            ),
                            child: Container(
                              padding:
                                  EdgeInsets.fromLTRB(20.9, 20.6, 16.2, 17),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0.1, 0, 4.1),
                                    child: SizedBox(
                                      width: 15.6,
                                      height: 17.4,
                                      child: SvgPicture.asset(
                                        'assets/vectors/lock_icon_x2.svg',
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0.6, 0, 0),
                                    child: Text(
                                      'Confirm Password',
                                      style: GoogleFonts.getFont(
                                        'Inika',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        letterSpacing: -0.3,
                                        color: Color(0xFFC2C3CB),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 4.9),
                                    child: SizedBox(
                                      width: 16.8,
                                      height: 16.7,
                                      child: SvgPicture.asset(
                                        'assets/vectors/eye_off_icon_1_x2.svg',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.5, 0, 0, 0),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              child: Text(
                                'Reset',
                                style: GoogleFonts.getFont(
                                  'Inika',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  letterSpacing: -0.4,
                                  color: Color(0xFFF3F5F6),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 77.7,
              bottom: 313,
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
                  height: 50,
                  padding: EdgeInsets.fromLTRB(2, 10, 0, 14),
                  child: Text(
                    'Reset',
                    style: GoogleFonts.getFont(
                      'Inika',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      letterSpacing: -0.4,
                      color: Color(0xFFFFFFFF),
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
