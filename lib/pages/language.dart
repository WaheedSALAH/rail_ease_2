import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  String selectedLanguage = 'English'; // Initial selected language

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(19, 42, 21, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(context),
            SizedBox(height: 90.3),
            _buildLanguageOption(
              language: 'English',
              imageAsset: 'assets/images/rectangle_21.png',
              isSelected: selectedLanguage == 'English',
              onTap: () => _selectLanguage('English'),
            ),
            SizedBox(height: 20),
            _buildLanguageOption(
              language: 'Arabic',
              imageAsset: 'assets/images/arabic.png',
              isSelected: selectedLanguage == 'Arabic',
              onTap: () => _selectLanguage('Arabic'),
            ),
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
            'assets/vectors/back_4_x2.svg',
            width: 39.4,
            height: 42.7,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Text(
          'Language',
          style: GoogleFonts.inika(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xFF1E1E2D),
          ),
        ),
        SizedBox(width: 39.4), // Placeholder to balance the row
      ],
    );
  }

  Widget _buildLanguageOption({
    required String language,
    required String imageAsset,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF1E1E2D),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset(
                    imageAsset,
                    width: 48,
                    height: 48,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 16),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  language,
                  style: GoogleFonts.inika(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xFF1E1E2D),
                  ),
                ),
              ),
            ],
          ),
          if (isSelected)
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF0066FF),
                borderRadius: BorderRadius.circular(9),
              ),
              padding: const EdgeInsets.all(5),
              child: SvgPicture.asset(
                'assets/vectors/stroke_31_x2.svg',
                width: 8,
                height: 5.8,
              ),
            ),
        ],
      ),
    );
  }

  void _selectLanguage(String language) {
    setState(() {
      selectedLanguage = language;
    });
  }
}

void main() {
  runApp(MaterialApp(
    home: Language(),
  ));
}
