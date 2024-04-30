import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeToArrive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Stack(
        children: [
          Positioned(
            left: -18,
            right: -18,
            top: -41,
            bottom: -29,
            child: SizedBox(
              width: 375,
              height: 812,
              child: SvgPicture.asset(
                'assets/vectors/vector_314_x2.svg',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(18, 41, 18, 29),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(253.7, 0, 0, 103),
                  child: Text(
                    'Skip',
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xFFD7D7D7),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(8, 0, 0, 19),
                  child: SizedBox(
                    width: 277,
                    height: 294,
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                          'assets/images/ellipse_1.jpeg.jpeg',
                        ),
                        Positioned.fill(
                          child: SvgPicture.asset(
                            'assets/vectors/ellipse_13_x2.svg',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(21, 0, 0, 208),
                  child: Text(
                    'time to arrive',
                    style: GoogleFonts.getFont(
                      'Inika',
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      height: 1.3,
                      color: Color(0xFF121111),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 25, 0, 15),
                      child: SizedBox(
                        width: 76,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0x36FF0000),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Container(
                                  width: 10,
                                  height: 10,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0x36FF0000),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Container(
                                  width: 10,
                                  height: 10,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFFF0000),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Container(
                                  width: 10,
                                  height: 10,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0x36FF0000),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Container(
                                width: 10,
                                height: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFF0000),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Container(
                        width: 138,
                        padding: EdgeInsets.fromLTRB(0, 11, 2.1, 16),
                        child: Text(
                          'NEXT',
                          style: GoogleFonts.getFont(
                            'Inika',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            letterSpacing: -0.4,
                            color: Color(0xFFFFFEFE),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
