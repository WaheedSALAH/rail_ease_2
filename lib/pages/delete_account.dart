import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DeleteAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 42, 10.9, 434),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(8, 0, 8, 41),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 271.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 2.2),
                        child: SizedBox(
                          width: 35.9,
                          height: 38.8,
                          child: SvgPicture.asset(
                            'assets/vectors/back_8_x2.svg',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 23, 0, 0),
                        child: Text(
                          'Delete Account',
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
              margin: EdgeInsets.fromLTRB(0, 0, 0, 66),
              child: Text(
                'Are you sure you want to delete your account? Please read how account deletion will affect.Deleting your account removes personal information our database. Tour email becomes permanently reserved and same email cannot be re-use to register a new account.',
                style: GoogleFonts.getFont(
                  'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 1.6,
                  color: Color(0xFF717171),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 7.1, 0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFF0000),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Container(
                    width: 152,
                    padding: EdgeInsets.fromLTRB(15.4, 12, 0, 15),
                    child: Text(
                      'Delete',
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
    );
  }
}
