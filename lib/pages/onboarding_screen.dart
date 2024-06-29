import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rail_ease/pages/basic_page%20.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: OnboardingContent(),
    );
  }
}

class OnboardingContent extends StatefulWidget {
  @override
  _OnboardingContentState createState() => _OnboardingContentState();
}

class _OnboardingContentState extends State<OnboardingContent> {
  int _currentIndex = 0;

  void _nextScreen() {
    setState(() {
      _currentIndex++;
      if (_currentIndex > 2) {
        // Add action for the "Get Start" button
        // For example, navigate to a new screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => BasicPage()),
        );
      }
    });
  }

  void _skipToBasicPage1() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => BasicPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/vectors/vector_62_x2.svg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(18, 41, 18, 29),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 235.7, bottom: 102),
                  child: ElevatedButton(
                    onPressed: () {
                      _skipToBasicPage1();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
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
                SizedBox(
                  width: 277,
                  height: 294,
                  child: Image.asset(
                    _currentIndex == 0
                        ? 'assets/images/fast.png'
                        : _currentIndex == 1
                            ? 'assets/images/ellipse_1.jpeg'
                            : 'assets/images/ellipse_12.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  _currentIndex == 0
                      ? 'fast ticket read qr-code'
                      : _currentIndex == 1
                          ? 'Know time to arrive'
                          : 'Book Your Ticket',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inika(
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                    height: 1.3,
                    color: Color(0xFF121111),
                  ),
                ),
                SizedBox(height: 167),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25, bottom: 15),
                      child: Row(
                        children: [
                          _buildIndicatorDot(_currentIndex == 0
                              ? Color(0xFFFF0000)
                              : Color(0x26FF0000)),
                          _buildIndicatorDot(_currentIndex == 1
                              ? Color(0xFFFF0000)
                              : Color(0x26FF0000)),
                          _buildIndicatorDot(_currentIndex == 2
                              ? Color(0xFFFF0000)
                              : Color(0x26FF0000)),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: _nextScreen,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFF0000),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        padding: EdgeInsets.fromLTRB(0, 11, 2.1, 16),
                      ),
                      child: Text(
                        _currentIndex == 2 ? 'Get Start' : 'NEXT',
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
    );
  }

  Widget _buildIndicatorDot(Color color) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      width: 10,
      height: 10,
    );
  }
}

class FastTicket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text(
          'Fast Ticket Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
