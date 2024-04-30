import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';

class MyTicket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(46),
              gradient: LinearGradient(
                begin: Alignment(0, -1.156),
                end: Alignment(0, 1),
                colors: <Color>[
                  Color(0xFFDB2C2C),
                  Color(0xFFFD1414),
                  Color(0x00E05F5F)
                ],
                stops: <double>[0, 0, 0.826],
              ),
            ),
            child: Container(
              width: 431,
              height: 333,
            ),
          ),
          Positioned(
            right: 2,
            bottom: -11,
            child: SizedBox(
              width: 386,
              height: 666,
              child: SvgPicture.asset(
                'assets/vectors/container_2_x2.svg',
              ),
            ),
          ),
          Positioned(
            left: 77,
            bottom: 235,
            child: SizedBox(
              height: 18,
              child: Text(
                '4:30',
                style: GoogleFonts.getFont(
                  'Inika',
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
          Positioned(
            right: 60.1,
            bottom: 235,
            child: SizedBox(
              height: 18,
              child: Text(
                '6:50',
                style: GoogleFonts.getFont(
                  'Inika',
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
          Positioned(
            left: 75,
            bottom: 161,
            child: SizedBox(
              height: 18,
              child: Text(
                '1 June 2023  ',
                style: GoogleFonts.getFont(
                  'Inika',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
          Positioned(
            left: 111,
            bottom: 196,
            child: SizedBox(
              height: 18,
              child: Text(
                'User Name',
                style: GoogleFonts.getFont(
                  'Inika',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
          Positioned(
            right: 63.6,
            bottom: 161,
            child: SizedBox(
              height: 18,
              child: Text(
                '4:30 Pm',
                style: GoogleFonts.getFont(
                  'Inika',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
          Positioned(
            left: 75,
            bottom: 126,
            child: SizedBox(
              height: 18,
              child: Text(
                '8D',
                style: GoogleFonts.getFont(
                  'Inika',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
          Positioned(
            left: 116.5,
            top: 306.6,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF000000),
              ),
              child: Container(
                width: 29.1,
                height: 27,
              ),
            ),
          ),
          Positioned(
            left: 93.6,
            top: 280.6,
            child: SizedBox(
              width: 74.9,
              height: 182.9,
              child: SvgPicture.asset(
                'assets/vectors/container_4_x2.svg',
              ),
            ),
          ),
          Positioned(
            left: 24,
            bottom: 264,
            child: SizedBox(
              height: 44,
              child: Text(
                'Cairo',
                style: GoogleFonts.getFont(
                  'Inika',
                  fontWeight: FontWeight.w700,
                  fontSize: 34,
                  color: Color(0xFFA52626),
                ),
              ),
            ),
          ),
          Positioned(
            left: 148.8,
            bottom: 265.8,
            child: Container(
              width: 52,
              height: 24.9,
              child: SizedBox(
                width: 52,
                height: 24.9,
                child: SvgPicture.asset(
                  'assets/vectors/vector_282_x2.svg',
                ),
              ),
            ),
          ),
          Positioned(
            right: 52.1,
            bottom: 264,
            child: SizedBox(
              height: 44,
              child: Text(
                'Zagzig',
                style: GoogleFonts.getFont(
                  'Inika',
                  fontWeight: FontWeight.w700,
                  fontSize: 34,
                  color: Color(0xFFAA0404),
                ),
              ),
            ),
          ),
          Positioned(
            left: 27,
            bottom: 161,
            child: SizedBox(
              height: 18,
              child: Text(
                'Date :',
                style: GoogleFonts.getFont(
                  'Inika',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF726658),
                ),
              ),
            ),
          ),
          Positioned(
            left: 27,
            bottom: 196,
            child: SizedBox(
              height: 18,
              child: Text(
                'Passenger :',
                style: GoogleFonts.getFont(
                  'Inika',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF726658),
                ),
              ),
            ),
          ),
          Positioned(
            right: 122.9,
            bottom: 161,
            child: SizedBox(
              height: 18,
              child: Text(
                'Time :',
                style: GoogleFonts.getFont(
                  'Inika',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF726658),
                ),
              ),
            ),
          ),
          Positioned(
            left: 27,
            bottom: 126,
            child: SizedBox(
              height: 18,
              child: Text(
                'Seat :',
                style: GoogleFonts.getFont(
                  'Inika',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF726658),
                ),
              ),
            ),
          ),
          Positioned(
            left: 29,
            bottom: 235,
            child: SizedBox(
              height: 18,
              child: Text(
                'go at :',
                style: GoogleFonts.getFont(
                  'Inika',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFFC2B59B),
                ),
              ),
            ),
          ),
          Positioned(
            right: 95.2,
            bottom: 235,
            child: SizedBox(
              height: 18,
              child: Text(
                'arrive :',
                style: GoogleFonts.getFont(
                  'Inika',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFFC2B59B),
                ),
              ),
            ),
          ),
          Positioned(
            left: 27.2,
            bottom: 89,
            child: SizedBox(
              height: 20,
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    height: 1.2,
                    color: Color(0x99050505),
                  ),
                  children: [
                    TextSpan(
                      text: 'Total Price :',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        height: 1.3,
                      ),
                    ),
                    TextSpan(
                      text: '112 LE',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        height: 1.3,
                        color: Color(0xF2050505),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
