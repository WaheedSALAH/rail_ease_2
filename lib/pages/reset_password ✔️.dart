import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: ResetPassword(),
  ));
}

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmNewPasswordController = TextEditingController();
  bool passwordsMatch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Your Password'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PasswordField(
                label: 'New Password',
                controller: newPasswordController,
              ),
              SizedBox(height: 20.0),
              PasswordField(
                label: 'Confirm New Password',
                controller: confirmNewPasswordController,
                onChanged: (value) {
                  setState(() {
                    passwordsMatch = newPasswordController.text == value;
                  });
                },
              ),
              SizedBox(height: 20.0),
              if (!passwordsMatch)
                Text(
                  'Both Passwords Must Match',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color.fromARGB(255, 117, 0, 0),
                  ),
                ),
              SizedBox(height: 20.0),
              Align(
                alignment: Alignment.center,
                child: Rectangle29Button(), // Reset Password button
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  final String label;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const PasswordField({
    Key? key,
    required this.label,
    this.controller,
    this.onChanged,
  }) : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            height: 1,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromARGB(255, 0, 0, 0), // Change color if needed
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              Container(
                width: 22,
                height: 22,
                child: SvgPicture.asset('assets/vectors/group_5_x2.svg'),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    TextField(
                      controller: widget.controller,
                      onChanged: widget.onChanged,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter ${widget.label}',
                        hintStyle: TextStyle(
                          color: Color(0xFFA2A2A7),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Color(0xFFA2A2A7),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Rectangle29Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Add functionality to reset password
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      child: Ink(
        width: 266.93,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFFFF0000),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Center(
          child: Text(
            'Reset Password',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
