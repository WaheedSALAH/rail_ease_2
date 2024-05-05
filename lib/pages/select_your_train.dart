import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectYourTrain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0x33FFFFFF),
      child: Stack(
        children: [
          BackgroundImage(),
          TrainDetails(),
          BackdropFilterContainer(),
          PriceAndLanguageContainer(),
        ],
      ),
    );
  }
}

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        image: DecorationImage(
          image:
              AssetImage('assets/images/nasa_vh_sz_50_aa_fas_unsplash_1.jpeg'),
        ),
      ),
      width: double.infinity,
      height: 812,
      padding: EdgeInsets.fromLTRB(12, 27, 6, 0),
      child: Stack(
        children: [
          Positioned(
            left: -1707,
            bottom: -626,
            child: Opacity(
              opacity: 1,
              child: Container(
                width: 2998,
                height: 1541,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/vectors/back_1_x2.svg'),
                    Text(
                      'Select Your train',
                      style: GoogleFonts.getFont(
                        'Inika',
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        height: 0.9,
                        letterSpacing: -0.4,
                        color: Color(0xFFF90909),
                      ),
                    ),
                  ],
                ),
              ),
              // Other child widgets...
            ],
          ),
        ],
      ),
    );
  }
}

class TrainDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -15,
      bottom: -46,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0x66FFFFFF)),
              color: Color(0x1AFFFFFF),
            ),
            width: 393,
            height: 582,
          ),
        ),
      ),
    );
  }
}

class BackdropFilterContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -21,
      bottom: -105,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0x42B6ADAD),
        ),
        width: 401,
        height: 667,
        padding: EdgeInsets.fromLTRB(10, 24, 28, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Child widgets...
          ],
        ),
      ),
    );
  }
}

class PriceAndLanguageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -21,
      bottom: -105,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0x42B6ADAD),
        ),
        width: 401,
        height: 667,
        padding: EdgeInsets.fromLTRB(10, 24, 28, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Child widgets...
          ],
        ),
      ),
    );
  }
}
