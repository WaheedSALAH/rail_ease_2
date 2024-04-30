import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectYourTrain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0x33FFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
              ),
              child: SizedBox(
                width: double.infinity,
                height: 812,
                child: Container(
                  padding: EdgeInsets.fromLTRB(12, 27, 6, 0),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: -1707,
                        bottom: -626,
                        child: Opacity(
                          opacity: 1,
                          child: Container(
                            width: 2998,
                            height: 1541,
                            decoration: BoxDecoration(
                              backgroundBlendMode: BlendMode.colorDodge,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(15, 0, 15, 22),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  width: 261.5,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 0, 0.1),
                                        child: SizedBox(
                                          width: 33.5,
                                          height: 32.9,
                                          child: SvgPicture.asset(
                                            'assets/vectors/back_1_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 11, 0, 0),
                                        child: Text(
                                          'Select Your train',
                                          style: GoogleFonts.getFont(
                                            'Inika',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 24,
                                            height: 0.9,
                                            letterSpacing: -0.4,
                                            color: Color(0xFFF90909),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/nasa_vh_sz_50_aa_fas_unsplash_1.jpeg',
                                  ),
                                ),
                              ),
                              child: Container(
                                width: 357,
                                height: 175,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -22,
                        top: 48,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            width: 391,
                            height: 7,
                            child: SvgPicture.asset(
                              'assets/vectors/rectangle_292_x2.svg',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: -15,
              bottom: -46,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 15,
                    sigmaY: 15,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0x66FFFFFF)),
                      color: Color(0x1AFFFFFF),
                    ),
                    child: Container(
                      width: 393,
                      height: 582,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: -21,
              bottom: -105,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0x42B6ADAD),
                ),
                child: SizedBox(
                  width: 401,
                  height: 667,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 24, 28, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 10.3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 17, 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xCCFFFFFF),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Container(
                                      padding:
                                          EdgeInsets.fromLTRB(11.5, 11, 0, 12),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 1, 0, 0),
                                            child: Text(
                                              '􀉉',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17,
                                                color: Color(0xFF0D0D0D),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 0, 0, 1),
                                            child: Text(
                                              'Dec 16th 2022',
                                              style: GoogleFonts.getFont(
                                                'Inika',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color: Color(0xFF0D0D0D),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xCCFFFFFF),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Container(
                                    padding:
                                        EdgeInsets.fromLTRB(12.5, 11, 0, 12),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 1, 0, 0),
                                          child: Text(
                                            '􀉪',
                                            style: GoogleFonts.getFont(
                                              'Roboto Condensed',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17,
                                              color: Color(0xFF0D0D0D),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 1),
                                          child: Text(
                                            '1 passenger',
                                            style: GoogleFonts.getFont(
                                              'Inika',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Color(0xFF0D0D0D),
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
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 11, 13.7),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFFF0000),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0.5, 12.6, 0, 9.4),
                              child: Text(
                                'Economy',
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
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 2, 14),
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
                            padding: EdgeInsets.fromLTRB(24, 16, 32.7, 10.8),
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 1, 10, 2),
                                                  child: SizedBox(
                                                    width: 125,
                                                    child: Text(
                                                      'cairo',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Inika',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xFF0D0D0D),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0.1),
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
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 3, 0, 0),
                                                  child: Text(
                                                    'zagazig',
                                                    style: GoogleFonts.getFont(
                                                      'Inika',
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 4.8,
                                                    height: 4.8,
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 2.4, 0, 1.6),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xEBC3C3C3),
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
                                                          BorderRadius.circular(
                                                              2.4),
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
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: SizedBox(
                                      width: 300.4,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 0, 0, 6),
                                            child: Text(
                                              '10:40 AM',
                                              style: GoogleFonts.getFont(
                                                'Inika',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15,
                                                color: Color(0xDEFF3838),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            ' 2h 40m __ 4 stops',
                                            style: GoogleFonts.getFont(
                                              'Inika',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: Color(0xFF0D0D0D),
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 2, 0, 4),
                                            child: Text(
                                              '8:00 PM',
                                              style: GoogleFonts.getFont(
                                                'Inika',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15,
                                                color: Color(0xE8FF3636),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    width: 282.6,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 9, 8, 7.2),
                                          child: SizedBox(
                                            width: 161.4,
                                            child: Text(
                                              ' Price :112 LE',
                                              style: GoogleFonts.getFont(
                                                'Inika',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                height: 1.2,
                                                color: Color(0xFFFF4343),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 9, 0, 2.8),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0x14FF3333),
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  8, 4, 8.5, 6.4),
                                              child: Text(
                                                'Russian',
                                                style: GoogleFonts.getFont(
                                                  'Inika',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 11,
                                                  height: 0.9,
                                                  letterSpacing: -0.2,
                                                  color: Color(0xFF0D0D0D),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 24.5,
                                          height: 32.2,
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(
                                                4.1, 13.8, 4.1, 0),
                                            child: Stack(
                                              clipBehavior: Clip.none,
                                              children: [
                                                ImageFiltered(
                                                  imageFilter: ImageFilter.blur(
                                                    sigmaX: 8,
                                                    sigmaY: 8,
                                                  ),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFFF3232),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    child: Container(
                                                      width: 16.4,
                                                      height: 18.4,
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: -13.8,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFFF3232),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    child: Stack(
                                                      children: [
                                                        Positioned(
                                                          top: -8.4,
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFFF3232),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            child: Container(
                                                              width: 24.5,
                                                              height: 27.6,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 24.5,
                                                          height: 27.6,
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  7.5,
                                                                  8.4,
                                                                  7.5,
                                                                  8.4),
                                                          child: Container(
                                                            width: 9.5,
                                                            height: 10.7,
                                                            child: SizedBox(
                                                              width: 9.5,
                                                              height: 10.7,
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/vectors/group_13_x2.svg',
                                                              ),
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
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 2, 0),
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
                            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(32, 0, 32, 3),
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 1, 10, 2),
                                                  child: SizedBox(
                                                    width: 125,
                                                    child: Text(
                                                      'cairo',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Inika',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xFF0D0D0D),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0.1),
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
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 3, 0, 0),
                                                  child: Text(
                                                    'zagazig',
                                                    style: GoogleFonts.getFont(
                                                      'Inika',
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 4.8,
                                                    height: 4.8,
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 2.4, 0, 1.6),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xEBC3C3C3),
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
                                                          BorderRadius.circular(
                                                              2.4),
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
                                  margin: EdgeInsets.fromLTRB(24, 0, 33.1, 9),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                                        child: Text(
                                          '09:30 AM',
                                          style: GoogleFonts.getFont(
                                            'Inika',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            color: Color(0xDEFF3838),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        ' 2h 40m __ 4 stops',
                                        style: GoogleFonts.getFont(
                                          'Inika',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Color(0xFF0D0D0D),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 2, 0, 4),
                                        child: Text(
                                          '12:30 PM',
                                          style: GoogleFonts.getFont(
                                            'Inika',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                            color: Color(0xE8FF3636),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(32.7, 0, 32.7, 24.8),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: SizedBox(
                                      width: 282.6,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 9, 8, 7.2),
                                            child: SizedBox(
                                              width: 161.4,
                                              child: Text(
                                                ' Price :112 LE',
                                                style: GoogleFonts.getFont(
                                                  'Inika',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  height: 1.2,
                                                  color: Color(0xFFFF4343),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 9, 0, 2.8),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0x14FF3333),
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              child: Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    8, 4, 8.5, 6.4),
                                                child: Text(
                                                  'Russian',
                                                  style: GoogleFonts.getFont(
                                                    'Inika',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 11,
                                                    height: 0.9,
                                                    letterSpacing: -0.2,
                                                    color: Color(0xFF0D0D0D),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 24.5,
                                            height: 32.2,
                                            child: Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  4.1, 13.8, 4.1, 0),
                                              child: Stack(
                                                clipBehavior: Clip.none,
                                                children: [
                                                  ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                      sigmaX: 8,
                                                      sigmaY: 8,
                                                    ),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFFF3232),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Container(
                                                        width: 16.4,
                                                        height: 18.4,
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: -13.8,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFFF3232),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            top: -8.4,
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFFF3232),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                              ),
                                                              child: Container(
                                                                width: 24.5,
                                                                height: 27.6,
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 24.5,
                                                            height: 27.6,
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    7.5,
                                                                    8.4,
                                                                    7.5,
                                                                    8.4),
                                                            child: Container(
                                                              width: 9.5,
                                                              height: 10.7,
                                                              child: SizedBox(
                                                                width: 9.5,
                                                                height: 10.7,
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/vectors/group_20_x2.svg',
                                                                ),
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
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
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
                                    padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(32, 0, 32, 3),
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
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 1, 10, 2),
                                                          child: SizedBox(
                                                            width: 125,
                                                            child: Text(
                                                              'cairo',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Inika',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 15,
                                                                color: Color(
                                                                    0xFF0D0D0D),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 0, 0, 0.1),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image:
                                                                    AssetImage(
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
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 3, 0, 0),
                                                          child: Text(
                                                            'zagazig',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Inika',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 15,
                                                              color: Color(
                                                                  0xFF0D0D0D),
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
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width: 4.8,
                                                            height: 4.8,
                                                          ),
                                                          Container(
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0,
                                                                    2.4,
                                                                    0,
                                                                    1.6),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xEBC3C3C3),
                                                              ),
                                                              child: Container(
                                                                width: 89.5,
                                                                height: 0.8,
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFF0D0D0D),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          2.4),
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
                                          margin:
                                              EdgeInsets.fromLTRB(24, 0, 24, 5),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: SizedBox(
                                              width: 300.4,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 10),
                                                    child: Text(
                                                      '10:00 AM',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Inika',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xDEFF3838),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    ' 2h 40m __ 4 stops',
                                                    style: GoogleFonts.getFont(
                                                      'Prompt',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 10,
                                                      color: Color(0xFF0D0D0D),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 2, 0, 8),
                                                    child: Text(
                                                      '8:00 PM',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Inika',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 15,
                                                        color:
                                                            Color(0xE8FF3636),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              32.7, 0, 32.7, 24.8),
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: SizedBox(
                                              width: 282.6,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 9, 8, 7.2),
                                                    child: SizedBox(
                                                      width: 161.4,
                                                      child: Text(
                                                        ' Price :112 LE',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Inika',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 14,
                                                          height: 1.2,
                                                          color:
                                                              Color(0xFFFF4343),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 9, 0, 2.8),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0x14FF3333),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                8, 4, 8.5, 6.4),
                                                        child: Text(
                                                          'Russian',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Inika',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 11,
                                                            height: 0.9,
                                                            letterSpacing: -0.2,
                                                            color: Color(
                                                                0xFF0D0D0D),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 24.5,
                                                    height: 32.2,
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              4.1,
                                                              13.8,
                                                              4.1,
                                                              0),
                                                      child: Stack(
                                                        clipBehavior: Clip.none,
                                                        children: [
                                                          ImageFiltered(
                                                            imageFilter:
                                                                ImageFilter
                                                                    .blur(
                                                              sigmaX: 8,
                                                              sigmaY: 8,
                                                            ),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFFF3232),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                              ),
                                                              child: Container(
                                                                width: 16.4,
                                                                height: 18.4,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            top: -13.8,
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFFF3232),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                              ),
                                                              child: Stack(
                                                                children: [
                                                                  Positioned(
                                                                    top: -8.4,
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xFFFF3232),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8),
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            24.5,
                                                                        height:
                                                                            27.6,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 24.5,
                                                                    height:
                                                                        27.6,
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            7.5,
                                                                            8.4,
                                                                            7.5,
                                                                            8.4),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          9.5,
                                                                      height:
                                                                          10.7,
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            9.5,
                                                                        height:
                                                                            10.7,
                                                                        child: SvgPicture
                                                                            .asset(
                                                                          'assets/vectors/group_11_x2.svg',
                                                                        ),
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
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(21),
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
                                            padding: EdgeInsets.fromLTRB(
                                                24, 16, 32.7, 10.8),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      8, 0, 8, 3),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: SizedBox(
                                                      width: 288.7,
                                                      child: Stack(
                                                        children: [
                                                          SizedBox(
                                                            width: 288.7,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          1,
                                                                          10,
                                                                          2),
                                                                  child:
                                                                      SizedBox(
                                                                    width: 125,
                                                                    child: Text(
                                                                      'cairo',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Inika',
                                                                        fontWeight:
                                                                            FontWeight.w700,
                                                                        fontSize:
                                                                            15,
                                                                        color: Color(
                                                                            0xFF0D0D0D),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          0.1),
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      image:
                                                                          DecorationImage(
                                                                        fit: BoxFit
                                                                            .cover,
                                                                        image:
                                                                            AssetImage(
                                                                          'assets/images/image_2.png',
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      width: 19,
                                                                      height:
                                                                          22.9,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          3,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    'zagazig',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Inika',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      fontSize:
                                                                          15,
                                                                      color: Color(
                                                                          0xFF0D0D0D),
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
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                    width: 4.8,
                                                                    height: 4.8,
                                                                  ),
                                                                  Container(
                                                                    margin: EdgeInsets
                                                                        .fromLTRB(
                                                                            0,
                                                                            2.4,
                                                                            0,
                                                                            1.6),
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xEBC3C3C3),
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            89.5,
                                                                        height:
                                                                            0.8,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0xFF0D0D0D),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              2.4),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          4.8,
                                                                      height:
                                                                          4.8,
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
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 9),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: SizedBox(
                                                      width: 300.4,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0, 0, 0, 6),
                                                            child: Text(
                                                              '05:00 AM',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Inika',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 15,
                                                                color: Color(
                                                                    0xDEFF3838),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            ' 2h 40m __ 4 stops',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Inika',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 10,
                                                              color: Color(
                                                                  0xFF0D0D0D),
                                                            ),
                                                          ),
                                                          Container(
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0, 2, 0, 4),
                                                            child: Text(
                                                              '8:00 PM',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Inika',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 15,
                                                                color: Color(
                                                                    0xE8FF3636),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: SizedBox(
                                                    width: 282.6,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 9, 8, 7.2),
                                                          child: SizedBox(
                                                            width: 161.4,
                                                            child: Text(
                                                              ' Price :112 LE',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Inika',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize: 14,
                                                                height: 1.2,
                                                                color: Color(
                                                                    0xFFFF4343),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 9, 0, 2.8),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x14FF3333),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4),
                                                            ),
                                                            child: Container(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          8,
                                                                          4,
                                                                          8.5,
                                                                          6.4),
                                                              child: Text(
                                                                'Russian',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Inika',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 11,
                                                                  height: 0.9,
                                                                  letterSpacing:
                                                                      -0.2,
                                                                  color: Color(
                                                                      0xFF0D0D0D),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 24.5,
                                                          height: 32.2,
                                                          child: Container(
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    4.1,
                                                                    13.8,
                                                                    4.1,
                                                                    0),
                                                            child: Stack(
                                                              clipBehavior:
                                                                  Clip.none,
                                                              children: [
                                                                ImageFiltered(
                                                                  imageFilter:
                                                                      ImageFilter
                                                                          .blur(
                                                                    sigmaX: 8,
                                                                    sigmaY: 8,
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0xFFFF3232),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          16.4,
                                                                      height:
                                                                          18.4,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  top: -13.8,
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0xFFFF3232),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                    ),
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        Positioned(
                                                                          top:
                                                                              -8.4,
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0xFFFF3232),
                                                                              borderRadius: BorderRadius.circular(8),
                                                                            ),
                                                                            child:
                                                                                Container(
                                                                              width: 24.5,
                                                                              height: 27.6,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              24.5,
                                                                          height:
                                                                              27.6,
                                                                          padding: EdgeInsets.fromLTRB(
                                                                              7.5,
                                                                              8.4,
                                                                              7.5,
                                                                              8.4),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                9.5,
                                                                            height:
                                                                                10.7,
                                                                            child:
                                                                                SizedBox(
                                                                              width: 9.5,
                                                                              height: 10.7,
                                                                              child: SvgPicture.asset(
                                                                                'assets/vectors/group_4_x2.svg',
                                                                              ),
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
                                                      ],
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
                              ],
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
