import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rail_ease/auth/creation_an_account.dart';
import 'package:rail_ease/pages/forget.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _forgetPasswordClicked = false;
  bool _registerNowClicked = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(15, 42, 20, 45),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  'Welcome Back!',
                  style: GoogleFonts.inika(
                    fontWeight: FontWeight.w700,
                    fontSize: 40,
                    color: Color(0xFFFF0000),
                  ),
                ),
                SizedBox(height: 40),
                buildInputField('Email', 'assets/vectors/subtract_2_x2.svg',
                    _emailController),
                SizedBox(height: 20),
                buildInputField('Password', 'assets/vectors/group_21_x2.svg',
                    _passwordController,
                    obscureText: true),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    setState(() {
                      _forgetPasswordClicked = !_forgetPasswordClicked;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Forget(),
                        ),
                      );
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: _forgetPasswordClicked
                              ? Colors.red
                              : Colors.transparent,
                          width: 2,
                        ),
                      ),
                    ),
                    child: Text(
                      'Forget Password?',
                      style: GoogleFonts.inika(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: _forgetPasswordClicked
                            ? Colors.red
                            : Color(0xFFFF0101),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () async {
                      try {
                        final credential = await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                          email: _emailController.text,
                          password: _passwordController.text,
                        );
                        Navigator.pushReplacementNamed(context, '/onboarding');
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          print('No user found for that email.');
                        } else if (e.code == 'wrong-password') {
                          print('Wrong password provided for that user.');
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFF0000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      elevation: 2,
                    ),
                    child: Container(
                      width: 200,
                      padding:
                          EdgeInsets.symmetric(vertical: 11, horizontal: 6.8),
                      child: Text(
                        'Login',
                        style: GoogleFonts.inika(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          letterSpacing: -0.4,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(
                    //   'Or Login with',
                    //   style: GoogleFonts.inika(
                    //     fontWeight: FontWeight.w700,
                    //     fontSize: 16,
                    //     color: Colors.black,
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // children: [
                  //   GestureDetector(
                  //     onTap: () {
                  //       // Add action for Facebook login
                  //     },
                  //     child: buildSocialLoginButton(
                  //         'assets/vectors/vector_28_x2.svg'),
                  //   ),
                  //   SizedBox(width: 15),
                  //   GestureDetector(
                  //     onTap: () {
                  //       // Add action for Google login
                  //     },
                  //     child: buildSocialLoginButton(
                  //         'assets/vectors/group_123_x2.svg'),
                  //   ),
                  // ],
                ),
                SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: 'Don’t have an account?',
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFFA0A0A0),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Register Now',
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CreationAnAccount(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInputField(
      String labelText, String iconPath, TextEditingController controller,
      {bool obscureText = false}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFF3F3F3),
        boxShadow: const [
          BoxShadow(
            color: Color(0x40000000),
            offset: Offset(0, 4),
            blurRadius: 2,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 19, 0, 10),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              width: 22.1,
              height: 19,
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                controller: controller,
                obscureText: obscureText,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: labelText,
                  hintStyle: const TextStyle(
                    color: Color(0x96000000),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSocialLoginButton(String iconPath) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x40000000),
                offset: Offset(0, 4),
                blurRadius: 2,
              ),
            ],
          ),
          width: 65,
          height: 32.7,
          padding: EdgeInsets.all(5),
          child: SvgPicture.asset(
            iconPath,
            width: 24,
            height: 25,
          ),
        ),
      ],
    );
  }
}
