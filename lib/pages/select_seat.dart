import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rail_ease/pages/add_card.dart';

class SelectSeat extends StatefulWidget {
  final String arrivalStation;
  final String currentStation;
  final String ticketPrice;
  final String numberOfStops;
  final String tripDuration;
  final String trainType;
  final String arrivalTimeToStation;
  final String arrivalTimeToDestinationStation;
  final String trainNumber;

  SelectSeat({
    required this.arrivalStation,
    required this.currentStation,
    required this.ticketPrice,
    required this.numberOfStops,
    required this.tripDuration,
    required this.trainType,
    required this.arrivalTimeToStation,
    required this.arrivalTimeToDestinationStation,
    required this.trainNumber,
  });

  @override
  _SelectSeatState createState() => _SelectSeatState();
}

class _SelectSeatState extends State<SelectSeat> {
  int selectedRailcarId = 1; // Default value for dropdown

  List<List<bool>> seatSelected =
      List.generate(16, (_) => List.generate(4, (_) => false));

  int calculateTotalPrice() {
    int totalSelectedSeats = 0;
    for (var row in seatSelected) {
      for (var seat in row) {
        if (seat) {
          totalSelectedSeats++;
        }
      }
    }
    return totalSelectedSeats * int.parse(widget.ticketPrice);
  }

  @override
  Widget build(BuildContext context) {
    int totalPrice = calculateTotalPrice();

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
        title: Row(
          children: [
            Image.asset(
              'assets/images/trainCar.png', // Replace with your railcar icon path
              width: 40,
              height: 40,
            ),
            SizedBox(width: 10),
            DropdownButton<int>(
              value: selectedRailcarId, // Display currently selected railcar
              items: [1, 2, 3, 4, 5, 6].map((int value) {
                return DropdownMenuItem<int>(
                  value: value,
                  child: Text('Railcar $value'),
                );
              }).toList(),
              onChanged: (int? newValue) {
                if (newValue != null) {
                  setState(() {
                    selectedRailcarId = newValue;
                    // Perform actions based on the selected railcar ID if needed
                  });
                }
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTrainDetails(),
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
                    'Total Price: $totalPrice EGP',
                    style: _getTextStyle(Colors.red),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddCard(
                            totalPrice: totalPrice,
                            trainData: {
                              'arrivalStation': widget.arrivalStation,
                              'currentStation': widget.currentStation,
                              'trainNumber': widget.trainNumber,
                              'numberOfStops': widget.numberOfStops,
                              'tripDuration': widget.tripDuration,
                              'type': widget.trainType,
                              'arrivalTimeToStation':
                                  widget.arrivalTimeToStation,
                              'arrivalTimeToDestinationStation':
                                  widget.arrivalTimeToDestinationStation,
                            },
                          ),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTrainDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.currentStation,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.arrivalTimeToStation,
                  style: TextStyle(fontSize: 16, color: Colors.red),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Train Number: ${widget.trainNumber}',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  widget.arrivalStation,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.arrivalTimeToDestinationStation,
                  style: TextStyle(fontSize: 16, color: Colors.red),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.tripDuration, style: TextStyle(fontSize: 16)),
            Text('${widget.numberOfStops} stops',
                style: TextStyle(fontSize: 16)),
          ],
        ),
        SizedBox(height: 10),
        Text('Price: ${widget.ticketPrice} EGP',
            style: TextStyle(fontSize: 16, color: Colors.red)),
        SizedBox(height: 10),
        Text(widget.trainType,
            style: TextStyle(fontSize: 16, color: Colors.red)),
      ],
    );
  }

  Widget _buildSeatIcon(Color color, int row, int index, int seatNumber) {
    return GestureDetector(
      onTap: () {
        setState(() {
          seatSelected[row][index] = !seatSelected[row][index];
        });
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: seatSelected[row][index] ? Colors.red : color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color(0x40000000),
              offset: Offset(0, 3),
              blurRadius: 3,
            ),
          ],
        ),
        child: Center(
          child: Text(
            '$seatNumber',
            style: TextStyle(
              color: seatSelected[row][index] ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
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
    int seatNumber = 1;
    return Column(
      children: List.generate(
        16, // Generate 16 rows
        (row) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: List.generate(
                    2, // 2 seats on the left side
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: _buildSeatIcon(
                            Colors.grey, row, index, seatNumber++),
                      );
                    },
                  ),
                ),
                SizedBox(
                    width: 20), // Adjust space between left and right seats
                Row(
                  children: List.generate(
                    2, // 2 seats on the right side
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: _buildSeatIcon(
                            Colors.grey, row, index + 2, seatNumber++),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  TextStyle _getTextStyle(Color color) {
    return GoogleFonts.inter(
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
  }
}
