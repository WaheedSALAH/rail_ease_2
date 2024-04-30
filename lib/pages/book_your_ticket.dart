import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BookYourTicket extends StatelessWidget {
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
            right: -16,
            top: -170,
            bottom: -29,
            child: SizedBox(
              width: 375,
              height: 812,
              child: SvgPicture.asset(
                'assets/vectors/vector_214_x2.svg',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(18, 170, 16, 29),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(6, 0, 0, 20),
                  child: SizedBox(
                    width: 277,
                    height: 294,
                    child: SvgPicture.asset(
                      'assets/images/ellipse_11.jpeg.jpeg',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(35, 0, 0, 213),
                  child: Text(
                    'book Your Ticket',
                    style: GoogleFonts.getFont(
                      'Inika',
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
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
                                  color: Color(0x2BFF0000),
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
                                  color: Color(0x2BFF0000),
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
                                  color: Color(0x2BFF0000),
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
                                color: Color(0xFFFF0000),
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
                        width: 175,
                        padding: EdgeInsets.fromLTRB(3.2, 9, 0, 15),
                        child: Text(
                          'Get Started',
                          style: GoogleFonts.getFont(
                            'Inika',
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            letterSpacing: -0.4,
                            color: Color(0xFFFFFFFF),
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
