import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 42, 20, 45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(8, 0, 8, 41),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 45,
                  height: 45,
                  child: SvgPicture.asset(
                    'assets/vectors/back_17_x2.svg',
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(8, 0, 8, 53),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Welcome Back!',
                  style: GoogleFonts.getFont(
                    'Inika',
                    fontWeight: FontWeight.w700,
                    fontSize: 40,
                    height: 1.1,
                    color: Color(0xFFFF0000),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 9, 23),
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
                padding: EdgeInsets.fromLTRB(12, 19, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 2, 0, 5),
                      width: 22.1,
                      height: 19,
                      child: SizedBox(
                        width: 22.1,
                        height: 19,
                        child: SvgPicture.asset(
                          'assets/vectors/subtract_2_x2.svg',
                        ),
                      ),
                    ),
                    Text(
                      'Email',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Color(0x96000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(2, 0, 7, 23),
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
                padding: EdgeInsets.fromLTRB(17, 18, 7.7, 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 1.4, 7.6, 1.3),
                            child: SizedBox(
                              width: 17.4,
                              height: 20.3,
                              child: SvgPicture.asset(
                                'assets/vectors/group_21_x2.svg',
                              ),
                            ),
                          ),
                          Text(
                            'Password',
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
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                      child: SizedBox(
                        width: 20.9,
                        height: 20,
                        child: SvgPicture.asset(
                          'assets/vectors/eye_1_x2.svg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16.8, 0, 16.8, 27),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  child: Opacity(
                    opacity: 0.7,
                    child: Text(
                      'Forget Password ?',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        letterSpacing: -0.3,
                        color: Color(0xFFFF0101),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 0, 71),
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
                      'Login',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        letterSpacing: -0.4,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(9, 0, 0, 75),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 23.3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 8.4, 6, 11.6),
                            decoration: BoxDecoration(
                              color: Color(0xFF000000),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x40000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Container(
                              height: 1,
                            ),
                          ),
                        ),
                        Text(
                          'Or Login with',
                          style: GoogleFonts.getFont(
                            'Inika',
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xFF000000),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 9.5, 0, 10.5),
                            decoration: BoxDecoration(
                              color: Color(0xFF000000),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x40000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Container(
                              height: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                    child: SizedBox(
                      width: 145,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 15, 2.1),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFFFFFFFF),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x40000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Container(
                              width: 65,
                              height: 32.7,
                              padding: EdgeInsets.fromLTRB(0, 3.2, 1, 4.2),
                              child: SizedBox(
                                width: 12,
                                height: 25.3,
                                child: SvgPicture.asset(
                                  'assets/vectors/vector_28_x2.svg',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 2.1, 0, 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFFFFFFFF),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x40000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Container(
                              width: 65,
                              height: 32.7,
                              padding:
                                  EdgeInsets.fromLTRB(16.4, 5.3, 16.4, 2.5),
                              child: SizedBox(
                                width: 23.6,
                                height: 24.9,
                                child: SvgPicture.asset(
                                  'assets/vectors/group_123_x2.svg',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16.4, 0, 8.4, 0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x40000000),
                    offset: Offset(0, 4),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.getFont(
                    'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    height: 1.4,
                    letterSpacing: 0.2,
                    color: Color(0xFF000000),
                  ),
                  children: [
                    TextSpan(
                      text: 'Don’t have an account? ',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        height: 1.3,
                        letterSpacing: 0.2,
                      ),
                    ),
                    TextSpan(
                      text: 'Register Now',
                      style: GoogleFonts.getFont(
                        'Inika',
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
    );
  }
}
