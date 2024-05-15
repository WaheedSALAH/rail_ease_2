import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: GoogleFonts.getFont(
            'Inika',
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xFF0D0D0D),
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset('assets/vectors/back_20_x2.svg'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle('Today'),
              _buildNotificationItem(
                iconPath: 'assets/vectors/vector_313_x2.svg',
                message:
                    'The train from cairo to zagazig now arrives at the 1st...',
                time: 'Now',
              ),
              SizedBox(height: 26),
              _buildSectionTitle('Yesterday'),
              _buildNotificationItem(
                iconPath: 'assets/vectors/vector_82_x2.svg',
                message: 'Ticket purchase successful.',
                time: '20 May',
              ),
              SizedBox(height: 14),
              _buildNotificationItem(
                iconPath: 'assets/vectors/vector_14_x2.svg',
                message: 'Visit our website today. www.railway.gov.lk',
                time: '20 May',
              ),
              SizedBox(height: 14),
              _buildNotificationItem(
                iconPath: 'assets/vectors/vector_134_x2.svg',
                message: 'Ticket purchase successful.',
                time: '20 May',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 26, bottom: 9),
      child: Text(
        title,
        style: GoogleFonts.getFont(
          'Inika',
          fontWeight: FontWeight.w700,
          fontSize: 22,
          color: Color(0xFF0D0D0D),
        ),
      ),
    );
  }

  Widget _buildNotificationItem({
    required String iconPath,
    required String message,
    required String time,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(32.5),
            ),
            padding: EdgeInsets.all(20),
            child: SvgPicture.asset(
              iconPath,
              width: 28.5,
              height: 39.3,
            ),
          ),
          SizedBox(width: 19),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message,
                  style: GoogleFonts.getFont(
                    'Inika',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    height: 1.7,
                    letterSpacing: -0.3,
                    color: Color(0xB20D0D0D),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  time,
                  style: GoogleFonts.getFont(
                    'Inika',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    height: 1.8,
                    letterSpacing: -0.3,
                    color: Color(0x660D0D0D),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Notifications(),
  ));
}
