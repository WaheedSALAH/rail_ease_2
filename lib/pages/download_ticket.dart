import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DownloadTicket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 286, 0, 310),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: SizedBox(
            width: 376,
            child: Container(
              padding: EdgeInsets.fromLTRB(28, 89, 34, 30),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 34),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFE3E3E3)),
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFF4F4F4),
                          ),
                          child: Container(
                            width: 314,
                            height: 16,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(6.4, 0, 0, 0),
                          child: Text(
                            'wait please...',
                            style: GoogleFonts.getFont(
                              'Inika',
                              fontWeight: FontWeight.w700,
                              fontSize: 36,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: -0.8,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFF0000),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Container(
                        width: 162.7,
                        height: 15.9,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
