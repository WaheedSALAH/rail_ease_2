// main.dart
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:rail_ease/generated/l10n.dart';

import 'package:rail_ease/pages/add_card%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/change_email ✔️.dart';
import 'package:rail_ease/pages/change_password%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/creation_an_account%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/edit_profile%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/login%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/menu%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/onboarding_screen%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/reset_password%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/select_your_train%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/settings%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/splash%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/verify_new_account%20%E2%9C%94%EF%B8%8F.dart';
import 'package:rail_ease/pages/verify_forget_pass%20%E2%9C%94%EF%B8%8F.dart';

import 'pages/Train_location.dart';
import 'pages/basic_page ✔️.dart';
import 'pages/delete_account ✔️.dart';
import 'pages/forget ✔️.dart';
import 'pages/home_page ✔️.dart';
import 'pages/language.dart';
import 'pages/my_ticket.dart';
import 'pages/notifications.dart';
import 'pages/privacy_policy.dart';
import 'pages/scan_qr.dart';
import 'pages/select_seat ✔️.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Flutter App',
      home: Scaffold(
        // body: AddCard(),
        // body: ChangeEmail(),
        // body: BasicPage(),
        // body: Menu(),
        // body: BookYourTicket(),
        // body: ChangePassword(),
        // body: CreationAnAccount(),
        // body: DeleteAccount(),
        // body: EditProfile(),
        // body: EnableLocation(),
        // body: FastTicket(),
        // body: Forget(),
        body: HomePage(),
        // body: Language(),
        // body: TrainLocation(),
        // body: LogOut(),
        // body: Login(),
        // body: MyTicket(),
        // body: NotCorrect(),
        // body: Notifications(),
        // body: PrivacyPolicy(),
        // body: Forget(),
        // body: ResetPassword(),
        // body: ScanQr(),
        // body: SelectSeat(),
        // body: SelectYourTrain(),
        // body: Settings(),
        // body: Splash(),
        // body: TimeToArrive(),
        // body: Verify_Email(),
        // body: VerifyPassword(),
        // body: OnboardingScreen(),
      ),
    );
  }
}
