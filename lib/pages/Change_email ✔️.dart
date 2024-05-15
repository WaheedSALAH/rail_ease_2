import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'edit_profile ✔️.dart';
import 'forget ✔️.dart'; // Import the ForgetPassword page

void main() {
  runApp(MaterialApp(
    home: ChangeEmail(),
  ));
}

class ChangeEmail extends StatefulWidget {
  @override
  _ChangeEmailState createState() => _ChangeEmailState();
}

class _ChangeEmailState extends State<ChangeEmail> {
  TextEditingController newEmailController = TextEditingController();
  TextEditingController confirmNewEmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool emailsMatch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Custom app bar with back icon
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => EditProfile()),
                      ); // Navigate to the EditProfile page
                    },
                  ),
                  Text(
                    'Change Email',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              EmailField(label: 'Current Email'),
              SizedBox(height: 20.0),
              EmailField(
                label: 'New Email',
                controller: newEmailController,
              ),
              SizedBox(height: 20.0),
              EmailField(
                label: 'Confirm New Email',
                controller: confirmNewEmailController,
                onChanged: (value) {
                  setState(() {
                    emailsMatch = newEmailController.text == value;
                  });
                },
              ),
              SizedBox(height: 20.0),
              PasswordField(label: 'Password', controller: passwordController),
              SizedBox(height: 10.0),
              GestureDetector(
                onTap: () {
                  // Navigate to Forget Password page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Forget()),
                  );
                },
                child: Text(
                  'Forget Password?',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              if (!emailsMatch)
                Text(
                  'Both Emails Must Match',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color.fromARGB(255, 117, 0, 0),
                  ),
                ),
              SizedBox(height: 20.0),
              Align(
                alignment: Alignment.center,
                child: Rectangle29Button(), // Change Email button
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EmailField extends StatefulWidget {
  final String label;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const EmailField({
    Key? key,
    required this.label,
    this.controller,
    this.onChanged,
  }) : super(key: key);

  @override
  _EmailFieldState createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
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
                child: TextField(
                  controller: widget.controller,
                  onChanged: widget.onChanged,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter ${widget.label}',
                    hintStyle: TextStyle(
                      color: Color(0xFFA2A2A7),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PasswordField extends StatefulWidget {
  final String label;
  final TextEditingController? controller;

  const PasswordField({
    Key? key,
    required this.label,
    this.controller,
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
                child: TextField(
                  controller: widget.controller,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter ${widget.label}',
                    hintStyle: TextStyle(
                      color: Color(0xFFA2A2A7),
                    ),
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
    );
  }
}

class Rectangle29Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Add functionality to change email
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
            'Change Email',
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
