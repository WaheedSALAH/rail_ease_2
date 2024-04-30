import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NotCorrect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(34, 53, 34, 266),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 168.1),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 45,
                  height: 43.9,
                  child: SvgPicture.asset(
                    'assets/vectors/back_16_x2.svg',
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 53),
              width: 191,
              height: 197,
              child: SizedBox(
                width: 191,
                height: 197,
                child: SvgPicture.asset(
                  'assets/vectors/incorrect_symbol_x2.svg',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(4.1, 0, 0, 0),
              child: Text(
                'This ticket isn’t correct',
                style: GoogleFonts.getFont(
                  'Inika',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
