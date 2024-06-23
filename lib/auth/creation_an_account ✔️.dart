import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rail_ease/auth/login%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/onboarding_screen%20%E2%9C%94%EF%B8%8F.dart';

class CreationAnAccount extends StatefulWidget {
  const CreationAnAccount({super.key});

  @override
  _CreationAnAccountState createState() => _CreationAnAccountState();
}

class _CreationAnAccountState extends State<CreationAnAccount> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  String _errorMessage = '';

  void _createAccount() async {
    if (_formKey.currentState!.validate()) {
      try {
        final credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnboardingScreen(),
          ),
        );
      } on FirebaseAuthException catch (e) {
        setState(() {
          if (e.code == 'weak-password') {
            _errorMessage = 'The password provided is too weak.';
          } else if (e.code == 'email-already-in-use') {
            _errorMessage = 'The account already exists for that email.';
          } else {
            _errorMessage = e.message!;
          }
        });
      } catch (e) {
        setState(() {
          _errorMessage = e.toString();
        });
      }
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
      });
      rethrow;
    }
  }

  Future<UserCredential> signInWithFacebook() async {
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);
      return await FirebaseAuth.instance
          .signInWithCredential(facebookAuthCredential);
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
      });
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.fromLTRB(15, 42, 20, 45),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 13),
                  Center(
                    child: Text(
                      'Create an account',
                      style: GoogleFonts.inika(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: const Color(0xFFFF0000),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  buildInputField('User name', controller: _usernameController),
                  const SizedBox(height: 10),
                  buildInputField('Email', controller: _emailController),
                  const SizedBox(height: 10),
                  buildInputField('Password',
                      controller: _passwordController, obscureText: true),
                  const SizedBox(height: 10),
                  buildInputField('Confirm Password',
                      controller: _confirmPasswordController,
                      obscureText: true),
                  if (_errorMessage.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Center(
                        child: Text(
                          _errorMessage,
                          style: const TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                  const SizedBox(height: 33),
                  Center(
                    child: ElevatedButton(
                      onPressed: _createAccount,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF0000),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        elevation: 2,
                      ),
                      child: Container(
                        width: 200,
                        padding: const EdgeInsets.symmetric(
                            vertical: 11, horizontal: 6.8),
                        child: Text(
                          'Create Account',
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
                  const SizedBox(height: 40),
                  const Divider(color: Colors.black, height: 1),
                  const SizedBox(height: 23.3),
                  Center(
                    child: Text(
                      'Or Login with',
                      style: GoogleFonts.inika(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 23.3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          try {
                            await signInWithFacebook();
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OnboardingScreen(),
                              ),
                            );
                          } catch (e) {
                            print(e);
                          }
                        },
                        child: buildSocialLoginButton(
                            'assets/vectors/vector_28_x2.svg'),
                      ),
                      const SizedBox(width: 15),
                      GestureDetector(
                        onTap: () async {
                          try {
                            await signInWithGoogle();
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OnboardingScreen(),
                              ),
                            );
                          } catch (e) {
                            print(e);
                          }
                        },
                        child: buildSocialLoginButton(
                            'assets/vectors/group_123_x2.svg'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 23.3),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'I Already Have an Account ',
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFFA0A0A0),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Login',
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
                                    builder: (context) => Login(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInputField(String labelText,
      {bool obscureText = false, required TextEditingController controller}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0x2EFFFFFF),
        boxShadow: const [
          BoxShadow(
            color: Color(0x40000000),
            offset: Offset(0, 4),
            blurRadius: 2,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(13, 10, 0, 17),
        child: SizedBox(
          height: 35,
          child: TextFormField(
            controller: controller,
            obscureText: obscureText,
            validator: (value) {
              if (labelText == 'Email' &&
                  (value == null || !value.contains('@'))) {
                return 'Please enter a valid email';
              } else if ((labelText == 'Password' ||
                      labelText == 'Confirm Password') &&
                  (value == null || value.length < 6)) {
                return 'Password must be at least 6 characters long';
              } else if (labelText == 'Confirm Password' &&
                  value != _passwordController.text) {
                return 'Passwords do not match';
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: labelText,
              border: InputBorder.none,
            ),
            style: GoogleFonts.inika(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: const Color(0xD90D0D0D),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSocialLoginButton(String iconPath) {
    return Container(
      width: 65,
      height: 32.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x40000000),
            offset: Offset(0, 4),
            blurRadius: 2,
          ),
        ],
      ),
      padding: const EdgeInsets.all(3.2),
      child: SvgPicture.asset(iconPath),
    );
  }
}
