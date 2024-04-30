import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectSeat4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFD4D4D4),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(6, 20, 0, 11),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 96.2, 10.1),
              child: SizedBox(
                width: 208.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 33.5,
                      height: 32.9,
                      child: SvgPicture.asset(
                        'assets/vectors/back_7_x2.svg',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5.9),
                      child: Text(
                        '    Select  seat',
                        style: GoogleFonts.getFont(
                          'Inika',
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          height: 0.9,
                          letterSpacing: -0.4,
                          color: Color(0xFFFF0000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 8, 11),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                color: Color(0xC9FFFFFF),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x40000000),
                    offset: Offset(0, 4),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(24, 16, 0, 13.6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(8, 0, 8, 3),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 288.7,
                          child: Stack(
                            children: [
                              SizedBox(
                                width: 288.7,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 1, 10, 2),
                                      child: SizedBox(
                                        width: 125,
                                        child: Text(
                                          'cairo',
                                          style: GoogleFonts.getFont(
                                            'Inika',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            color: Color(0xFF0D0D0D),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0.1),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'assets/images/image_2.png',
                                            ),
                                          ),
                                        ),
                                        child: Container(
                                          width: 19,
                                          height: 22.9,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                      child: Text(
                                        'zagazig',
                                        style: GoogleFonts.getFont(
                                          'Inika',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          color: Color(0xFF0D0D0D),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 9,
                                child: SizedBox(
                                  width: 99,
                                  height: 4.8,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 4.8,
                                        height: 4.8,
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 2.4, 0, 1.6),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xEBC3C3C3),
                                          ),
                                          child: Container(
                                            width: 89.5,
                                            height: 0.8,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFF0D0D0D),
                                          borderRadius:
                                              BorderRadius.circular(2.4),
                                        ),
                                        child: Container(
                                          width: 4.8,
                                          height: 4.8,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 300.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                child: Text(
                                  '05:00 AM',
                                  style: GoogleFonts.getFont(
                                    'Inika',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: Color(0xDEF60D0D),
                                  ),
                                ),
                              ),
                              Text(
                                ' 2h 40m __ 4 stops',
                                style: GoogleFonts.getFont(
                                  'Prompt',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  color: Color(0xFF0D0D0D),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 2, 0, 8),
                                child: Text(
                                  '8:00 PM',
                                  style: GoogleFonts.getFont(
                                    'Inika',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: Color(0xE8F70C0C),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 32.8, 0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          width: 224.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 8, 4.4),
                                child: SizedBox(
                                  width: 161.4,
                                  child: Text(
                                    ' Price :112 LE',
                                    style: GoogleFonts.getFont(
                                      'Inika',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      height: 1.2,
                                      color: Color(0xFFFB0000),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0x14FF6666),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(8, 4, 8.4, 6.4),
                                  child: Text(
                                    'Russian',
                                    style: GoogleFonts.getFont(
                                      'Prompt',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11,
                                      height: 0.9,
                                      letterSpacing: -0.2,
                                      color: Color(0xFF0D0D0D),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 0, 26, 11.8),
              decoration: BoxDecoration(
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
                padding: EdgeInsets.fromLTRB(11, 10, 11, 19),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(18, 0, 20, 1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 19),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFC6C6C6),
                                borderRadius: BorderRadius.circular(1.6),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(9.5, 10, 0, 11.1),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 1.1, 0, 0),
                                      child: SizedBox(
                                        width: 15.8,
                                        height: 15.8,
                                        child: SvgPicture.asset(
                                          'assets/vectors/ic_clock_3_x2.svg',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 1.9),
                                      child: RichText(
                                        text: TextSpan(
                                          style: GoogleFonts.getFont(
                                            'Cabin',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 11.1,
                                            height: 1.6,
                                            color: Color(0xFF0D0D0D),
                                          ),
                                          children: [
                                            TextSpan(
                                              text:
                                                  'The remaining time of order ',
                                              style: GoogleFonts.getFont(
                                                'Inika',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 11.1,
                                                height: 1.3,
                                                color: Color(0xFF000000),
                                              ),
                                            ),
                                            TextSpan(
                                              text: '00:07:20',
                                              style: GoogleFonts.getFont(
                                                'Inika',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 11.1,
                                                height: 1.3,
                                                color: Color(0xFF000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0.9, 0, 0.9, 20),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: SizedBox(
                                width: 247.7,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 3.1, 10.5, 2.6),
                                            width: 13.9,
                                            height: 11.4,
                                            child: SizedBox(
                                              width: 13.9,
                                              height: 11.4,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_232_x2.svg',
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Available',
                                            style: GoogleFonts.getFont(
                                              'Inika',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 11.1,
                                              height: 1.6,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 3.1, 10.5, 2.6),
                                            width: 13.9,
                                            height: 11.4,
                                            child: SizedBox(
                                              width: 13.9,
                                              height: 11.4,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_285_x2.svg',
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Selected',
                                            style: GoogleFonts.getFont(
                                              'Inika',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 11.1,
                                              height: 1.6,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 3.1, 10.9, 2.6),
                                            width: 13.9,
                                            height: 11.4,
                                            child: SizedBox(
                                              width: 13.9,
                                              height: 11.4,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_86_x2.svg',
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Filled',
                                            style: GoogleFonts.getFont(
                                              'Inika',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 11.1,
                                              height: 1.6,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 19),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                                        child: SizedBox(
                                          width: 80,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    3.8, 0, 4.7, 8.7),
                                                child: SizedBox(
                                                  width: 71.6,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 0, 9.5, 0),
                                                        child: SizedBox(
                                                          width: 22.8,
                                                          child: Text(
                                                            'A',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Inika',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 12.7,
                                                              height: 1.5,
                                                              color: Color(
                                                                  0xFF000000),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 0, 0, 0),
                                                        child: Text(
                                                          'B',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Inika',
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 12.7,
                                                            height: 1.5,
                                                            color: Color(
                                                                0xFF000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 0, 0, 0),
                                                        child: Text(
                                                          'C',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Inika',
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 12.7,
                                                            height: 1.5,
                                                            color: Color(
                                                                0xFF000000),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 80,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 15, 0),
                                                      width: 16.6,
                                                      height: 13.7,
                                                      child: SizedBox(
                                                        width: 16.6,
                                                        height: 13.7,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_127_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 15, 0),
                                                      width: 16.6,
                                                      height: 13.7,
                                                      child: SizedBox(
                                                        width: 16.6,
                                                        height: 13.7,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_11_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 0, 0),
                                                      width: 16.6,
                                                      height: 13.7,
                                                      child: SizedBox(
                                                        width: 16.6,
                                                        height: 13.7,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_171_x2.svg',
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
                                        margin:
                                            EdgeInsets.fromLTRB(0, 26.3, 0, 0),
                                        child: Text(
                                          '1',
                                          style: GoogleFonts.getFont(
                                            'Inika',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 11.1,
                                            height: 1.6,
                                            color: Color(0xFF8C8D89),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                                        child: SizedBox(
                                          width: 80,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    4.2, 0, 4.9, 8.7),
                                                child: SizedBox(
                                                  width: 70.9,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 0, 9.5, 0),
                                                        child: SizedBox(
                                                          width: 22.6,
                                                          child: Text(
                                                            'D',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Inika',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 12.7,
                                                              height: 1.5,
                                                              color: Color(
                                                                  0xFF000000),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 0, 0, 0),
                                                        child: Text(
                                                          'E',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Inika',
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 12.7,
                                                            height: 1.5,
                                                            color: Color(
                                                                0xFF000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 0, 0, 0),
                                                        child: Text(
                                                          'F',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Inika',
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 12.7,
                                                            height: 1.5,
                                                            color: Color(
                                                                0xFF000000),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 80,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 0, 0),
                                                      width: 16.6,
                                                      height: 13.7,
                                                      child: SizedBox(
                                                        width: 16.6,
                                                        height: 13.7,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_66_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 0, 0),
                                                      width: 16.6,
                                                      height: 13.7,
                                                      child: SizedBox(
                                                        width: 16.6,
                                                        height: 13.7,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_202_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 0, 0),
                                                      width: 16.6,
                                                      height: 13.7,
                                                      child: SizedBox(
                                                        width: 16.6,
                                                        height: 13.7,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_280_x2.svg',
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
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 19),
                                  child: SizedBox(
                                    width: 218.5,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 1.4, 0, 2),
                                          child: SizedBox(
                                            width: 80,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_6_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_149_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_67_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '2',
                                          style: GoogleFonts.getFont(
                                            'Inika',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 11.1,
                                            height: 1.6,
                                            color: Color(0xFF8C8D89),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 1.4, 0, 2),
                                          child: SizedBox(
                                            width: 80,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_325_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_188_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_160_x2.svg',
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
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 19),
                                  child: SizedBox(
                                    width: 218.5,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 1.4, 0, 2),
                                          child: SizedBox(
                                            width: 80,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_212_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_135_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_321_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '3',
                                          style: GoogleFonts.getFont(
                                            'Inika',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 11.1,
                                            height: 1.6,
                                            color: Color(0xFF8C8D89),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 1.4, 0, 2),
                                          child: SizedBox(
                                            width: 80,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_9_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_196_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_217_x2.svg',
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
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 19),
                                  child: SizedBox(
                                    width: 218.5,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 1.4, 0, 2),
                                          child: SizedBox(
                                            width: 80,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_279_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_210_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_293_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '4',
                                          style: GoogleFonts.getFont(
                                            'Inika',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 11.1,
                                            height: 1.6,
                                            color: Color(0xFF8C8D89),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 1.4, 0, 2),
                                          child: SizedBox(
                                            width: 80,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_55_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_48_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_261_x2.svg',
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
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 19),
                                  child: SizedBox(
                                    width: 218.5,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 1.4, 0, 2),
                                          child: SizedBox(
                                            width: 80,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_68_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_72_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_256_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '5',
                                          style: GoogleFonts.getFont(
                                            'Inika',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 11.1,
                                            height: 1.6,
                                            color: Color(0xFF8C8D89),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 1.4, 0, 2),
                                          child: SizedBox(
                                            width: 80,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_123_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_27_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_89_x2.svg',
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
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 19),
                                  child: SizedBox(
                                    width: 218.5,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 1.4, 0, 2),
                                          child: SizedBox(
                                            width: 80,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_239_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_17_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_54_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '6',
                                          style: GoogleFonts.getFont(
                                            'Inika',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 11.1,
                                            height: 1.6,
                                            color: Color(0xFF8C8D89),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 1.4, 0, 2),
                                          child: SizedBox(
                                            width: 80,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_320_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_260_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_76_x2.svg',
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
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 19),
                                  child: SizedBox(
                                    width: 218.5,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 1.4, 0, 2),
                                          child: SizedBox(
                                            width: 80,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_252_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_319_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_12_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '7',
                                          style: GoogleFonts.getFont(
                                            'Inika',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 11.1,
                                            height: 1.6,
                                            color: Color(0xFF8C8D89),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 1.4, 0, 2),
                                          child: SizedBox(
                                            width: 80,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_47_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_233_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_250_x2.svg',
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
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 19),
                                  child: SizedBox(
                                    width: 218.5,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 1.4, 0, 2),
                                          child: SizedBox(
                                            width: 80,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_258_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_98_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_273_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '8',
                                          style: GoogleFonts.getFont(
                                            'Inika',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 11.1,
                                            height: 1.6,
                                            color: Color(0xFF8C8D89),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 1.4, 0, 2),
                                          child: SizedBox(
                                            width: 80,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_155_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_224_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_264_x2.svg',
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
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 19),
                                  child: SizedBox(
                                    width: 218.5,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 1.4, 0, 2),
                                          child: SizedBox(
                                            width: 80,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_148_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_124_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_307_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '9',
                                          style: GoogleFonts.getFont(
                                            'Inika',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 11.1,
                                            height: 1.6,
                                            color: Color(0xFF8C8D89),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 1.4, 0, 2),
                                          child: SizedBox(
                                            width: 80,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_268_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_146_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_133_x2.svg',
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
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 19),
                                  child: SizedBox(
                                    width: 218.5,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 1.4, 0, 2),
                                          child: SizedBox(
                                            width: 80,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_312_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_222_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_74_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '10',
                                          style: GoogleFonts.getFont(
                                            'Inika',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 11.1,
                                            height: 1.6,
                                            color: Color(0xFF8C8D89),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 1.4, 0, 2),
                                          child: SizedBox(
                                            width: 80,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_226_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 15, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_26_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SizedBox(
                                                    width: 16.6,
                                                    height: 13.7,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_112_x2.svg',
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
                                ),
                                SizedBox(
                                  width: 218.5,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 1.4, 0, 2),
                                        child: SizedBox(
                                          width: 80,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 15, 0),
                                                width: 16.6,
                                                height: 13.7,
                                                child: SizedBox(
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/vector_137_x2.svg',
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 15, 0),
                                                width: 16.6,
                                                height: 13.7,
                                                child: SizedBox(
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/vector_152_x2.svg',
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 0, 0),
                                                width: 16.6,
                                                height: 13.7,
                                                child: SizedBox(
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/vector_116_x2.svg',
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '11',
                                        style: GoogleFonts.getFont(
                                          'Inika',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11.1,
                                          height: 1.6,
                                          color: Color(0xFF8C8D89),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 1.4, 0, 2),
                                        child: SizedBox(
                                          width: 80,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 15, 0),
                                                width: 16.6,
                                                height: 13.7,
                                                child: SizedBox(
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/vector_126_x2.svg',
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 15, 0),
                                                width: 16.6,
                                                height: 13.7,
                                                child: SizedBox(
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/vector_154_x2.svg',
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 0, 0),
                                                width: 16.6,
                                                height: 13.7,
                                                child: SizedBox(
                                                  width: 16.6,
                                                  height: 13.7,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/vector_143_x2.svg',
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(12.6, 0, 0, 12.7),
              child: SizedBox(
                width: 356.4,
                height: 5.1,
                child: SvgPicture.asset(
                  'assets/vectors/line_73_x2.svg',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(27.2, 0, 26, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 1, 35.2, 7.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 6.5),
                            child: Text(
                              'Total Price :112 LE',
                              style: GoogleFonts.getFont(
                                'Inika',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                height: 1.1,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10.9, 0, 10.9, 0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Your seat : 8D',
                                style: GoogleFonts.getFont(
                                  'Inika',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  height: 1.2,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
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
                        padding: EdgeInsets.fromLTRB(5.7, 14, 0, 15),
                        child: Text(
                          'Continue',
                          style: GoogleFonts.getFont(
                            'Inika',
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            letterSpacing: -0.3,
                            color: Color(0xFFFFFFFF),
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
    );
  }
}
