import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Language extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(19, 42, 21, 589),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(4, 0, 4, 90.3),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 243.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 39.4,
                        height: 42.7,
                        child: SvgPicture.asset(
                          'assets/vectors/back_4_x2.svg',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 23, 0, 1.7),
                        child: Text(
                          'Language',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF1E1E2D),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Container(
                          width: 48,
                          height: 48,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/rectangle_21.png',
                                ),
                              ),
                            ),
                            child: Container(
                              width: 48,
                              height: 48,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 17),
                      child: Text(
                        'English',
                        style: GoogleFonts.getFont(
                          'Inika',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 1,
                          color: Color(0xFF1E1E2D),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF0066FF),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Container(
                      width: 18,
                      height: 18,
                      padding: EdgeInsets.fromLTRB(5, 6, 5, 6.2),
                      child: SizedBox(
                        width: 8,
                        height: 5.8,
                        child: SvgPicture.asset(
                          'assets/vectors/stroke_31_x2.svg',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
