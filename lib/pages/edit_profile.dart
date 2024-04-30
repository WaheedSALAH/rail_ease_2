import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 42, 20, 269),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(3, 0, 3, 28),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 211.1,
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
                                'assets/vectors/path_5_x2.svg',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 23, 0, 1),
                        child: Text(
                          'Edit Profile',
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
              margin: EdgeInsets.fromLTRB(0, 0, 22, 12),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(41.5),
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
                      right: -6,
                      top: -5.6,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFBE7),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                    Container(
                      width: 83,
                      height: 83,
                      padding: EdgeInsets.fromLTRB(6, 68.6, 6, 6.2),
                      child: Container(
                        width: 8.4,
                        height: 8.2,
                        child: SizedBox(
                          width: 8.4,
                          height: 8.2,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_304_x2.svg',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 2.5, 64),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(16, 0, 17.2, 12),
                    child: Text(
                      'name   ',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                        height: 1,
                        color: Color(0xFF1E1E2D),
                      ),
                    ),
                  ),
                  Text(
                    'n***@email.com',
                    style: GoogleFonts.getFont(
                      'Inika',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1,
                      color: Color(0xFF7E848D),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 43),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 19.8),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Full Name',
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
                              margin: EdgeInsets.fromLTRB(2.8, 0, 2.8, 12.8),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(0, 0, 18.8, 0),
                                      width: 16.5,
                                      height: 16.5,
                                      child: SizedBox(
                                        width: 16.5,
                                        height: 16.5,
                                        child: SvgPicture.asset(
                                          'assets/vectors/group_25_x2.svg',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(0, 0.3, 0, 2.2),
                                      child: Text(
                                        'name   ',
                                        style: GoogleFonts.getFont(
                                          'Inika',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          height: 1,
                                          color: Color(0xFF1E1E2D),
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
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Email Address',
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
                            margin: EdgeInsets.fromLTRB(2.7, 0, 2.7, 14.6),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(0, 1.6, 18.7, 0),
                                    child: SizedBox(
                                      width: 16.5,
                                      height: 12.8,
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(
                                            4.1, 4.4, 4.1, 6.4),
                                        child: Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            SizedBox(
                                              width: 8.3,
                                              height: 2.1,
                                              child: SvgPicture.asset(
                                                'assets/vectors/path_1_x2.svg',
                                              ),
                                            ),
                                            Positioned(
                                              bottom: -6.4,
                                              child: Container(
                                                width: 16.5,
                                                height: 12.8,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color(0xFFA2A2A7)),
                                                  borderRadius:
                                                      BorderRadius.circular(3),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0.4),
                                    child: Text(
                                      'n***@email.com',
                                      style: GoogleFonts.getFont(
                                        'Inika',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        height: 1,
                                        color: Color(0xFF1E1E2D),
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
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 17, 0),
              child: SizedBox(
                width: 274,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 114,
                      padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF0A0B0B)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.getFont(
                          'Inika',
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          height: 1.3,
                          color: Color(0xFF0A0B0B),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFF0000),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        width: 119,
                        padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                        child: Text(
                          'save',
                          style: GoogleFonts.getFont(
                            'Inika',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            height: 1.3,
                            color: Color(0xFFFFFFFF),
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
    );
  }
}
