import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EnableLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(19, 839, 0, 0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 134,
              height: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF0D0D0D),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Container(
                  width: 134,
                  height: 5,
                ),
              ),
            ),
            Positioned(
              right: -18,
              bottom: -40,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'EMPTY',
                    ),
                  ),
                ),
                child: Container(
                  width: 393,
                  height: 804,
                ),
              ),
            ),
            Positioned(
              right: -18,
              bottom: -40,
              child: Opacity(
                opacity: 0.5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF000000),
                  ),
                  child: Container(
                    width: 393,
                    height: 852,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 16,
              bottom: 163,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SizedBox(
                  width: 340,
                  height: 459,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(21, 37, 21, 39.5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 81, 20),
                          child: SizedBox(
                            width: 189,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 55, 106),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xFFFFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x40000000),
                                        offset: Offset(0, 2),
                                        blurRadius: 2,
                                      ),
                                    ],
                                  ),
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    padding:
                                        EdgeInsets.fromLTRB(6.7, 6.7, 7.3, 7.3),
                                    child: Container(
                                      width: 10,
                                      height: 10,
                                      child: SizedBox(
                                        width: 10,
                                        height: 10,
                                        child: SvgPicture.asset(
                                          'assets/vectors/vector_176_x2.svg',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                  width: 110,
                                  height: 110,
                                  child: SizedBox(
                                    width: 110,
                                    height: 110,
                                    child: SvgPicture.asset(
                                      'assets/vectors/circle_x2.svg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(14, 0, 0, 40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(5.5, 0, 5.5, 12),
                                child: Text(
                                  'Enable your location',
                                  style: GoogleFonts.getFont(
                                    'Inika',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 24,
                                    height: 1.3,
                                    color: Color(0xFF373737),
                                  ),
                                ),
                              ),
                              Text(
                                'Choose your location to start find the nearest train',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.getFont(
                                  'Inika',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Color(0xFFA0A0A0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 35.5),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFFF0000),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 15.5, 0, 15.5),
                              child: Text(
                                'Use my location',
                                style: GoogleFonts.getFont(
                                  'Inika',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  height: 1.4,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            'Skip for now',
                            style: GoogleFonts.getFont(
                              'Inika',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              height: 1.4,
                              color: Color(0xFFA49E9E),
                            ),
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
