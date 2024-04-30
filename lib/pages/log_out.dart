import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';

class LogOut extends StatelessWidget {
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
            right: 18.5,
            top: 336.4,
            child: SizedBox(
              width: 35.5,
              height: 8.4,
              child: SvgPicture.asset(
                'assets/vectors/vector_42_x2.svg',
              ),
            ),
          ),
          Positioned(
            right: 19.7,
            top: 346.9,
            child: SizedBox(
              width: 29.3,
              height: 1.7,
              child: SvgPicture.asset(
                'assets/vectors/vector_16_x2.svg',
              ),
            ),
          ),
          Positioned(
            right: 20.5,
            top: 344.1,
            child: SizedBox(
              width: 35.5,
              height: 3.2,
              child: SvgPicture.asset(
                'assets/vectors/vector_18_x2.svg',
              ),
            ),
          ),
          Positioned(
            right: 28,
            top: 388.8,
            child: SizedBox(
              width: 10,
              height: 11,
              child: SvgPicture.asset(
                'assets/vectors/ellipse_54_x2.svg',
              ),
            ),
          ),
          Positioned(
            left: 16,
            top: 59.5,
            child: SizedBox(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                'assets/vectors/group_27_x2.svg',
              ),
            ),
          ),
          Positioned(
            right: 106,
            top: 375.5,
            child: SizedBox(
              width: 42,
              height: 38,
              child: SvgPicture.asset(
                'assets/vectors/ellipse_81_x2.svg',
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
                'assets/vectors/up_down_arrow_x2.svg',
              ),
            ),
          ),
          Positioned(
            right: 8,
            top: 498.1,
            child: SizedBox(
              width: 42,
              height: 33.1,
              child: SvgPicture.asset(
                'assets/vectors/filter_2_x2.svg',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(17, 23.4, 15, 68),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  right: 31,
                  top: 351.7,
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
                Positioned(
                  left: -17,
                  bottom: -109,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(80),
                        bottomRight: Radius.circular(80),
                      ),
                    ),
                    child: SizedBox(
                      width: 249,
                      height: 853,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 42, 23, 0),
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
                                    margin: EdgeInsets.fromLTRB(3, 0, 3, 16.3),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: SizedBox(
                                        width: 35,
                                        height: 35.7,
                                        child: SvgPicture.asset(
                                          'assets/vectors/back_3_x2.svg',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(2, 0, 2, 20.6),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(35),
                                          color: Color(0xFFD9D9D9),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'EMPTY',
                                            ),
                                          ),
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              right: -5.9,
                                              top: -5.6,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFFFFBE7),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Container(
                                                  width: 20,
                                                  height: 20,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 70,
                                              height: 70,
                                              padding: EdgeInsets.fromLTRB(
                                                  5.9, 51.6, 5.9, 10.2),
                                              child: Container(
                                                width: 8.4,
                                                height: 8.2,
                                                child: SizedBox(
                                                  width: 8.4,
                                                  height: 8.2,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/vector_41_x2.svg',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(2, 0, 2, 62.4),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '   Name',
                                        style: GoogleFonts.getFont(
                                          'Inika',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          height: 1.4,
                                          color: Color(0xFF414141),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 7, 3),
                                        child: SizedBox(
                                          width: 175,
                                          child: Text(
                                            'Dark mode',
                                            style: GoogleFonts.getFont(
                                              'Inika',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              height: 1.2,
                                              color: Color(0xFF1E1E2D),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFFA2A2A7),
                                            borderRadius:
                                                BorderRadius.circular(40),
                                          ),
                                          child: Container(
                                            width: 24,
                                            height: 14,
                                            padding: EdgeInsets.fromLTRB(
                                                1.4, 1.4, 11.7, 1.4),
                                            child: SizedBox(
                                              width: 11,
                                              height: 11.2,
                                              child: SvgPicture.asset(
                                                'assets/vectors/ellipse_141_x2.svg',
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
                            Positioned(
                              left: 2,
                              top: 166,
                              child: SizedBox(
                                height: 16,
                                child: RichText(
                                  text: TextSpan(
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      height: 1.5,
                                      color: Color(0xFF414141),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'n***@email.co',
                                        style: GoogleFonts.getFont(
                                          'Inika',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.3,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'm',
                                        style: GoogleFonts.getFont(
                                          'Inika',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.3,
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
                  ),
                ),
                Positioned(
                  left: -12,
                  bottom: 110,
                  child: SizedBox(
                    width: 249,
                    height: 337,
                    child: Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 23),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE8E8E8),
                                  ),
                                  child: Container(
                                    width: 249,
                                    height: 1,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(18.2, 0, 18.2, 8),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0, 2.3, 11.2, 2),
                                        width: 9.6,
                                        height: 11.7,
                                        child: SizedBox(
                                          width: 9.6,
                                          height: 11.7,
                                          child: SvgPicture.asset(
                                            'assets/vectors/vector_199_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Edit Profile',
                                        style: GoogleFonts.getFont(
                                          'Inika',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.3,
                                          color: Color(0xFF414141),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 23),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE8E8E8),
                                  ),
                                  child: Container(
                                    width: 249,
                                    height: 1,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(19, 0, 19, 8),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0, 2.4, 12, 2.5),
                                        width: 8,
                                        height: 11.2,
                                        child: SizedBox(
                                          width: 8,
                                          height: 11.2,
                                          child: SvgPicture.asset(
                                            'assets/vectors/vector_234_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Text(
                                        ' train location',
                                        style: GoogleFonts.getFont(
                                          'Inika',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.3,
                                          color: Color(0xFF414141),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 23),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE8E8E8),
                                  ),
                                  child: Container(
                                    width: 249,
                                    height: 1,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(15, 0, 15, 8),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    child: Text(
                                      '          scan code',
                                      style: GoogleFonts.getFont(
                                        'Inika',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        height: 1.3,
                                        color: Color(0xFF414141),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 20.1),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE8E8E8),
                                  ),
                                  child: Container(
                                    width: 249,
                                    height: 1,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(15, 0, 22, 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 2.9, 0, 0),
                                      child: Stack(
                                        children: [
                                          Text(
                                            '       Notifications',
                                            style: GoogleFonts.getFont(
                                              'Inika',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              height: 1.3,
                                              color: Color(0xFF414141),
                                            ),
                                          ),
                                          Positioned(
                                            left: 5,
                                            bottom: 4.1,
                                            child: SizedBox(
                                              width: 7.5,
                                              height: 6.9,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_292_x2.svg',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 4.3),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 1.3,
                                            child: SizedBox(
                                              width: 14,
                                              height: 13.4,
                                              child: SvgPicture.asset(
                                                'assets/vectors/ellipse_38431_x2.svg',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                4.7, 0, 4.8, 0.6),
                                            child: Text(
                                              '2',
                                              style: GoogleFonts.getFont(
                                                'Inika',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10,
                                                height: 1.4,
                                                color: Color(0xFFFFFFFF),
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
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 23),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE8E8E8),
                                  ),
                                  child: Container(
                                    width: 249,
                                    height: 1,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(16.7, 0, 16.7, 8),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 2, 9.7, 2),
                                        width: 12.5,
                                        height: 12,
                                        child: SizedBox(
                                          width: 12.5,
                                          height: 12,
                                          child: SvgPicture.asset(
                                            'assets/vectors/group_22_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Settings',
                                        style: GoogleFonts.getFont(
                                          'Inika',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.3,
                                          color: Color(0xFF414141),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 23),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE8E8E8),
                                  ),
                                  child: Container(
                                    width: 249,
                                    height: 1,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(18.3, 0, 18.3, 8),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 2, 11.3, 2),
                                        width: 9.3,
                                        height: 12,
                                        child: SizedBox(
                                          width: 9.3,
                                          height: 12,
                                          child: SvgPicture.asset(
                                            'assets/vectors/vector_297_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Logout',
                                        style: GoogleFonts.getFont(
                                          'Inika',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.3,
                                          color: Color(0xFF414141),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFE8E8E8),
                                ),
                                child: Container(
                                  width: 249,
                                  height: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFE8E8E8),
                            ),
                            child: Container(
                              width: 249,
                              height: 1,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 18,
                          top: 119,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                  'assets/images/qr_code.png',
                                ),
                              ),
                            ),
                            child: Container(
                              width: 14,
                              height: 19,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: -49,
                  bottom: -124,
                  child: Opacity(
                    opacity: 0.85,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF1F2024),
                      ),
                      child: Container(
                        width: 441,
                        height: 878,
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
                        margin: EdgeInsets.fromLTRB(26.4, 0, 20, 18.5),
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
                                          'assets/vectors/filter_012_x2.svg',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 2.3),
                                      child: SizedBox(
                                        width: 15.8,
                                        height: 5.1,
                                        child: SvgPicture.asset(
                                          'assets/vectors/filter_02_x2.svg',
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.8,
                                      height: 5.1,
                                      child: SvgPicture.asset(
                                        'assets/vectors/filter_031_x2.svg',
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
                                'assets/vectors/group_411_x2.svg',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 13, 9.7),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: 204,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(0, 10.7, 10.5, 1.4),
                                  child: SizedBox(
                                    width: 153.5,
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
                                ),
                                Opacity(
                                  opacity: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
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
                              colors: <Color>[
                                Color(0xFFD82020),
                                Color(0x1C882727)
                              ],
                              stops: <double>[0, 1],
                            ),
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(16, 25.3, 28, 33.7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0, 48.7, 21.9, 13.9),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0, 0, 13.7, 23.6),
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
                                              EdgeInsets.fromLTRB(7, 0, 0, 0),
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
                                  margin: EdgeInsets.fromLTRB(0, 25.3, 0, 0),
                                  child: SizedBox(
                                    width: 124,
                                    height: 120,
                                    child: SvgPicture.asset(
                                      'assets/vectors/group_2_x2.svg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(23, 0, 23, 2.1),
                        child: Align(
                          alignment: Alignment.topLeft,
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
                        margin: EdgeInsets.fromLTRB(8, 0, 6.4, 20.6),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(4, 141.2, 4, 0),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: -4,
                                right: -4,
                                bottom: 67.9,
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
                              Positioned(
                                left: -1,
                                bottom: 81.6,
                                child: Container(
                                  width: 1,
                                  height: 0.5,
                                  child: SizedBox(
                                    width: 1,
                                    height: 0.5,
                                    child: SvgPicture.asset(
                                      'assets/vectors/vector_46_x2.svg',
                                    ),
                                  ),
                                ),
                              ),
                              Column(
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
                              Positioned(
                                left: 6,
                                top: -141.2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xFF666060)),
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0xFFEFEFEF),
                                  ),
                                  child: Container(
                                    width: 244,
                                    height: 38,
                                    padding:
                                        EdgeInsets.fromLTRB(12, 10.5, 12, 11.5),
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
                              Positioned(
                                left: 8,
                                right: 0.6,
                                top: -140.1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFFFFF),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: SizedBox(
                                    width: 312,
                                    height: 170,
                                    child: Container(
                                      padding:
                                          EdgeInsets.fromLTRB(16, 0, 16, 17),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                12.2, 0, 12.2, 28),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 8),
                                                  child: Text(
                                                    'Log out',
                                                    style: GoogleFonts.getFont(
                                                      'Inika',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 16,
                                                      letterSpacing: 0.1,
                                                      color: Color(0xFF1F2024),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Are you sure you want to log out? You will need to login again to use the app.',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.getFont(
                                                    'Inika',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    height: 1.3,
                                                    letterSpacing: 0.1,
                                                    color: Color(0xFF71727A),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 8, 0),
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 10.5, 0.7, 10.5),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            Color(0xFF000000)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                  ),
                                                  child: Text(
                                                    'Cancel',
                                                    style: GoogleFonts.getFont(
                                                      'Inika',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 12,
                                                      color: Color(0xFF000000),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFFD0000),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                  ),
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 12, 0.6, 12),
                                                    child: Text(
                                                      'Log out',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Inika',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xFFFFFFFF),
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
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 8,
                                top: -80.3,
                                child: SizedBox(
                                  width: 242,
                                  height: 60,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                          border: Border.all(
                                              color: Color(0xFF040404)),
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: Color(0x5ED7D7D7),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                              11, 10, 11, 11),
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
                              Positioned(
                                right: 19.6,
                                top: -71.7,
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
                                            height: 26.1,
                                            padding: EdgeInsets.fromLTRB(
                                                8.4, 13, 8.4, 11),
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
                                          borderRadius:
                                              BorderRadius.circular(6),
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
                                          height: 26.1,
                                          padding: EdgeInsets.fromLTRB(
                                              8.4, 7.6, 8.4, 7.6),
                                          child: Container(
                                            width: 12,
                                            height: 10.9,
                                            child: SizedBox(
                                              width: 12,
                                              height: 10.9,
                                              child: SvgPicture.asset(
                                                'assets/vectors/primary_9_x2.svg',
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
                                        padding: EdgeInsets.fromLTRB(
                                            8.4, 13, 8.4, 11),
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
                                        padding: EdgeInsets.fromLTRB(
                                            10.3, 4.7, 17.4, 5.4),
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
                                        padding: EdgeInsets.fromLTRB(
                                            8.4, 7.6, 8.4, 7.6),
                                        child: Container(
                                          width: 12,
                                          height: 10.9,
                                          child: SizedBox(
                                            width: 12,
                                            height: 10.9,
                                            child: SvgPicture.asset(
                                              'assets/vectors/primary_13_x2.svg',
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
                        margin: EdgeInsets.fromLTRB(30, 0, 29, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFF0000),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 11, 4.8, 13),
                            child: Text(
                              'Search train',
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
