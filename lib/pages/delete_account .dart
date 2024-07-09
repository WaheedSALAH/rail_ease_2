import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DeleteAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
            15, 42, 10.9, 20), // Adjust bottom padding for better layout
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(context),
            SizedBox(height: 41),
            _buildDescription(),
            Spacer(),
            _buildDeleteButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: SvgPicture.asset(
            'assets/vectors/back_8_x2.svg',
            width: 35.9,
            height: 38.8,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Text(
          'Delete Account',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Color(0xFF1E1E2D),
          ),
        ),
        SizedBox(width: 35.9), // Placeholder to balance the row
      ],
    );
  }

  Widget _buildDescription() {
    return Text(
      'Are you sure you want to delete your account? Please read how account deletion will affect. Deleting your account removes personal information from our database. Your email becomes permanently reserved and the same email cannot be reused to register a new account.',
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 1.6,
        color: Color(0xFF717171),
      ),
    );
  }

  Widget _buildDeleteButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          padding: const EdgeInsets.symmetric(
              vertical: 12, horizontal: 35.4), // Added vertical padding value
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        onPressed: () {
          // Handle delete account action
        },
        child: Text(
          'Delete',
          style: GoogleFonts.inika(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            letterSpacing: -0.4,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
