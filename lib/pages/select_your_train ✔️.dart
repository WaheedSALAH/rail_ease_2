import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'basic_page ✔️.dart';
import 'select_seat ✔️.dart';

void main() {
  runApp(SelectYourTrain());
}

class SelectYourTrain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SelectTrainPage(),
    );
  }
}

class SelectTrainPage extends StatelessWidget {
  final List<String> trainImages = [
    'assets/images/train1.png',
    'assets/images/train2.png',
    'assets/images/train3.png',
    'assets/images/train4.png',
    'assets/images/train5.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BasicPage(),
              ),
            );
          },
        ),
        title: Text(
          'Select seat',
          style: GoogleFonts.getFont(
            'Inika',
            fontWeight: FontWeight.w400,
            fontSize: 30,
            color: Color(0xFFFF0000),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: trainImages.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      SelectSeat(selectedTrainImage: trainImages[index]),
                ),
              );
            },
            child: ListTile(
              title: Image.asset(trainImages[index]),
            ),
          );
        },
      ),
    );
  }
}
