import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'add_card ✔️.dart';

class SelectSeat extends StatefulWidget {
  final String? selectedTrainImage; // Make the parameter nullable

  SelectSeat({this.selectedTrainImage}); // Make the parameter optional

  @override
  _SelectSeatState createState() => _SelectSeatState();
}

class _SelectSeatState extends State<SelectSeat> {
  // Track seat selection
  List<List<bool>> seatSelected =
      List.generate(4, (_) => List.generate(5, (_) => false));

  // PageController for PageView
  final PageController _pageController = PageController();

  // Price per seat
  final int pricePerSeat = 15;

  // Calculate the total price based on the number of selected seats
  int calculateTotalPrice() {
    int totalSelectedSeats = 0;
    for (var row in seatSelected) {
      for (var seat in row) {
        if (seat) {
          totalSelectedSeats++;
        }
      }
    }
    return totalSelectedSeats * pricePerSeat;
  }

  @override
  Widget build(BuildContext context) {
    int totalPrice = calculateTotalPrice(); // Calculate total price

    return Scaffold(
      backgroundColor: Color(0xFFE3E3E3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 140,
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    widget.selectedTrainImage ?? 'assets/images/train1.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildSeatIconWithText(Colors.grey, 'Available'),
                  _buildSeatIconWithText(Colors.red, 'Selected'),
                  _buildSeatIconWithText(Colors.black, 'Filled'),
                ],
              ),
              SizedBox(height: 10),
              _buildSeatLayout(),
              SizedBox(height: 20),
              Divider(color: Colors.black),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Price: $totalPrice LE', // Display total price
                    style: _getTextStyle(Colors.red),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AddCard(), // Navigate to AddCart page
                        ),
                      );
                    },
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AddCard(), // Navigate to AddCart page
                          ),
                        );
                      },
                      child: Text(
                        'Continue',
                        style: _getTextStyle(Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSeatIcon(Color color, int column, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          seatSelected[column][index] =
              !seatSelected[column][index]; // Toggle selection
        });
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: seatSelected[column][index] ? Colors.red : color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color(0x40000000),
              offset: Offset(0, 3),
              blurRadius: 3,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSeatIconWithText(Color color, String text) {
    return Expanded(
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0x40000000),
                  offset: Offset(0, 3),
                  blurRadius: 3,
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Center(
            child: Text(
              text,
              style: _getTextStyle(color),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSeatLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 20), // Space on the left
        Column(
          children: List.generate(
            5, // Generate 5 seats per column
            (index) {
              return Column(
                children: [
                  _buildSeatIcon(Colors.grey, 0, index), // First column
                  SizedBox(height: 10), // Small space between each seat
                ],
              );
            },
          ),
        ),
        SizedBox(width: 20), // Space between the two pairs of columns
        Column(
          children: List.generate(
            5, // Generate 5 seats per column
            (index) {
              return Column(
                children: [
                  _buildSeatIcon(Colors.grey, 1, index), // Second column
                  SizedBox(height: 10), // Small space between each seat
                ],
              );
            },
          ),
        ),
        SizedBox(width: 60), // Space between the two pairs of columns
        Column(
          children: List.generate(
            5, // Generate 5 seats per column
            (index) {
              return Column(
                children: [
                  _buildSeatIcon(Colors.grey, 2, index), // Third column
                  SizedBox(height: 10), // Small space between each seat
                ],
              );
            },
          ),
        ),
        SizedBox(width: 20), // Space between the two pairs of columns
        Column(
          children: List.generate(
            5, // Generate 5 seats per column
            (index) {
              return Column(
                children: [
                  _buildSeatIcon(Colors.grey, 3, index), // Fourth column
                  SizedBox(height: 10), // Small space between each seat
                ],
              );
            },
          ),
        ),
        SizedBox(width: 20), // Space on the right
      ],
    );
  }

  TextStyle _getTextStyle(Color color) {
    return GoogleFonts.getFont(
      'Inika',
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: color,
    );
  }
}
