import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Calendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 17.5,
            top: 333.5,
            child: SizedBox(
              width: 35.5,
              height: 8.4,
              child: SvgPicture.asset(
                'assets/vectors/vector_290_x2.svg',
              ),
            ),
          ),
          Positioned(
            right: 18.7,
            top: 344,
            child: SizedBox(
              width: 29.3,
              height: 1.7,
              child: SvgPicture.asset(
                'assets/vectors/vector_178_x2.svg',
              ),
            ),
          ),
          Positioned(
            right: 19.5,
            top: 341.1,
            child: SizedBox(
              width: 35.5,
              height: 3.2,
              child: SvgPicture.asset(
                'assets/vectors/vector_59_x2.svg',
              ),
            ),
          ),
          Positioned(
            right: 27,
            top: 385.9,
            child: SizedBox(
              width: 10,
              height: 11,
              child: SvgPicture.asset(
                'assets/vectors/ellipse_53_x2.svg',
              ),
            ),
          ),
          Positioned(
            left: 13,
            top: 74.7,
            child: SizedBox(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                'assets/vectors/group_23_x2.svg',
              ),
            ),
          ),
          Positioned(
            right: 105,
            top: 372.5,
            child: SizedBox(
              width: 42,
              height: 38,
              child: SvgPicture.asset(
                'assets/vectors/ellipse_83_x2.svg',
              ),
            ),
          ),
          Positioned(
            right: 113.2,
            top: 379.2,
            child: SizedBox(
              width: 24.8,
              height: 22.6,
              child: SvgPicture.asset(
                'assets/vectors/up_down_arrow_3_x2.svg',
              ),
            ),
          ),
          Positioned(
            right: 19,
            top: -2.9,
            child: SizedBox(
              width: 42,
              height: 40.9,
              child: SvgPicture.asset(
                'assets/vectors/group_412_x2.svg',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(16, 26.3, 16, 73.1),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 51),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 222.2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 30,
                                  height: 28,
                                  child: SizedBox(
                                    width: 30,
                                    height: 28,
                                    child: SvgPicture.asset(
                                      'assets/vectors/lisettings_2_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 1.9, 0, 2.1),
                                  child: Text(
                                    'Book your train',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Color(0xFFF60A0A),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(13.5, 0, 0, 22.8),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: 256.5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 3.9, 9.5, 0),
                                  child: SizedBox(
                                    width: 228.5,
                                    child: Text(
                                      'User Name',
                                      style: GoogleFonts.getFont(
                                        'Inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: Color(0xFF070707),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 6.3),
                                  width: 18.5,
                                  height: 16.6,
                                  child: SizedBox(
                                    width: 18.5,
                                    height: 16.6,
                                    child: SvgPicture.asset(
                                      'assets/vectors/sun_x2.svg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 10.8),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(33),
                            gradient: LinearGradient(
                              begin: Alignment(0, -1),
                              end: Alignment(0, 1),
                              colors: <Color>[
                                Color(0xFFD82020),
                                Color(0x1C882727)
                              ],
                              stops: <double>[0, 1],
                            ),
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(27, 21, 12.6, 37.3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    margin:
                                        EdgeInsets.fromLTRB(0, 37, 21.9, 13.7),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0, 0, 17.7, 32),
                                          child: Text(
                                            'STAY SAFE !',
                                            style: GoogleFonts.getFont(
                                              'Inika',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 24,
                                              color: Color(0xFFF5F5F5),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(11, 0, 0, 0),
                                          child: Text(
                                            'You Should Go Away From Any Traffics',
                                            style: GoogleFonts.getFont(
                                              'Inika',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 11,
                                              color: Color(0xFFFFFFFF),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 21, 0, 0),
                                  child: SizedBox(
                                    width: 124.4,
                                    height: 120.7,
                                    child: SvgPicture.asset(
                                      'assets/vectors/group_17_x2.svg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(24, 0, 24, 0.1),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'From',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(19, 0, 30, 9.7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 45, 13.2),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xFF666060)),
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xFFEFEFEF),
                                ),
                                child: Container(
                                  padding:
                                      EdgeInsets.fromLTRB(12, 10.5, 12, 9.5),
                                  child: Text(
                                    'Choose Depature from',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xFF575353),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 16.2, 0, 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFED1C24),
                                  ),
                                  child: Container(
                                    height: 35,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(21, 0, 29, 11.4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 46, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'To',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xFF040404)),
                                        borderRadius: BorderRadius.circular(6),
                                        color: Color(0x5ED7D7D7),
                                      ),
                                      child: Container(
                                        padding:
                                            EdgeInsets.fromLTRB(11, 10, 11, 9),
                                        child: Text(
                                          'Choose Arrival at',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Color(0xFF715B5B),
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
                                margin: EdgeInsets.fromLTRB(0, 8.6, 0, 16.4),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFED1C24),
                                  ),
                                  child: Container(
                                    height: 35,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(9, 0, 5.4, 30.4),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF736868),
                          ),
                          child: Container(
                            width: 328.6,
                            height: 1,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(13, 0, 4.7, 20.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 0.1, 13.2, 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF9F9F9),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(
                                        14.5, 10.4, 14.5, 9.3),
                                    child: Text(
                                      'Choose your Date',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xFF7D7B7B),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 0.1),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFFF0202),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Container(
                                  width: 41.3,
                                  height: 37.7,
                                  padding: EdgeInsets.fromLTRB(
                                      11.4, 10.4, 11.4, 10.4),
                                  child: Container(
                                    width: 18.6,
                                    height: 17,
                                    child: SizedBox(
                                      width: 18.6,
                                      height: 17,
                                      child: SvgPicture.asset(
                                        'assets/vectors/primary_4_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(9, 0, 5.4, 15.9),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF8E8989),
                          ),
                          child: Container(
                            width: 328.6,
                            height: 1,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(9, 0, 5.4, 46.7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10.3),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Adult (12+)',
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Opacity(
                                        opacity: 0.25,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            color: Color(0xFFFFFFFF),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x26000000),
                                                offset: Offset(0, 4),
                                                blurRadius: 4,
                                              ),
                                            ],
                                          ),
                                          child: Container(
                                            width: 28.9,
                                            height: 26.4,
                                            padding: EdgeInsets.fromLTRB(
                                                8.4, 13.2, 8.4, 11.2),
                                            child: Container(
                                              width: 12.1,
                                              height: 2,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF000000),
                                                ),
                                                child: Container(
                                                  width: 12.1,
                                                  height: 2,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF9F9F9),
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                              16.5, 3.8, 16.5, 4.6),
                                          child: Text(
                                            '1',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: Color(0xFFFF0202),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x26000000),
                                              offset: Offset(0, 4),
                                              blurRadius: 4,
                                            ),
                                          ],
                                        ),
                                        child: Container(
                                          width: 28.9,
                                          height: 26.4,
                                          padding: EdgeInsets.fromLTRB(
                                              8.4, 7.7, 8.4, 7.7),
                                          child: Container(
                                            width: 12.1,
                                            height: 11,
                                            child: SizedBox(
                                              width: 12.1,
                                              height: 11,
                                              child: SvgPicture.asset(
                                                'assets/vectors/primary_1_x2.svg',
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
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10.3),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Childs (2-12)',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Color(0xFFFFFFFF),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x26000000),
                                            offset: Offset(0, 4),
                                            blurRadius: 4,
                                          ),
                                        ],
                                      ),
                                      child: Container(
                                        width: 28.9,
                                        height: 26.4,
                                        padding: EdgeInsets.fromLTRB(
                                            8.4, 13.2, 8.4, 11.2),
                                        child: Container(
                                          width: 12.1,
                                          height: 2,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xFF000000),
                                            ),
                                            child: Container(
                                              width: 12.1,
                                              height: 2,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF9F9F9),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(
                                            10.3, 4.7, 16.1, 3.7),
                                        child: Text(
                                          ' 0',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Color(0xFF9B9B9B),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Color(0xFFFF0202),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x26000000),
                                            offset: Offset(0, 4),
                                            blurRadius: 4,
                                          ),
                                        ],
                                      ),
                                      child: Container(
                                        width: 28.9,
                                        height: 26.4,
                                        padding: EdgeInsets.fromLTRB(
                                            8.4, 7.7, 8.4, 7.7),
                                        child: Container(
                                          width: 12.1,
                                          height: 11,
                                          child: SizedBox(
                                            width: 12.1,
                                            height: 11,
                                            child: SvgPicture.asset(
                                              'assets/vectors/primary_11_x2.svg',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 9, 0),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFFF0000),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Container(
                              width: 242,
                              padding: EdgeInsets.fromLTRB(2.2, 8.8, 0, 7.2),
                              child: Text(
                                'Search train',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -18,
                  bottom: -73.1,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 35,
                        sigmaY: 35,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0x26000000),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: -8.2,
                              top: 211,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Container(
                                  width: 354,
                                  height: 445,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 375,
                              height: 812,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(16.2, 0, 27.8, 0),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                26.8, 0, 26.8, 22.8),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 12, 0),
                                                    child: SizedBox(
                                                      width: 45,
                                                      height: 44.3,
                                                      child: SvgPicture.asset(
                                                        'assets/vectors/close_1_x2.svg',
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 13.4, 0, 4.9),
                                                    child: Text(
                                                      'Select dates',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Inika',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 16,
                                                        height: 1.6,
                                                        color:
                                                            Color(0xFF000000),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                17.8, 0, 12.2, 20.5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0.8),
                                                  child: SizedBox(
                                                    width: 24,
                                                    height: 24.3,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/arrow_left_circle_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 2, 0, 0),
                                                  child: Text(
                                                    'July',
                                                    style: GoogleFonts.getFont(
                                                      'Inika',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 18,
                                                      letterSpacing: -0.3,
                                                      color: Color(0xFF000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0.8),
                                                  child: SizedBox(
                                                    width: 24,
                                                    height: 24.3,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/arrow_right_circle_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 0, 18.5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 9, 0),
                                                  child: SizedBox(
                                                    width: 41.1,
                                                    child: Text(
                                                      'Sun',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Inika',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 14,
                                                        letterSpacing: -0.3,
                                                        color:
                                                            Color(0xFF000000),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Mon',
                                                  style: GoogleFonts.getFont(
                                                    'Inika',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.3,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ),
                                                Text(
                                                  'Tue',
                                                  style: GoogleFonts.getFont(
                                                    'Inika',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.3,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ),
                                                Text(
                                                  'Wed',
                                                  style: GoogleFonts.getFont(
                                                    'Inika',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.3,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ),
                                                Text(
                                                  'Thu',
                                                  style: GoogleFonts.getFont(
                                                    'Inika',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.3,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ),
                                                Text(
                                                  'Fri',
                                                  style: GoogleFonts.getFont(
                                                    'Inika',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.3,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ),
                                                Text(
                                                  'Sat',
                                                  style: GoogleFonts.getFont(
                                                    'Inika',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.3,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                23.5, 0, 21.9, 19.2),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 9, 0),
                                                  child: SizedBox(
                                                    width: 36.6,
                                                    child: Text(
                                                      '27',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Inika',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 14,
                                                        letterSpacing: -0.3,
                                                        color:
                                                            Color(0x80000000),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  '28',
                                                  style: GoogleFonts.getFont(
                                                    'Inika',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.3,
                                                    color: Color(0x80000000),
                                                  ),
                                                ),
                                                Text(
                                                  '29',
                                                  style: GoogleFonts.getFont(
                                                    'Inika',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.3,
                                                    color: Color(0x80000000),
                                                  ),
                                                ),
                                                Text(
                                                  '30',
                                                  style: GoogleFonts.getFont(
                                                    'Inika',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.3,
                                                    color: Color(0x80000000),
                                                  ),
                                                ),
                                                Text(
                                                  '1',
                                                  style: GoogleFonts.getFont(
                                                    'Inika',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.3,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ),
                                                Text(
                                                  '2',
                                                  style: GoogleFonts.getFont(
                                                    'Inika',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.3,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ),
                                                Text(
                                                  '3',
                                                  style: GoogleFonts.getFont(
                                                    'Inika',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.3,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                26.1, 0, 19.1, 13.5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 9, 0),
                                                  child: SizedBox(
                                                    width: 37.6,
                                                    child: Text(
                                                      '4',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Inika',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 14,
                                                        letterSpacing: -0.3,
                                                        color:
                                                            Color(0xFF000000),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  '5',
                                                  style: GoogleFonts.getFont(
                                                    'Inika',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.3,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ),
                                                Text(
                                                  '6',
                                                  style: GoogleFonts.getFont(
                                                    'Inika',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.3,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ),
                                                Text(
                                                  '7',
                                                  style: GoogleFonts.getFont(
                                                    'Inika',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.3,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ),
                                                Text(
                                                  '8',
                                                  style: GoogleFonts.getFont(
                                                    'Inika',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.3,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ),
                                                Text(
                                                  '9',
                                                  style: GoogleFonts.getFont(
                                                    'Inika',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.3,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ),
                                                Text(
                                                  '10',
                                                  style: GoogleFonts.getFont(
                                                    'Inika',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.3,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                24.7, 0, 10.2, 0),
                                            child: Stack(
                                              children: [
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(0, 5.7,
                                                                  33.4, 107.6),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0.2,
                                                                        0,
                                                                        2.2,
                                                                        19.4),
                                                                child: Text(
                                                                  '11',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Inika',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        14,
                                                                    letterSpacing:
                                                                        -0.3,
                                                                    color: Color(
                                                                        0xFF000000),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                '18',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Inika',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 14,
                                                                  letterSpacing:
                                                                      -0.3,
                                                                  color: Color(
                                                                      0xFF000000),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0,
                                                                5.7,
                                                                25.5,
                                                                145.1),
                                                        child: Text(
                                                          '12',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Inika',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 14,
                                                            letterSpacing: -0.3,
                                                            color: Color(
                                                                0xFF000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      120.5),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFFFFFFFF),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30),
                                                                ),
                                                                child: Stack(
                                                                  children: [
                                                                    Positioned(
                                                                      left:
                                                                          -9.3,
                                                                      top: -5.7,
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            30,
                                                                        height:
                                                                            30.3,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              color: Color(0x40000000),
                                                                              offset: Offset(2, 2),
                                                                              blurRadius: 4,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        child: SvgPicture
                                                                            .asset(
                                                                          'assets/vectors/ellipse_115_x2.svg',
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      padding: EdgeInsets.fromLTRB(
                                                                          9.3,
                                                                          5.7,
                                                                          9.4,
                                                                          6.6),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(
                                                                                0,
                                                                                0,
                                                                                9,
                                                                                0),
                                                                            child:
                                                                                SizedBox(
                                                                              width: 36.6,
                                                                              child: Text(
                                                                                '13',
                                                                                style: GoogleFonts.getFont(
                                                                                  'Inika',
                                                                                  fontWeight: FontWeight.w400,
                                                                                  fontSize: 14,
                                                                                  letterSpacing: -0.3,
                                                                                  color: Color(0xFFFFFFFF),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            '14',
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Inika',
                                                                              fontWeight: FontWeight.w400,
                                                                              fontSize: 14,
                                                                              letterSpacing: -0.3,
                                                                              color: Color(0xFF0B0B0B),
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            '15',
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Inika',
                                                                              fontWeight: FontWeight.w400,
                                                                              fontSize: 14,
                                                                              letterSpacing: -0.3,
                                                                              color: Color(0xFF141212),
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            '16',
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Inika',
                                                                              fontWeight: FontWeight.w400,
                                                                              fontSize: 14,
                                                                              letterSpacing: -0.3,
                                                                              color: Color(0xFF110D0D),
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            '17',
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Inika',
                                                                              fontWeight: FontWeight.w400,
                                                                              fontSize: 14,
                                                                              letterSpacing: -0.3,
                                                                              color: Color(0xFF121010),
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
                                                              margin: EdgeInsets
                                                                  .fromLTRB(0,
                                                                      0, 82, 0),
                                                              child: Text(
                                                                'Apply',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Inika',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 14,
                                                                  letterSpacing:
                                                                      -0.3,
                                                                  color: Color(
                                                                      0xFFFFFFFF),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Positioned(
                                                  right: 8.3,
                                                  top: 43,
                                                  child: SizedBox(
                                                    width: 242.8,
                                                    height: 18,
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
                                                                  0, 0, 9, 0),
                                                          child: SizedBox(
                                                            width: 36.3,
                                                            child: Text(
                                                              '19',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Inika',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize: 14,
                                                                letterSpacing:
                                                                    -0.3,
                                                                color: Color(
                                                                    0xFF000000),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          '20',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Inika',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 14,
                                                            letterSpacing: -0.3,
                                                            color: Color(
                                                                0xFF000000),
                                                          ),
                                                        ),
                                                        Text(
                                                          '21',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Inika',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 14,
                                                            letterSpacing: -0.3,
                                                            color: Color(
                                                                0xFF000000),
                                                          ),
                                                        ),
                                                        Text(
                                                          '22',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Inika',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 14,
                                                            letterSpacing: -0.3,
                                                            color: Color(
                                                                0xFF000000),
                                                          ),
                                                        ),
                                                        Text(
                                                          '23',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Inika',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 14,
                                                            letterSpacing: -0.3,
                                                            color: Color(
                                                                0xFF000000),
                                                          ),
                                                        ),
                                                        Text(
                                                          '24',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Inika',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 14,
                                                            letterSpacing: -0.3,
                                                            color: Color(
                                                                0xFF000000),
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
                                    Positioned(
                                      left: 23.6,
                                      bottom: 258.1,
                                      child: SizedBox(
                                        width: 287.9,
                                        height: 18,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 9, 0),
                                              child: SizedBox(
                                                width: 36.2,
                                                child: Text(
                                                  '25',
                                                  style: GoogleFonts.getFont(
                                                    'Inika',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    letterSpacing: -0.3,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '26',
                                              style: GoogleFonts.getFont(
                                                'Inika',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                letterSpacing: -0.3,
                                                color: Color(0xFF000000),
                                              ),
                                            ),
                                            Text(
                                              '27',
                                              style: GoogleFonts.getFont(
                                                'Inika',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                letterSpacing: -0.3,
                                                color: Color(0xFF000000),
                                              ),
                                            ),
                                            Text(
                                              '28',
                                              style: GoogleFonts.getFont(
                                                'Inika',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                letterSpacing: -0.3,
                                                color: Color(0xFF000000),
                                              ),
                                            ),
                                            Text(
                                              '29',
                                              style: GoogleFonts.getFont(
                                                'Inika',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                letterSpacing: -0.3,
                                                color: Color(0xFF000000),
                                              ),
                                            ),
                                            Text(
                                              '30',
                                              style: GoogleFonts.getFont(
                                                'Inika',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                letterSpacing: -0.3,
                                                color: Color(0xFF000000),
                                              ),
                                            ),
                                            Text(
                                              '31',
                                              style: GoogleFonts.getFont(
                                                'Inika',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                letterSpacing: -0.3,
                                                color: Color(0xFF000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 168.5,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFF0000),
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                        child: Container(
                                          width: 284,
                                          height: 50.5,
                                          padding: EdgeInsets.fromLTRB(
                                              0, 11.1, 6.7, 16.4),
                                          child: Text(
                                            'Apply',
                                            style: GoogleFonts.getFont(
                                              'Inika',
                                              fontWeight: FontWeight.w700,
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
        ],
      ),
    );
  }
}
