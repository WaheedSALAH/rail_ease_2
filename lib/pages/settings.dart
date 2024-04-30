import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(17, 42, 23, 384),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(6, 0, 6, 55.3),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 188.6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 39.4,
                        height: 42.7,
                        child: SvgPicture.asset(
                          'assets/vectors/back_14_x2.svg',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 23, 0, 1.7),
                        child: Text(
                          'Settings',
                          style: GoogleFonts.getFont(
                            'Inika',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            height: 1,
                            color: Color(0xFF1E1E2D),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 9, 51),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 37),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'General',
                        style: GoogleFonts.getFont(
                          'Inika',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1,
                          color: Color(0xD44A4A52),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 38),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 7, 0),
                              child: SizedBox(
                                width: 239,
                                child: Text(
                                  'Language',
                                  style: GoogleFonts.getFont(
                                    'Inika',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    height: 1,
                                    color: Color(0xC2030303),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'English',
                              style: GoogleFonts.getFont(
                                'Inika',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 1,
                                color: Color(0xC2030303),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                              width: 6,
                              height: 12,
                              child: SizedBox(
                                width: 6,
                                height: 12,
                                child: SvgPicture.asset(
                                  'assets/vectors/path_10_x2.svg',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 7, 0),
                            child: SizedBox(
                              width: 313,
                              child: Text(
                                'Delete Account',
                                style: GoogleFonts.getFont(
                                  'Inika',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  height: 1,
                                  color: Color(0xC2030303),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                            width: 6,
                            height: 12,
                            child: SizedBox(
                              width: 6,
                              height: 12,
                              child: SvgPicture.asset(
                                'assets/vectors/path_4_x2.svg',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 28.9),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Security',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 1,
                        color: Color(0xFFA2A2A7),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 15.1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 9, 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 7, 0),
                              child: SizedBox(
                                width: 313,
                                child: Text(
                                  'Change Password',
                                  style: GoogleFonts.getFont(
                                    'Inika',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    height: 1,
                                    color: Color(0xFF1E1E2D),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                              width: 6,
                              height: 12,
                              child: SizedBox(
                                width: 6,
                                height: 12,
                                child: SvgPicture.asset(
                                  'assets/vectors/path_8_x2.svg',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF4F4F4),
                        ),
                        child: Container(
                          width: 335,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 9, 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 7, 0),
                            child: SizedBox(
                              width: 313,
                              child: Text(
                                'Privacy Policy',
                                style: GoogleFonts.getFont(
                                  'Inika',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  height: 1,
                                  color: Color(0xFF1E1E2D),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                            width: 6,
                            height: 12,
                            child: SizedBox(
                              width: 6,
                              height: 12,
                              child: SvgPicture.asset(
                                'assets/vectors/path_11_x2.svg',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF4F4F4),
                      ),
                      child: Container(
                        width: 335,
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
