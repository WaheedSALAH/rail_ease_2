import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Color(0xF2FFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color(0x40000000),
            offset: Offset(0, 4),
            blurRadius: 2,
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(35.4, 304, 34.4, 23),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(4, 0, 0, 79),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(109),
                color: Color(0xFF989898),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x40000000),
                    offset: Offset(0, 4),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: SizedBox(
                width: 92,
                height: 61,
                child: Container(
                  padding: EdgeInsets.fromLTRB(6, 0, 6, 0),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xE5EEEEEE),
                          borderRadius: BorderRadius.circular(84),
                        ),
                        child: Container(
                          width: 80,
                          height: 72,
                        ),
                      ),
                      Positioned(
                        right: -19,
                        top: 14.5,
                        child: Container(
                          width: 99,
                          height: 32,
                          child: SizedBox(
                            width: 99,
                            height: 32,
                            child: SvgPicture.asset(
                              'assets/vectors/container_1_x2.svg',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 251),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xE0181818)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x40000000),
                    offset: Offset(0, 4),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: ' Welcome to Rail Ease',
                  style: GoogleFonts.getFont(
                    'Inika',
                    fontWeight: FontWeight.w400,
                    fontSize: 48,
                    height: 0.5,
                    letterSpacing: -1,
                    color: Color(0x786E6868),
                  ),
                  children: [
                    TextSpan(
                      text: 'train ticket',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 40,
                        height: 1.3,
                        letterSpacing: -1,
                        color: Color(0x786E6868),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 1.9, 0),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0x6E000000)),
              ),
              child: Text(
                'Book Your Ticket Easily',
                style: GoogleFonts.getFont(
                  'Inika',
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: Color(0x8C818181),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
