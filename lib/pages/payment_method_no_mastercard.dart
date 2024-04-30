import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class PaymentMethodNoMastercard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(23, 42, 18, 225),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 32),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 191.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 12.1),
                        child: SizedBox(
                          width: 33.5,
                          height: 32.9,
                          child: SvgPicture.asset(
                            'assets/vectors/back_12_x2.svg',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 23, 0, 0),
                        child: Text(
                          'Payment',
                          style: GoogleFonts.getFont(
                            'Inika',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            height: 1.2,
                            color: Color(0xFF302727),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 6, 24),
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 7, 15, 0),
                      child: SizedBox(
                        width: 85,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0x36777777),
                                  borderRadius: BorderRadius.circular(9.6),
                                ),
                                child: Container(
                                  width: 85,
                                  height: 72,
                                  padding:
                                      EdgeInsets.fromLTRB(0, 30.4, 0.3, 28.3),
                                  child: Container(
                                    width: 40.7,
                                    height: 13.3,
                                    child: SizedBox(
                                      width: 40.7,
                                      height: 13.3,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_298_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0.6, 0),
                              child: Text(
                                'Visa',
                                style: GoogleFonts.getFont(
                                  'Inika',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xFF0E0E0E),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 7, 1, 0),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                                child: SizedBox(
                                  width: 85,
                                  height: 72,
                                  child: SvgPicture.asset(
                                    'assets/vectors/group_2429_x2.svg',
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 0, 5.8, 0),
                                child: Text(
                                  'Mastercard',
                                  style: GoogleFonts.getFont(
                                    'Inika',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xFF08213C),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFFF5555),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Container(
                                width: 24,
                                height: 24,
                                padding: EdgeInsets.fromLTRB(8, 9.6, 7, 8.1),
                                child: Container(
                                  width: 9,
                                  height: 6.2,
                                  child: SizedBox(
                                    width: 9,
                                    height: 6.2,
                                    child: SvgPicture.asset(
                                      'assets/vectors/vector_109_x2.svg',
                                    ),
                                  ),
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
            ),
            Container(
              margin: EdgeInsets.fromLTRB(1, 0, 6, 24),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF7F8F9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 29, 0, 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(30.4, 0, 0, 13),
                        child: SizedBox(
                          width: 197,
                          height: 117,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 3.7, 0, 0),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Opacity(
                                  opacity: 0.25,
                                  child: Container(
                                    width: 168.7,
                                    height: 113.3,
                                    child: Opacity(
                                      opacity: 0.75,
                                      child: ImageFiltered(
                                        imageFilter: ImageFilter.blur(
                                          sigmaX: 67.9570465088,
                                          sigmaY: 67.9570465088,
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFF0E273E),
                                            borderRadius:
                                                BorderRadius.circular(40),
                                          ),
                                          child: Container(
                                            width: 168.7,
                                            height: 113.3,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: SizedBox(
                                    width: 165.2,
                                    height: 106.2,
                                    child: SvgPicture.asset(
                                      'assets/vectors/clipped_x2.svg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 10.4, 4),
                        child: Text(
                          'No master card added',
                          style: GoogleFonts.getFont(
                            'Inika',
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xFF32343E),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.7,
                        child: Text(
                          'You can add a mastercard and save it for later',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Inika',
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            height: 1.6,
                            letterSpacing: 0.5,
                            color: Color(0xFF2D2D2D),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(7, 0, 0, 0),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                        width: 327,
                        height: 62,
                        child: SvgPicture.asset(
                          'assets/vectors/rectangle_1344_x2.svg',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 327,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 23, 0, 21),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 1.9, 10.5, 1.9),
                            child: Transform(
                              transform: Matrix4.rotationZ(
                                  -pi / 4), // -45 degrees in radians
                              child: SizedBox(
                                width: 14.1,
                                height: 14.1,
                                child: SvgPicture.asset(
                                  'assets/vectors/close_x2.svg',
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'ADD NEW',
                            style: GoogleFonts.getFont(
                              'Inika',
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
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
          ],
        ),
      ),
    );
  }
}
