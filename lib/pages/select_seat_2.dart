import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectSeat2 extends StatelessWidget {
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
                        'assets/vectors/back_13_x2.svg',
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
                padding: EdgeInsets.fromLTRB(24, 16, 33.1, 13.6),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Text(
                              '09:30 AM',
                              style: GoogleFonts.getFont(
                                'Inika',
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Color(0xDEFF0000),
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
                              '12:30 PM',
                              style: GoogleFonts.getFont(
                                'Inika',
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Color(0xE8EC0A0A),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 36.2, 0),
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
                                      color: Color(0xFFFF0707),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0x14FF3333),
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
                                          'assets/vectors/ic_clock_x2.svg',
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
                                                'assets/vectors/vector_64_x2.svg',
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
                                                'assets/vectors/vector_236_x2.svg',
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
                                                'assets/vectors/vector_38_x2.svg',
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
                                                          'assets/vectors/vector_81_x2.svg',
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
                                                          'assets/vectors/vector_200_x2.svg',
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
                                                          'assets/vectors/vector_221_x2.svg',
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
                                                          'assets/vectors/vector_295_x2.svg',
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
                                                          'assets/vectors/vector_180_x2.svg',
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
                                                          'assets/vectors/vector_211_x2.svg',
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
                                                      'assets/vectors/vector_281_x2.svg',
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
                                                      'assets/vectors/vector_19_x2.svg',
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
                                                      'assets/vectors/vector_105_x2.svg',
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
                                                      'assets/vectors/vector_182_x2.svg',
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
                                                      'assets/vectors/vector_125_x2.svg',
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
                                                      'assets/vectors/vector_111_x2.svg',
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
                                                      'assets/vectors/vector_254_x2.svg',
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
                                                      'assets/vectors/vector_197_x2.svg',
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
                                                      'assets/vectors/vector_181_x2.svg',
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
                                                      'assets/vectors/vector_323_x2.svg',
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
                                                      'assets/vectors/vector_95_x2.svg',
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
                                                      'assets/vectors/vector_121_x2.svg',
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
                                                      'assets/vectors/vector_108_x2.svg',
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
                                                      'assets/vectors/vector_118_x2.svg',
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
                                                      'assets/vectors/vector_287_x2.svg',
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
                                                      'assets/vectors/vector_37_x2.svg',
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
                                                      'assets/vectors/vector_63_x2.svg',
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
                                                      'assets/vectors/vector_253_x2.svg',
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
                                                      'assets/vectors/vector_77_x2.svg',
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
                                                      'assets/vectors/vector_36_x2.svg',
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
                                                      'assets/vectors/vector_190_x2.svg',
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
                                                      'assets/vectors/vector_39_x2.svg',
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
                                                      'assets/vectors/vector_208_x2.svg',
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
                                                      'assets/vectors/vector_227_x2.svg',
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
                                                      'assets/vectors/vector_284_x2.svg',
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
                                                      'assets/vectors/vector_177_x2.svg',
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
                                                      'assets/vectors/vector_139_x2.svg',
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
                                                      'assets/vectors/vector_186_x2.svg',
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
                                                      'assets/vectors/vector_300_x2.svg',
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
                                                      'assets/vectors/vector_44_x2.svg',
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
                                                      'assets/vectors/vector_106_x2.svg',
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
                                                      'assets/vectors/vector_23_x2.svg',
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
                                                      'assets/vectors/vector_141_x2.svg',
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
                                                      'assets/vectors/vector_244_x2.svg',
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
                                                      'assets/vectors/vector_175_x2.svg',
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
                                                      'assets/vectors/vector_57_x2.svg',
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
                                                      'assets/vectors/vector_172_x2.svg',
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
                                                      'assets/vectors/vector_150_x2.svg',
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
                                                      'assets/vectors/vector_97_x2.svg',
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
                                                      'assets/vectors/vector_223_x2.svg',
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
                                                      'assets/vectors/vector_324_x2.svg',
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
                                                      'assets/vectors/vector_276_x2.svg',
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
                                                      'assets/vectors/vector_219_x2.svg',
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
                                                      'assets/vectors/vector_179_x2.svg',
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
                                                      'assets/vectors/vector_33_x2.svg',
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
                                                      'assets/vectors/vector_94_x2.svg',
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
                                                      'assets/vectors/vector_32_x2.svg',
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
                                                      'assets/vectors/vector_168_x2.svg',
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
                                                      'assets/vectors/vector_220_x2.svg',
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
                                                      'assets/vectors/vector_235_x2.svg',
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
                                                      'assets/vectors/vector_266_x2.svg',
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
                                                      'assets/vectors/vector_25_x2.svg',
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
                                                      'assets/vectors/vector_131_x2.svg',
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
                                                      'assets/vectors/vector_203_x2.svg',
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
                                                    'assets/vectors/vector_251_x2.svg',
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
                                                    'assets/vectors/vector_13_x2.svg',
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
                                                    'assets/vectors/vector_130_x2.svg',
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
                                                    'assets/vectors/vector_73_x2.svg',
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
                                                    'assets/vectors/vector_205_x2.svg',
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
                                                    'assets/vectors/vector_22_x2.svg',
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
                  'assets/vectors/line_7_x2.svg',
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
                            color: Color(0xFFFAFAFA),
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
