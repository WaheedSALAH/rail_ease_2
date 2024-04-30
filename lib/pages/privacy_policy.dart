import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  width: 335,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 0, 0, 16),
                        child: SizedBox(
                          width: 330,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'assets/images/egypt.jpeg',
                                          ),
                                        ),
                                      ),
                                      child: Container(
                                        width: 45,
                                        height: 42,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 15, 0, 11),
                                    child: Text(
                                      'Arabic',
                                      style: GoogleFonts.getFont(
                                        'Inika',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        height: 1,
                                        color: Color(0xC21E1E2D),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 15, 0, 9),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0x3B45494F),
                                    borderRadius: BorderRadius.circular(9),
                                  ),
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    padding: EdgeInsets.fromLTRB(5, 6, 5, 6.2),
                                    child: SizedBox(
                                      width: 8,
                                      height: 5.8,
                                      child: SvgPicture.asset(
                                        'assets/vectors/stroke_3_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF4F4F4),
                        ),
                        child: Container(
                          width: 335,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(8, 0, 8, 41),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 260.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0.3),
                        child: SizedBox(
                          width: 37.6,
                          height: 40.7,
                          child: SvgPicture.asset(
                            'assets/vectors/back_15_x2.svg',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 23, 0, 0),
                        child: Text(
                          'Privacy Policy',
                          style: GoogleFonts.getFont(
                            'Inika',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            height: 1,
                            color: Color(0xFF1E1E2D),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Privacy Policy for Ride share',
                  style: GoogleFonts.getFont(
                    'Inika',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    height: 1.7,
                    color: Color(0xFF414141),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 624),
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.getFont(
                    'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    height: 2.1,
                    color: Color(0xFF717171),
                  ),
                  children: [
                    TextSpan(
                      text:
                          'At Rideshare, accessible from rideshare.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by rideshare and how we use it.If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in rideshare. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the ',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        height: 1.3,
                      ),
                    ),
                    TextSpan(
                      text: 'Free Privacy Policy Generator',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        height: 1.3,
                        color: Color(0xFF717171),
                      ),
                    ),
                    TextSpan(
                      text: '.',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        height: 1.3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: SizedBox(
                  width: 375,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(16, 63, 16, 51),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(9, 0, 9, 75),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                              width: 20,
                              height: 18,
                              child: SvgPicture.asset(
                                'assets/vectors/action_39_action_parameters_params_preferences_setting_settings_filter_icon_x2.svg',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 63),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 9, 11),
                                  child: SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: SvgPicture.asset(
                                      'assets/vectors/group_28_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    'User Name',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      color: Color(0xFFA52626),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 42),
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
                            child: SizedBox(
                              width: 343,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 21, 13.6, 29.7),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0, 21, 10.9, 45.3),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 15.7, 24),
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
                                                EdgeInsets.fromLTRB(9, 0, 0, 0),
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
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 31, 0, 0),
                                      child: SizedBox(
                                        width: 124.4,
                                        height: 118.3,
                                        child: SvgPicture.asset(
                                          'assets/vectors/group_8_x2.svg',
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
                          margin: EdgeInsets.fromLTRB(15.5, 0, 15.5, 0),
                          child: SizedBox(
                            width: 35.5,
                            height: 8.4,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_229_x2.svg',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(15.5, 0, 15.5, 0),
                          child: SizedBox(
                            width: 29.3,
                            height: 1.7,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_228_x2.svg',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(15.5, 0, 15.5, 0.1),
                          child: SizedBox(
                            width: 35.5,
                            height: 3.2,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_52_x2.svg',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(3, 0, 0, 13),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              width: 280,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xDBFFCFD3),
                                      borderRadius: BorderRadius.circular(36),
                                    ),
                                    child: Container(
                                      width: 224,
                                      padding:
                                          EdgeInsets.fromLTRB(0, 14, 136.7, 14),
                                      child: Text(
                                        'From',
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11,
                                          color: Color(0xFF726658),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 6, 0, 0),
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
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(118, 0, 0, 13),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              width: 171,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 18,
                                    height: 16,
                                    child: SvgPicture.asset(
                                      'assets/vectors/vector_272_x2.svg',
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 2, 0, 3),
                                    child: SizedBox(
                                      width: 10,
                                      height: 11,
                                      child: SvgPicture.asset(
                                        'assets/vectors/ellipse_5_x2.svg',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(3, 0, 0, 25),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              width: 280,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xDBFFCFD3),
                                      borderRadius: BorderRadius.circular(36),
                                    ),
                                    child: Container(
                                      width: 224,
                                      padding:
                                          EdgeInsets.fromLTRB(0, 14, 132.8, 14),
                                      child: Text(
                                        'To',
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11,
                                          color: Color(0xFF726658),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
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
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 53, 51),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFED1C24),
                                borderRadius: BorderRadius.circular(19),
                              ),
                              child: Container(
                                width: 110,
                                padding: EdgeInsets.fromLTRB(3.7, 12, 0, 13),
                                child: Text(
                                  'Search',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 11,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 5, 0.3, 5),
                              child: Text(
                                'Price :',
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 5, 27.3, 5),
                              child: Text(
                                '5 Le',
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFED1C24),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(17, 8, 16.6, 6),
                                child: Text(
                                  'Book It ',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
