import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rail_ease/pages/select_seat ✔️.dart';

class AddCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: WillPopScope(
        onWillPop: () async {
          // Navigate back when the back button is pressed
          Navigator.of(context).pop();
          // Return true to indicate that the back button press is handled
          return true;
        },
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.fromLTRB(23, 42, 24, 259),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTitle(context),
                SizedBox(height: 46),
                _buildInputField('CARD HOLDER NAME', 'name holder',
                    maxLength: null, format: null),
                _buildInputField('CARD NUMBER', 'Enter card number',
                    maxLength: 19, format: _CardNumberFormatter()),
                _buildExpiryAndCVC(),
                SizedBox(height: 48),
                _buildButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context); // Navigate back to SelectSeat
          },
          child: SvgPicture.asset(
              'assets/vectors/back_11_x2.svg'), // Adjust the path if needed
        ),
        Text(
          'Add Card',
          style: GoogleFonts.getFont(
            'Inika',
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xFF0D0D0D),
          ),
        ),
      ],
    );
  }

  Widget _buildInputField(String label, String hintText,
      {int? maxLength, TextInputFormatter? format}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.getFont(
            'Inika',
            fontWeight: FontWeight.w400,
            fontSize: 14,
            height: 1.7,
            color: Color(0xFFA0A5BA),
          ),
        ),
        SizedBox(height: 8),
        TextField(
          inputFormatters: format != null ? [format] : null,
          maxLength: maxLength,
          decoration: InputDecoration(
            counterText: '', // Hide character counter
            filled: true,
            fillColor: Color(0xFFF0F5FA),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            hintText: hintText,
            hintStyle: TextStyle(
              fontFamily: 'Inika',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xFF32343E),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildExpiryAndCVC() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildInputField('EXPIRE DATE', 'mm/yyyy',
                  maxLength: 7, format: _ExpiryDateFormatter()),
            ],
          ),
        ),
        SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildInputField('CVC', '',
                  maxLength: 3, format: FilteringTextInputFormatter.digitsOnly),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildButtons() {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 23),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF121212)),
              borderRadius: BorderRadius.circular(14),
              color: Color(0x21FFFFFF),
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Cancel',
                style: TextStyle(
                  fontFamily: 'Inika',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  letterSpacing: -0.4,
                  color: Color(0x820E0E0E),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Color(0xFFFF0000),
              boxShadow: [
                BoxShadow(
                  color: Color(0x40000000),
                  offset: Offset(0, 4),
                  blurRadius: 2,
                ),
              ],
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Pay now',
                style: TextStyle(
                  fontFamily: 'Inika',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  letterSpacing: -0.4,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text.replaceAll(' ', ''); // Remove existing spaces
    var buffer = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      buffer.write(text[i]);
      var nonSpaceIndex = i + 1;
      if (nonSpaceIndex % 4 == 0 && nonSpaceIndex != text.length) {
        buffer.write(' '); // Add space after every 4 characters
      }
    }
    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}

class _ExpiryDateFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text;

    if (newText.length < oldValue.text.length) return newValue;

    var result = "";

    if (newText.contains("/")) {
      final dates = newText.split("/");
      final month = dates.first;
      final year = dates.last;
      if (year.length >= 2) {
        result = "$month/${year.substring(0, 2)}";
      } else {
        result = newText;
      }
    } else {
      if (newText.length == 2) {
        result = "$newText/";
      } else {
        result = newText;
      }
    }

    return newValue.copyWith(
      text: result,
      selection: TextSelection.fromPosition(
        TextPosition(offset: result.length),
      ),
    );
  }
}
