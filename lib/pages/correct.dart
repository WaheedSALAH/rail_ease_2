import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Correct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: -219,
            child: SizedBox(
              width: 365,
              height: 241.2,
              child: SvgPicture.asset(
                'assets/vectors/group_126_x2.svg',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(2.9, 460, 0, 325),
            child: Text(
              'Access information',
              style: GoogleFonts.getFont(
                'Inika',
                fontWeight: FontWeight.w400,
                fontSize: 24,
                height: 1.1,
                color: Color(0xFFFF0000),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
