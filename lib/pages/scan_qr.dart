import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ScanQr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -42,
            top: 592,
            child: Container(
              width: 437,
              height: 87,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x40000000),
                    offset: Offset(0, 4),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: SvgPicture.asset(
                'assets/vectors/union_4_x2.svg',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(21, 133, 11, 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 16.6, 5),
                  child: Text(
                    'Scan QR Code  ',
                    style: GoogleFonts.getFont(
                      'Inika',
                      fontWeight: FontWeight.w700,
                      fontSize: 29,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 13.5, 103),
                  child: Text(
                    'place QR inside the frame to scan ',
                    style: GoogleFonts.getFont(
                      'Inika',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xEDBBBBBB),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 10.8, 91),
                  child: SizedBox(
                    width: 216.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0.1),
                          child: SizedBox(
                            width: 56.2,
                            height: 63.9,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_303_x2.svg',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 56,
                          height: 64,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_115_x2.svg',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 10.6, 29.1),
                  child: SizedBox(
                    width: 216.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 56.2,
                          height: 63.9,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_2_x2.svg',
                          ),
                        ),
                        SizedBox(
                          width: 56.2,
                          height: 63.9,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_209_x2.svg',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 13, 186),
                  child: Text(
                    'scanning Code...',
                    style: GoogleFonts.getFont(
                      'Inika',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF595959),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                              'assets/images/home.png',
                            ),
                          ),
                        ),
                        child: Container(
                          width: 48,
                          height: 56,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: SizedBox(
                        width: 57,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 7),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(
                                      'assets/images/qr_code.png',
                                    ),
                                  ),
                                ),
                                child: Container(
                                  width: 57,
                                  height: 38,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(2.5),
                              ),
                              child: Container(
                                width: 5,
                                height: 5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                              'assets/images/account.png',
                            ),
                          ),
                        ),
                        child: Container(
                          width: 58,
                          height: 42,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
