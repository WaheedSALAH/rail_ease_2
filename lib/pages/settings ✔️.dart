import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'change_password ✔️.dart';
import 'language.dart'; // Import Language page

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(17, 16, 23, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 39.4,
                        height: 42.7,
                        child:
                            SvgPicture.asset('assets/vectors/back_14_x2.svg'),
                      ),
                      Text(
                        'Settings',
                        style: GoogleFonts.inika(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xFF1E1E2D),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                _buildSection('General', [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Language(),
                        ),
                      );
                    },
                    child: _buildSettingItem('Language', 'English'),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle Delete Account tap
                    },
                    child: _buildSettingItem('Delete Account', null),
                  ),
                ]),
                SizedBox(height: 24),
                _buildSection('Security', [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChangePassword(),
                        ),
                      );
                    },
                    child: _buildSettingItem('Change Password', null),
                  ),
                  _buildDivider(),
                  GestureDetector(
                    onTap: () {
                      // Handle Privacy Policy tap
                    },
                    child: _buildSettingItem('Privacy Policy', null),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.inika(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xFFA2A2A7),
          ),
        ),
        SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: items,
        ),
      ],
    );
  }

  Widget _buildSettingItem(String label, String? value) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 200,
            child: Text(
              label,
              style: GoogleFonts.inika(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xFF1E1E2D),
              ),
            ),
          ),
          value != null
              ? Row(
                  children: [
                    Text(
                      value,
                      style: GoogleFonts.inika(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF1E1E2D),
                      ),
                    ),
                    SizedBox(width: 7),
                    SvgPicture.asset('assets/vectors/path_8_x2.svg'),
                  ],
                )
              : SvgPicture.asset('assets/vectors/path_8_x2.svg'),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(1),
      ),
      height: 1,
    );
  }
}
