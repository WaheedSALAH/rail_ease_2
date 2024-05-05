import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // deleted color from here

        borderRadius: BorderRadius.circular(34),
        image: DecorationImage(
          image: AssetImage(
            'assets/images/home_page.jpeg',
          ),
        ),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 381, 0, 315.9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15.9),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFF0000),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Container(
                  width: 222,
                  padding: EdgeInsets.fromLTRB(8.2, 12.5, 0, 14.5),
                  child: Text(
                    'Register',
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
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Container(
                width: 222,
                padding: EdgeInsets.fromLTRB(0, 10.5, 7.7, 16.6),
                child: Text(
                  'Log in',
                  style: GoogleFonts.getFont(
                    'Inika',
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    letterSpacing: -0.4,
                    color: Color(0xFFFF0000),
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
