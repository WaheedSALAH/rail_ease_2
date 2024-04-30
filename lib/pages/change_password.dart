import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(11, 36, 20, 0),
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
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 49),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 250.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFF4F4F4),
                                borderRadius: BorderRadius.circular(21),
                              ),
                              child: Container(
                                width: 42,
                                height: 42,
                                padding: EdgeInsets.fromLTRB(18, 15, 18, 15),
                                child: Container(
                                  width: 6,
                                  height: 12,
                                  child: SizedBox(
                                    width: 6,
                                    height: 12,
                                    child: SvgPicture.asset(
                                      'assets/vectors/path_9_x2.svg',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 11, 0, 13),
                              child: Text(
                                'Change Password',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  fontWeight: FontWeight.w500,
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
                    margin: EdgeInsets.fromLTRB(9, 0, 0, 19.5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 17),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Current Password',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 1,
                                color: Color(0xFFA2A2A7),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  width: 121,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 16, 0),
                                        width: 22,
                                        height: 22,
                                        child: SizedBox(
                                          width: 22,
                                          height: 22,
                                          child: SvgPicture.asset(
                                            'assets/vectors/group_5_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
                                        child: SizedBox(
                                          width: 83,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 5, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF1E1E2D),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3),
                                                  ),
                                                  child: Container(
                                                    width: 6,
                                                    height: 6,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 5, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF1E1E2D),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3),
                                                  ),
                                                  child: Container(
                                                    width: 6,
                                                    height: 6,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 5, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF1E1E2D),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3),
                                                  ),
                                                  child: Container(
                                                    width: 6,
                                                    height: 6,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 5, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF1E1E2D),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3),
                                                  ),
                                                  child: Container(
                                                    width: 6,
                                                    height: 6,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 5, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF1E1E2D),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3),
                                                  ),
                                                  child: Container(
                                                    width: 6,
                                                    height: 6,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 5, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF1E1E2D),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3),
                                                  ),
                                                  child: Container(
                                                    width: 6,
                                                    height: 6,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 5, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF1E1E2D),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3),
                                                  ),
                                                  child: Container(
                                                    width: 6,
                                                    height: 6,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF1E1E2D),
                                                  borderRadius:
                                                      BorderRadius.circular(3),
                                                ),
                                                child: Container(
                                                  width: 6,
                                                  height: 6,
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
                                color: Color(0xFFF4F4F4),
                              ),
                              child: Container(
                                width: 335,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(9, 0, 0, 19.5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 17),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'New Password',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 1,
                                color: Color(0xFFA2A2A7),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 3.7, 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 121,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 16, 0),
                                          width: 22,
                                          height: 22,
                                          child: SizedBox(
                                            width: 22,
                                            height: 22,
                                            child: SvgPicture.asset(
                                              'assets/vectors/group_14_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 8, 0, 8),
                                          child: SizedBox(
                                            width: 83,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 5, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF1E1E2D),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3),
                                                    ),
                                                    child: Container(
                                                      width: 6,
                                                      height: 6,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 5, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF1E1E2D),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3),
                                                    ),
                                                    child: Container(
                                                      width: 6,
                                                      height: 6,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 5, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF1E1E2D),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3),
                                                    ),
                                                    child: Container(
                                                      width: 6,
                                                      height: 6,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 5, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF1E1E2D),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3),
                                                    ),
                                                    child: Container(
                                                      width: 6,
                                                      height: 6,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 5, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF1E1E2D),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3),
                                                    ),
                                                    child: Container(
                                                      width: 6,
                                                      height: 6,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 5, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF1E1E2D),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3),
                                                    ),
                                                    child: Container(
                                                      width: 6,
                                                      height: 6,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 5, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF1E1E2D),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3),
                                                    ),
                                                    child: Container(
                                                      width: 6,
                                                      height: 6,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF1E1E2D),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3),
                                                  ),
                                                  child: Container(
                                                    width: 6,
                                                    height: 6,
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
                                    margin: EdgeInsets.fromLTRB(0, 5.5, 0, 5.5),
                                    width: 14.7,
                                    height: 11,
                                    child: SizedBox(
                                      width: 14.7,
                                      height: 11,
                                      child: SvgPicture.asset(
                                        'assets/vectors/group_15_x2.svg',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFF4F4F4),
                              ),
                              child: Container(
                                width: 335,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(9, 0, 0, 7.5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 17),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Cofirm New Password',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 1,
                                color: Color(0xFFA2A2A7),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  width: 121,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 16, 0),
                                        width: 22,
                                        height: 22,
                                        child: SizedBox(
                                          width: 22,
                                          height: 22,
                                          child: SvgPicture.asset(
                                            'assets/vectors/group_16_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
                                        child: SizedBox(
                                          width: 83,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 5, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF1E1E2D),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3),
                                                  ),
                                                  child: Container(
                                                    width: 6,
                                                    height: 6,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 5, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF1E1E2D),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3),
                                                  ),
                                                  child: Container(
                                                    width: 6,
                                                    height: 6,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 5, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF1E1E2D),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3),
                                                  ),
                                                  child: Container(
                                                    width: 6,
                                                    height: 6,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 5, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF1E1E2D),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3),
                                                  ),
                                                  child: Container(
                                                    width: 6,
                                                    height: 6,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 5, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF1E1E2D),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3),
                                                  ),
                                                  child: Container(
                                                    width: 6,
                                                    height: 6,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 5, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF1E1E2D),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3),
                                                  ),
                                                  child: Container(
                                                    width: 6,
                                                    height: 6,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 5, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF1E1E2D),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3),
                                                  ),
                                                  child: Container(
                                                    width: 6,
                                                    height: 6,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF1E1E2D),
                                                  borderRadius:
                                                      BorderRadius.circular(3),
                                                ),
                                                child: Container(
                                                  width: 6,
                                                  height: 6,
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
                                color: Color(0xFFF4F4F4),
                              ),
                              child: Container(
                                width: 335,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(9, 0, 9, 41),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Both Passwords Must Match',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          height: 1,
                          color: Color(0xFFA2A2A7),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(9, 0, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFF0000),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                        child: Text(
                          'Change Password',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            height: 1.5,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: -11,
              right: -20,
              top: -36,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                ),
                child: SizedBox(
                  width: 375,
                  height: 812,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 42, 20, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(3, 0, 3, 42.3),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                              width: 274.2,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 39.4,
                                    height: 42.7,
                                    child: SvgPicture.asset(
                                      'assets/vectors/back_19_x2.svg',
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 23, 0, 1.7),
                                    child: Text(
                                      'Change Password',
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
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 19.5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 17),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Current Password',
                                    style: GoogleFonts.getFont(
                                      'Inika',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      height: 1,
                                      color: Color(0xFFA2A2A7),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: SizedBox(
                                        width: 121,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 16, 0),
                                              width: 22,
                                              height: 22,
                                              child: SizedBox(
                                                width: 22,
                                                height: 22,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/group_6_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 8, 0, 8),
                                              child: SizedBox(
                                                width: 83,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 5, 0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF1E1E2D),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                        ),
                                                        child: Container(
                                                          width: 6,
                                                          height: 6,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 5, 0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF1E1E2D),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                        ),
                                                        child: Container(
                                                          width: 6,
                                                          height: 6,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 5, 0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF1E1E2D),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                        ),
                                                        child: Container(
                                                          width: 6,
                                                          height: 6,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 5, 0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF1E1E2D),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                        ),
                                                        child: Container(
                                                          width: 6,
                                                          height: 6,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 5, 0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF1E1E2D),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                        ),
                                                        child: Container(
                                                          width: 6,
                                                          height: 6,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 5, 0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF1E1E2D),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                        ),
                                                        child: Container(
                                                          width: 6,
                                                          height: 6,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 5, 0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF1E1E2D),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                        ),
                                                        child: Container(
                                                          width: 6,
                                                          height: 6,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFF1E1E2D),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(3),
                                                      ),
                                                      child: Container(
                                                        width: 6,
                                                        height: 6,
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
                                      color: Color(0xFFF4F4F4),
                                    ),
                                    child: Container(
                                      width: 335,
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 19.5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 17),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'New Password',
                                    style: GoogleFonts.getFont(
                                      'Inika',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      height: 1,
                                      color: Color(0xFFA2A2A7),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 3.7, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 121,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 16, 0),
                                                width: 22,
                                                height: 22,
                                                child: SizedBox(
                                                  width: 22,
                                                  height: 22,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/group_18_x2.svg',
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 8, 0, 8),
                                                child: SizedBox(
                                                  width: 83,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 0, 5, 0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFF1E1E2D),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        3),
                                                          ),
                                                          child: Container(
                                                            width: 6,
                                                            height: 6,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 0, 5, 0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFF1E1E2D),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        3),
                                                          ),
                                                          child: Container(
                                                            width: 6,
                                                            height: 6,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 0, 5, 0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFF1E1E2D),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        3),
                                                          ),
                                                          child: Container(
                                                            width: 6,
                                                            height: 6,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 0, 5, 0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFF1E1E2D),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        3),
                                                          ),
                                                          child: Container(
                                                            width: 6,
                                                            height: 6,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 0, 5, 0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFF1E1E2D),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        3),
                                                          ),
                                                          child: Container(
                                                            width: 6,
                                                            height: 6,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 0, 5, 0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFF1E1E2D),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        3),
                                                          ),
                                                          child: Container(
                                                            width: 6,
                                                            height: 6,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 0, 5, 0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFF1E1E2D),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        3),
                                                          ),
                                                          child: Container(
                                                            width: 6,
                                                            height: 6,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF1E1E2D),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                        ),
                                                        child: Container(
                                                          width: 6,
                                                          height: 6,
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
                                          margin: EdgeInsets.fromLTRB(
                                              0, 5.5, 0, 5.5),
                                          width: 14.7,
                                          height: 11,
                                          child: SizedBox(
                                            width: 14.7,
                                            height: 11,
                                            child: SvgPicture.asset(
                                              'assets/vectors/group_31_x2.svg',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF4F4F4),
                                    ),
                                    child: Container(
                                      width: 335,
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 7.5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 17),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Cofirm New Password',
                                    style: GoogleFonts.getFont(
                                      'Inika',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      height: 1,
                                      color: Color(0xFFA2A2A7),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: SizedBox(
                                        width: 121,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 16, 0),
                                              width: 22,
                                              height: 22,
                                              child: SizedBox(
                                                width: 22,
                                                height: 22,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/group_9_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 8, 0, 8),
                                              child: SizedBox(
                                                width: 83,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 5, 0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF1E1E2D),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                        ),
                                                        child: Container(
                                                          width: 6,
                                                          height: 6,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 5, 0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF1E1E2D),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                        ),
                                                        child: Container(
                                                          width: 6,
                                                          height: 6,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 5, 0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF1E1E2D),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                        ),
                                                        child: Container(
                                                          width: 6,
                                                          height: 6,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 5, 0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF1E1E2D),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                        ),
                                                        child: Container(
                                                          width: 6,
                                                          height: 6,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 5, 0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF1E1E2D),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                        ),
                                                        child: Container(
                                                          width: 6,
                                                          height: 6,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 5, 0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF1E1E2D),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                        ),
                                                        child: Container(
                                                          width: 6,
                                                          height: 6,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 5, 0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF1E1E2D),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                        ),
                                                        child: Container(
                                                          width: 6,
                                                          height: 6,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFF1E1E2D),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(3),
                                                      ),
                                                      child: Container(
                                                        width: 6,
                                                        height: 6,
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
                                      color: Color(0xFFF4F4F4),
                                    ),
                                    child: Container(
                                      width: 335,
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 56),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Both Passwords Must Match',
                              style: GoogleFonts.getFont(
                                'Inika',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                height: 1,
                                color: Color(0xFFA2A2A7),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 6.1, 0),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFFF0000),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Container(
                                width: 266.9,
                                padding: EdgeInsets.fromLTRB(8.4, 10, 0, 17),
                                child: Text(
                                  'Change Password',
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
