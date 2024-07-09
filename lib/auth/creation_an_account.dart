import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rail_ease/auth/login.dart';
import 'package:rail_ease/pages/onboarding_screen.dart';

class CreationAnAccount extends StatefulWidget {
  const CreationAnAccount({Key? key}) : super(key: key);

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
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  void _createAccount() async {
    if (_formKey.currentState!.validate()) {
      try {
        final UserCredential userCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );

        // Store additional user data in Firestore
        await FirebaseFirestore.instance
            .collection('Users')
            .doc(userCredential.user!.uid)
            .set({
          'username': _usernameController.text,
          'email': _emailController.text,
          // Store other relevant user data here
        });

        // Navigate to onboarding screen or any other screen
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    controller: _passwordController,
                    obscureText: _obscurePassword, toggleObscureText: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                }),
                const SizedBox(height: 10),
                buildInputField('Confirm Password',
                    controller: _confirmPasswordController,
                    obscureText: _obscureConfirmPassword,
                    toggleObscureText: () {
                  setState(() {
                    _obscureConfirmPassword = !_obscureConfirmPassword;
                  });
                }),
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
    );
  }

  Widget buildInputField(String labelText,
      {bool obscureText = false,
      required TextEditingController controller,
      VoidCallback? toggleObscureText}) {
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
        padding: const EdgeInsets.fromLTRB(17, 13.5, 17.5, 11.5),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: controller,
                obscureText: obscureText,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your $labelText';
                  }
                  if (labelText == 'Confirm Password' &&
                      value != _passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: labelText,
                  hintStyle: const TextStyle(
                    fontSize: 15,
                    color: Color(0xFFABABAB),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            if (labelText.contains('Password'))
              IconButton(
                onPressed: toggleObscureText,
                icon: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                  color: const Color(0xFFABABAB),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget buildSocialLoginButton(String assetPath) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x0D000000),
            blurRadius: 30,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: SvgPicture.asset(assetPath),
      ),
    );
  }
}
