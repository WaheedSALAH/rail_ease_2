import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BasicPage extends StatelessWidget {
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
            right: 106,
            top: 375.5,
            child: SizedBox(
              width: 42,
              height: 38,
              child: SvgPicture.asset(
                'assets/vectors/ellipse_8_x2.svg',
              ),
            ),
          ),
          Positioned(
            right: 114.2,
            top: 382.1,
            child: SizedBox(
              width: 24.8,
              height: 22.6,
              child: SvgPicture.asset(
                'assets/vectors/up_down_arrow_1_x2.svg',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(17, 23.4, 15, 68),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 18.5),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      width: 296.6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 6.7, 0, 14.6),
                            width: 15.8,
                            child: SizedBox(
                              width: 15.8,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 2.1),
                                    child: SizedBox(
                                      width: 15.8,
                                      height: 5.1,
                                      child: SvgPicture.asset(
                                        'assets/vectors/filter_01_x2.svg',
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 2.3),
                                    child: SizedBox(
                                      width: 15.8,
                                      height: 5.1,
                                      child: SvgPicture.asset(
                                        'assets/vectors/filter_022_x2.svg',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.8,
                                    height: 5.1,
                                    child: SvgPicture.asset(
                                      'assets/vectors/filter_032_x2.svg',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 4.9, 0, 15.1),
                            child: Text(
                              'Book your train',
                              style: GoogleFonts.getFont(
                                'Inika',
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color(0xFFF60A0A),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 42,
                            height: 40.9,
                            child: SvgPicture.asset(
                              'assets/vectors/group_413_x2.svg',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(16, 0, 16, 9.7),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: 251,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 1.4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 17, 1.7),
                                  child: SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: SvgPicture.asset(
                                      'assets/vectors/group_3_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10.7, 0, 0),
                                  child: Text(
                                    'User Name',
                                    style: GoogleFonts.getFont(
                                      'Inika',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xFF070707),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Opacity(
                            opacity: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF2a373c),
                                backgroundBlendMode: BlendMode.multiply,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/componentlottiehttpsassets_5_lottiefiles_compackageslf_20_zk_3_wvzpg_json.gif',
                                  ),
                                ),
                              ),
                              child: Container(
                                width: 40,
                                height: 33.1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 36),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(33),
                      gradient: LinearGradient(
                        begin: Alignment(0, -1),
                        end: Alignment(0, 1),
                        colors: <Color>[Color(0xFFD82020), Color(0x1C882727)],
                        stops: <double>[0, 1],
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(16, 25.3, 27.6, 33),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 48.7, 21.9, 14.7),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(0, 0, 13.7, 23.6),
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
                                    margin: EdgeInsets.fromLTRB(7, 0, 0, 0),
                                    child: Text(
                                      'You Should Go Away From AnyTraffics',
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
                            margin: EdgeInsets.fromLTRB(0, 25.3, 0, 0),
                            child: SizedBox(
                              width: 124.4,
                              height: 120.7,
                              child: SvgPicture.asset(
                                'assets/vectors/group_24_x2.svg',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 267.4, 2.1),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'From',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(18, 0, 18.5, 2.1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 27, 13.2),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF666060)),
                            borderRadius: BorderRadius.circular(6),
                            color: Color(0xFFEFEFEF),
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(12, 10.5, 12, 11.5),
                            child: Text(
                              'Choose Depature from',
                              style: GoogleFonts.getFont(
                                'Inika',
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
                          margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 2.1),
                                child: SizedBox(
                                  width: 35.5,
                                  height: 8.4,
                                  child: SvgPicture.asset(
                                    'assets/vectors/vector_93_x2.svg',
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 0, 1.2, 3),
                                child: SizedBox(
                                  width: 29.3,
                                  height: 1.7,
                                  child: SvgPicture.asset(
                                    'assets/vectors/container_3_x2.svg',
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(18, 0, 12.5, 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFED1C24),
                                  ),
                                  child: Container(
                                    width: 5,
                                    height: 35,
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
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 11.4),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 7.6, 43, 0),
                          child: SizedBox(
                            width: 242,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 7),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'To',
                                      style: GoogleFonts.getFont(
                                        'Inika',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xFF040404)),
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0x5ED7D7D7),
                                  ),
                                  child: Container(
                                    padding:
                                        EdgeInsets.fromLTRB(11, 10, 11, 11),
                                    child: Text(
                                      'Choose Arrival at',
                                      style: GoogleFonts.getFont(
                                        'Inika',
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
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 16.4),
                          child: SizedBox(
                            width: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 5.2),
                                  child: SizedBox(
                                    width: 10,
                                    height: 11,
                                    child: SvgPicture.asset(
                                      'assets/vectors/ellipse_52_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(3, 0, 2, 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFED1C24),
                                    ),
                                    child: Container(
                                      width: 5,
                                      height: 35,
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
                  margin: EdgeInsets.fromLTRB(8, 0, 6.4, 7.9),
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
                  margin: EdgeInsets.fromLTRB(12, 0, 8, 20.6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 11, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 6.5),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Depature Date',
                                    style: GoogleFonts.getFont(
                                      'Inika',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xFF000000),
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
                                      14.4, 10.3, 14.4, 11.2),
                                  child: Text(
                                    'Choose your Date',
                                    style: GoogleFonts.getFont(
                                      'Inika',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xFF7D7B7B),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 21.4, 0, 5.4),
                        child: SizedBox(
                          width: 42,
                          height: 33.1,
                          child: SvgPicture.asset(
                            'assets/vectors/filter_x2.svg',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(8, 0, 6.4, 15.9),
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
                  margin: EdgeInsets.fromLTRB(8, 0, 7, 42.5),
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
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 11.9),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Adult (12+)',
                                  style: GoogleFonts.getFont(
                                    'Inika',
                                    fontWeight: FontWeight.w400,
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
                                Opacity(
                                  opacity: 0.25,
                                  child: Container(
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
                                      height: 26.1,
                                      padding:
                                          EdgeInsets.fromLTRB(8.4, 13, 8.4, 11),
                                      child: Container(
                                        width: 12,
                                        height: 2,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFF000000),
                                          ),
                                          child: Container(
                                            width: 12,
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
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(
                                        16.5, 3.7, 16.3, 6.3),
                                    child: Text(
                                      '1',
                                      style: GoogleFonts.getFont(
                                        'Inika',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xFF000000),
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
                                    height: 26.1,
                                    padding:
                                        EdgeInsets.fromLTRB(8.4, 7.6, 8.4, 7.6),
                                    child: Container(
                                      width: 12,
                                      height: 10.9,
                                      child: SizedBox(
                                        width: 12,
                                        height: 10.9,
                                        child: SvgPicture.asset(
                                          'assets/vectors/primary_3_x2.svg',
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
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 11.9),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Childs (2-12)',
                                style: GoogleFonts.getFont(
                                  'Inika',
                                  fontWeight: FontWeight.w400,
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
                                  height: 26.1,
                                  padding:
                                      EdgeInsets.fromLTRB(8.4, 13, 8.4, 11),
                                  child: Container(
                                    width: 12,
                                    height: 2,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF000000),
                                      ),
                                      child: Container(
                                        width: 12,
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
                                  padding:
                                      EdgeInsets.fromLTRB(10.3, 4.7, 17.4, 5.4),
                                  child: Text(
                                    ' 0',
                                    style: GoogleFonts.getFont(
                                      'Inika',
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
                                  height: 26.1,
                                  padding:
                                      EdgeInsets.fromLTRB(8.4, 7.6, 8.4, 7.6),
                                  child: Container(
                                    width: 12,
                                    height: 10.9,
                                    child: SizedBox(
                                      width: 12,
                                      height: 10.9,
                                      child: SvgPicture.asset(
                                        'assets/vectors/primary_7_x2.svg',
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
                  margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFF0000),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Container(
                        width: 284,
                        padding: EdgeInsets.fromLTRB(0, 11, 15.7, 16),
                        child: Text(
                          'Search train',
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
