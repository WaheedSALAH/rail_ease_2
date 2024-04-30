import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgramFeatures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF866E6E),
      ),
      child: Stack(
        children: [
          Positioned(
            left: -0.5,
            right: 0.5,
            top: 0,
            bottom: 0,
            child: SizedBox(
              width: 375,
              height: 812,
              child: SvgPicture.asset(
                'assets/vectors/vector_10_x2.svg',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 41, 0, 29),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(253.7, 0, 0, 34),
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
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 41),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      width: 328,
                      height: 356,
                      child: SvgPicture.asset(
                        'assets/vectors/fxemojimountainrailway_x2.svg',
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(18.1, 0, 0, 5),
                  child: Text(
                    'program features',
                    style: GoogleFonts.getFont(
                      'Inika',
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      height: 1.3,
                      color: Color(0xFF2B2727),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(25, 0, 0, 134),
                  child: Text(
                    'Try this smart app for your next train booking ticket',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Inika',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      height: 1.7,
                      color: Color(0xA30D0D0D),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(18, 0, 18, 0),
                  child: Row(
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
                                    color: Color(0x70F70C0C),
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
                                    color: Color(0x70F70C0C),
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
                                  color: Color(0x70F70C0C),
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
                          color: Color(0xFFFF0202),
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
                              color: Color(0xFFFFFFFF),
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
        ],
      ),
    );
  }
}
