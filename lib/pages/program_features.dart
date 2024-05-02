import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgramFeatures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF866E6E),
      body: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/vectors/vector_10_x2.svg',
              fit: BoxFit.fill,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 41),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Text(
                    'Skip',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xFFD7D7D7),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/vectors/fxemojimountainrailway_x2.svg',
                      height: 356,
                      width: 328,
                    ),
                    SizedBox(height: 41),
                    Text(
                      'Program Features',
                      style: GoogleFonts.inika(
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                        color: Color(0xFF2B2727),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Try this smart app for your next train booking ticket',
                      style: GoogleFonts.inika(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1.7,
                        color: Color(0xA30D0D0D),
                      ),
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildIndicatorRow(),
                        ElevatedButton(
                          onPressed: () {
                            // Add action for NEXT button
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFFF0202),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 11,
                              horizontal: 16,
                            ),
                          ),
                          child: Text(
                            'NEXT',
                            style: GoogleFonts.inika(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              letterSpacing: -0.4,
                              color: Colors.white,
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
        ],
      ),
    );
  }

  Widget _buildIndicatorRow() {
    return Row(
      children: List.generate(
        4,
        (index) => Container(
          margin: EdgeInsets.only(right: 12),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: index == 0 ? Color(0xFFFF0000) : Color(0x70F70C0C),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
