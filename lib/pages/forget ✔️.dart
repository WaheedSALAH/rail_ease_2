import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Forget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Forget Password'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 17, vertical: 42),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 45),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.red,
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: SvgPicture.asset(
                    'assets/vectors/vector_241_x2.svg',
                    width: 8.5,
                    height: 14.9,
                  ),
                ),
              ),
              Text(
                'Forgot password?',
                style: GoogleFonts.inika(
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                  height: 1.2,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 17),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF3F3F3),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40000000),
                      offset: Offset(0, 4),
                      blurRadius: 2,
                    ),
                  ],
                ),
                padding: EdgeInsets.fromLTRB(12, 20, 0, 12),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/vectors/shape_7_x2.svg',
                      width: 24.2,
                      height: 18,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your email address',
                          hintStyle: GoogleFonts.inika(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xFF676767),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 36),
              Text(
                '* We will send you a message to set or reset your new password',
                style: GoogleFonts.inika(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 36),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Submit',
                      style: GoogleFonts.inika(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        letterSpacing: -0.4,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
