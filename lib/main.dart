// main.dart
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:rail_ease/pages/add_card%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/change_password%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/creation_an_account%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/login%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/menu%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/onboarding_screen%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/reset_password%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/select_your_train.dart';
import 'package:rail_ease/pages/settings%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/verify_new_account%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/verify_forget_pass%20%E2%9C%94%EF%B8%8F.dart';

import 'pages/basic_page ✔️.dart';
import 'pages/forget ✔️.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: Scaffold(
        // body: AddCard(),
        // body: BasicPage(),
        // body: Menu(),
        // body: BookYourTicket(),
        // body: ChangePassword(),
        // body: Correct(),
        // body: CreationAnAccount(),
        // body: DeleteAccount(),
        // body: DownloadTicket(),
        // body: EditProfile(),
        // body: EnableLocation(),
        // body: FastTicket(),
        // body: Forget(),
        // body: HomePage(),
        // body: Language(),
        // body: Location(),
        // body: LogOut(),
        // body: Login(),
        // body: MyTicket(),
        // body: NotCorrect(),
        // body: Notifications(),
        // body: PrivacyPolicy(),
        // body: Forget(),
        // body: ResetPassword(),
        // body: ScanQr(),
        // body: SelectSeat1(),
        // body: SelectSeat2(),
        // body: SelectSeat3(),
        // body: SelectSeat4(),
        // body: SelectYourTrain(),
        // body: Settings(),
        // body: Splash(),
        // body: TimeToArrive(),
        // body: Verify_Email(),
        // body: Verify_password(),
        body: OnboardingScreen(),
      ),
    );
  }
}
