import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Location extends StatelessWidget {
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
            left: -13,
            right: -16,
            top: -29,
            bottom: -14,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/snazzy_image_1.png',
                  ),
                ),
              ),
              child: Container(
                width: 375,
                height: 812,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(13, 29, 16, 14),
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
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 409),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 23, 30, 1),
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.contain,
                                      image: AssetImage(
                                        'assets/images/reply_arrow.png',
                                      ),
                                    ),
                                  ),
                                  child: Container(
                                    width: 27,
                                    height: 22,
                                  ),
                                ),
                              ),
                              Text(
                                'train location',
                                style: GoogleFonts.getFont(
                                  'Inika',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 35,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(22, 0, 22, 23.2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xFFFFFFFF),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x26000000),
                                    offset: Offset(0, 4),
                                    blurRadius: 7.5,
                                  ),
                                ],
                              ),
                              child: Container(
                                width: 50,
                                height: 54.8,
                                padding: EdgeInsets.fromLTRB(13, 15, 13, 15.8),
                                child: SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Container(
                                    padding:
                                        EdgeInsets.fromLTRB(2.3, 2.3, 2.3, 2.3),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(9.8),
                                            color: Color(0xFFFFFFFF),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x26000000),
                                                offset: Offset(0, 4),
                                                blurRadius: 7.5,
                                              ),
                                            ],
                                          ),
                                          child: Container(
                                            width: 19.5,
                                            height: 19.5,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: -2.3,
                                          child: SizedBox(
                                            width: 24,
                                            height: 24,
                                            child: SvgPicture.asset(
                                              'assets/vectors/shape_4_x2.svg',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(43),
                              ),
                              child: SizedBox(
                                height: 236,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(24, 20, 24, 0),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 0, 30),
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
                                                        0, 0, 26.8, 0),
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
                                                                  0, 0, 4.2, 2),
                                                          child: Text(
                                                            'Distance',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Inika',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 12,
                                                              color: Color(
                                                                  0xFFD0CECE),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  7, 0, 0, 0),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0,
                                                                        0,
                                                                        9.8,
                                                                        0),
                                                                child: Text(
                                                                  '15',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Inika',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontSize:
                                                                        20,
                                                                    color: Color(
                                                                        0xFF000000),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0,
                                                                        9,
                                                                        0,
                                                                        1),
                                                                child: Text(
                                                                  'km',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Inika',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    fontSize:
                                                                        12,
                                                                    color: Color(
                                                                        0xFF000000),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 12, 7, 9.1),
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
                                                        0, 0, 27, 3),
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
                                                                  0, 0, 0, 5),
                                                          child: Text(
                                                            'arrival',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Inika',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 12,
                                                              color: Color(
                                                                  0xFFD0CECE),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(0, 0,
                                                                  10.8, 0),
                                                          child: Text(
                                                            '9:00',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Inika',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 15,
                                                              color: Color(
                                                                  0xFF000000),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 13, 6, 8.1),
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
                                                        0, 0, 0, 3),
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
                                                                  0, 0, 0, 4),
                                                          child: Text(
                                                            'leave',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Inika',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 13,
                                                              color: Color(
                                                                  0xFFD2D2D2),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  1, 0, 7.2, 0),
                                                          child: Text(
                                                            '9:15',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Inika',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 15,
                                                              color: Color(
                                                                  0xFF000000),
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
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 1, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.contain,
                                                        image: AssetImage(
                                                          'assets/images/pain_point.png',
                                                        ),
                                                      ),
                                                    ),
                                                    child: Container(
                                                      width: 29,
                                                      height: 24,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 4),
                                                  child: Text(
                                                    'Cairo',
                                                    style: GoogleFonts.getFont(
                                                      'Inika',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 15,
                                                      color: Color(0xFF000000),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: SizedBox(
                                              width: 239,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 26, 10, 0),
                                                    child: SizedBox(
                                                      width: 187,
                                                      child: Text(
                                                        'Zagzig',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Inika',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 15,
                                                          color:
                                                              Color(0xFF000000),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 4),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          fit: BoxFit.contain,
                                                          image: AssetImage(
                                                            'assets/images/share.png',
                                                          ),
                                                        ),
                                                      ),
                                                      child: Container(
                                                        width: 42,
                                                        height: 42,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        left: 33,
                                        top: 90,
                                        child: SizedBox(
                                          height: 9,
                                          child: Text(
                                            'on 7:00',
                                            style: GoogleFonts.getFont(
                                              'Inika',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 7,
                                              color: Color(0xFFD0CECE),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 33,
                                        bottom: 65,
                                        child: SizedBox(
                                          height: 9,
                                          child: Text(
                                            'on 10:00',
                                            style: GoogleFonts.getFont(
                                              'Inika',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 7,
                                              color: Color(0xFFD0CECE),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        bottom: 72,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.contain,
                                              image: AssetImage(
                                                'assets/images/pain_point_1.png',
                                              ),
                                            ),
                                          ),
                                          child: Container(
                                            width: 32,
                                            height: 25,
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
                    ],
                  ),
                ),
                Positioned(
                  left: 65,
                  top: 256,
                  child: SizedBox(
                    width: 109,
                    height: 232,
                    child: SvgPicture.asset(
                      'assets/vectors/vector_1_x2.svg',
                    ),
                  ),
                ),
                Positioned(
                  left: 35,
                  bottom: 259,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          'assets/images/pain_point.png',
                        ),
                      ),
                    ),
                    child: Container(
                      width: 51,
                      height: 44,
                    ),
                  ),
                ),
                Positioned(
                  left: 69,
                  top: 330,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          'assets/images/city_railway_station.png',
                        ),
                      ),
                    ),
                    child: Container(
                      width: 62,
                      height: 42,
                    ),
                  ),
                ),
                Positioned(
                  top: 233,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          'assets/images/pain_point_1.png',
                        ),
                      ),
                    ),
                    child: Container(
                      width: 47,
                      height: 47,
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
