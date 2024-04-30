import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';

class AddCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(23, 42, 24, 259),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 46),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 194.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 12.1),
                        child: SizedBox(
                          width: 33.5,
                          height: 32.9,
                          child: SvgPicture.asset(
                            'assets/vectors/back_11_x2.svg',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 23, 0, 0),
                        child: Text(
                          'Add Card',
                          style: GoogleFonts.getFont(
                            'Inika',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            height: 1.2,
                            color: Color(0xFF0D0D0D),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(1, 0, 0, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'CARD HOLDER NAME',
                        style: GoogleFonts.getFont(
                          'Inika',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.7,
                          color: Color(0xFFA0A5BA),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F5FA),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 21.5, 20, 19.5),
                      child: Opacity(
                        opacity: 0.9,
                        child: Text(
                          'name holder',
                          style: GoogleFonts.getFont(
                            'Inika',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFF32343E),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(1, 0, 0, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'CARD NUMBER',
                        style: GoogleFonts.getFont(
                          'Inika',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.7,
                          color: Color(0xFFA0A5BA),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F5FA),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 21.5, 20, 19.5),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Opacity(
                            opacity: 0.9,
                            child: Text(
                              '2134   _ _ _ _   _ _ _ _',
                              style: GoogleFonts.getFont(
                                'Inika',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xFF32343E),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 47.3,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF454750),
                              ),
                              child: Container(
                                width: 1,
                                height: 15,
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
              margin: EdgeInsets.fromLTRB(11, 0, 3, 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'EXPIRE DATE',
                                style: GoogleFonts.getFont(
                                  'Inika',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  height: 1.7,
                                  color: Color(0xFFA0A5BA),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFF0F5FA),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(20, 22, 20, 19),
                              child: Opacity(
                                opacity: 0.5,
                                child: Text(
                                  'mm/yyyy',
                                  style: GoogleFonts.getFont(
                                    'Inika',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xFF32343E),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'CVC',
                              style: GoogleFonts.getFont(
                                'Inika',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 1.7,
                                color: Color(0xFFA0A5BA),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF0F5FA),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 22, 20, 19),
                            child: Opacity(
                              opacity: 0.5,
                              child: Text(
                                '***',
                                style: GoogleFonts.getFont(
                                  'Inika',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Color(0xFF32343E),
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
            Container(
              margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 23, 0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF121212)),
                        borderRadius: BorderRadius.circular(14),
                        color: Color(0x21FFFFFF),
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0.5, 12, 0, 12),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF121212)),
                          ),
                          child: Text(
                            'Cancel',
                            style: GoogleFonts.getFont(
                              'Inika',
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              letterSpacing: -0.4,
                              color: Color(0x820E0E0E),
                            ),
                          ),
                        ),
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
                        padding: EdgeInsets.fromLTRB(0, 12, 5, 12),
                        child: Text(
                          'Pay now',
                          style: GoogleFonts.getFont(
                            'Inika',
                            fontWeight: FontWeight.w700,
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
    );
  }
}
