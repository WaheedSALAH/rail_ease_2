import 'package:flutter/material.dart';

import 'package:rail_ease/pages/add_card.dart';
import 'package:rail_ease/pages/basic_page_1.dart';
import 'package:rail_ease/pages/creation_an_account.dart';
import 'package:rail_ease/pages/login.dart';
import 'package:rail_ease/pages/verify_empty.dart';

import 'pages/basic_page.dart';
import 'pages/forget.dart';

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
        // body: BasicPage1(),
        // body: BookYourTicket(),
        // body: Calendar(),
        // body: ChangePassword(),
        // body: Correct(),
        body: CreationAnAccount(),
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
        // body: PaymentMethodNoMastercard(),
        // body: PrivacyPolicy(),
        // body: ProgramFeatures(),
        // body: ResetEmpty(),
        // body: ScanQr(),
        // body: SelectSeat1(),
        // body: SelectSeat2(),
        // body: SelectSeat3(),
        // body: SelectSeat4(),
        // body: SelectYourTrain(),
        // body: Settings(),
        // body: Splash(),
        // body: TimeToArrive(),
        // body: VerifyActive(),
        // body: VerifyEmpty(),
      ),
    );
  }
}
