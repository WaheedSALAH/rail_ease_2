import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rail_ease/auth/creation_an_account.dart';
import 'package:rail_ease/auth/login.dart';
import 'package:rail_ease/pages/basic_page%20.dart';
import 'package:rail_ease/pages/home_page.dart';
import 'package:rail_ease/pages/onboarding_screen.dart';
import 'package:rail_ease/pages/splash.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _showSplash = true;

  @override
  void initState() {
    super.initState();
    _startSplashTimer();
  }

  void _startSplashTimer() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _showSplash = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: _showSplash ? Splash() : AuthHandler(),
      routes: {
        '/homepage': (context) => HomePage(),
        '/register': (context) => CreationAnAccount(),
        '/login': (context) => Login(),
        '/onboarding': (context) => OnboardingScreen(), // Add the onboarding
        '/basic': (context) => BasicPage(), // Add BasicPage route
      },
    );
  }
}

class AuthHandler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
              child: CircularProgressIndicator()); // Loading indicator
        } else if (snapshot.hasData) {
          return BasicPage(); // User is signed in
        } else {
          return HomePage(); // User is signed out
        }
      },
    );
  }
}
