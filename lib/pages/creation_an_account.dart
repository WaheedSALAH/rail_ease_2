import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CreationAnAccount extends StatelessWidget {
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
              margin: EdgeInsets.fromLTRB(8, 0, 8, 13),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 45,
                  height: 45,
                  child: SvgPicture.asset(
                    'assets/vectors/back_10_x2.svg',
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(2, 0, 2, 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Create an account',
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
              margin: EdgeInsets.fromLTRB(2, 0, 7, 15),
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
              child: Container(
                padding: EdgeInsets.fromLTRB(13, 10, 0, 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0x2EFFFFFF),
                        ),
                        child: SizedBox(
                          width: 23,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(3.8, 2.2, 3.8, 2.2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(2.9, 0, 2.9, 2.2),
                                  child: SizedBox(
                                    width: 9.6,
                                    height: 10.8,
                                    child: SvgPicture.asset(
                                      'assets/vectors/shape_1_x2.svg',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15.3,
                                  height: 8.7,
                                  child: SvgPicture.asset(
                                    'assets/vectors/shape_3_x2.svg',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Text(
                        'User name',
                        style: GoogleFonts.getFont(
                          'Inika',
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xD90D0D0D),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(3, 0, 6, 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
                padding: EdgeInsets.fromLTRB(13, 19, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 6.6),
                      width: 23,
                      height: 19.4,
                      child: SizedBox(
                        width: 23,
                        height: 19.4,
                        child: SvgPicture.asset(
                          'assets/vectors/subtract_1_x2.svg',
                        ),
                      ),
                    ),
                    Text(
                      'Email',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Color(0x960D0D0D),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(2, 0, 7, 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
                padding: EdgeInsets.fromLTRB(14, 13, 16.7, 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 6.9, 5.7),
                          child: SizedBox(
                            width: 19.1,
                            height: 22.3,
                            child: SvgPicture.asset(
                              'assets/vectors/group_22_x2.svg',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text(
                            'Password',
                            style: GoogleFonts.getFont(
                              'Inika',
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xFF676767),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 3),
                      child: SizedBox(
                        width: 20.9,
                        height: 20,
                        child: SvgPicture.asset(
                          'assets/vectors/eye_2_x2.svg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 9, 33),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
                padding: EdgeInsets.fromLTRB(16, 14, 16.7, 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 4.9, 4.7),
                          child: SizedBox(
                            width: 19.1,
                            height: 22.3,
                            child: SvgPicture.asset(
                              'assets/vectors/group_2_x2.svg',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Text(
                            'Confirm Password',
                            style: GoogleFonts.getFont(
                              'Inika',
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xFF676767),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 4, 0, 3),
                      child: SizedBox(
                        width: 20.9,
                        height: 20,
                        child: SvgPicture.asset(
                          'assets/vectors/eye_x2.svg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 33),
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
                    width: 284,
                    padding: EdgeInsets.fromLTRB(0, 11, 6.8, 16),
                    child: Text(
                      'Create Account',
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
                                  'assets/vectors/vector_193_x2.svg',
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
                                  'assets/vectors/group_1231_x2.svg',
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
              margin: EdgeInsets.fromLTRB(9, 0, 0, 0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
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
                        color: Color(0xFF151414),
                      ),
                      children: [
                        TextSpan(
                          text: 'I Already Have an Account ',
                          style: GoogleFonts.getFont(
                            'Inika',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            height: 1.3,
                            letterSpacing: 0.2,
                          ),
                        ),
                        TextSpan(
                          text: 'Login',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
