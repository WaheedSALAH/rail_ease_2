import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer in dispose
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer(Duration(seconds: 7), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => HomeScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    offset: const Offset(0, 4),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 75,
                  child: SvgPicture.asset(
                    'assets/vectors/container_1_x2.svg',
                    width: 150,
                    height: 150,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Welcome to\nRail Ease',
            textAlign: TextAlign.center,
            style: GoogleFonts.aDLaMDisplay(
              fontWeight: FontWeight.w400,
              fontSize: 38,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          Spacer(),
          Text(
            'Book Your Ticket Easily',
            style: GoogleFonts.aDLaMDisplay(
              fontWeight: FontWeight.w400,
              fontSize: 28,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

// Example of the home screen to navigate to
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('This is the home screen.'),
      ),
    );
  }
}
