import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rail_ease/auth/creation_an_account%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/auth/login%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/home_page%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/onboarding_screen%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/splash%20%E2%9C%94%EF%B8%8F.dart';

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
  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('================================User is currently signed out!');
      } else {
        print('====================================User is signed in!');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: Splash(),
      routes: {
        '/homepage': (context) => HomePage(),
        '/register': (context) => CreationAnAccount(),
        '/login': (context) => Login(),
        '/onboarding': (context) => OnboardingScreen(), // Add the onboarding
      },
    );
  }
}
