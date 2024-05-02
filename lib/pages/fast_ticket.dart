import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FastTicket extends StatelessWidget {
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
                'assets/vectors/vector_62_x2.svg',
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
                  margin: EdgeInsets.fromLTRB(253.7, 0, 0, 102),
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
                  margin: EdgeInsets.fromLTRB(8, 0, 0, 20),
                  child: SizedBox(
                    width: 277,
                    height: 294,
                    child: SvgPicture.asset(
                      'assets/images/ellipse_12.jpeg',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 167),
                  child: Text(
                    'fast ticket read qr-code',
                    textAlign: TextAlign.center,
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
                                  color: Color(0x26FF0000),
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
                              margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0x26FF0000),
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
                                color: Color(0x26FF0000),
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
                    GestureDetector(
                      onTap: () {
                        // Add action for NEXT button
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFF0000),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Container(
                          width: 138,
                          padding: EdgeInsets.fromLTRB(0, 11, 2.1, 16),
                          alignment: Alignment.center,
                          child: Text(
                            'NEXT',
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
