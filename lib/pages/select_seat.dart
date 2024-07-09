import 'package:cloud_firestore/cloud_firestore.dart';
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
  late List<List<bool>> seatSelected;
  late List<List<bool>> seatUnavailable;
  late FirebaseFirestore firestore;
  late CollectionReference trainsCollection;

  @override
  void initState() {
    super.initState();
    // Initialize Firestore
    firestore = FirebaseFirestore.instance;
    trainsCollection = firestore.collection('Trains');
    // Initialize seatSelected and seatUnavailable in initState
    seatSelected =
        List.generate(16, (row) => List.generate(4, (index) => false));
    seatUnavailable =
        List.generate(16, (row) => List.generate(4, (index) => false));
    fetchSelectedSeats();
  }

  void fetchSelectedSeats() async {
    try {
      QuerySnapshot snapshot = await trainsCollection
          .doc(widget.trainNumber)
          .collection('railcar')
          .doc(selectedRailcarId.toString())
          .collection('seats')
          .get();

      for (var doc in snapshot.docs) {
        int seatNumber = int.parse(doc.id);
        bool isSelected = doc['selected'];
        if (isSelected) {
          int row = (seatNumber - 1) ~/ 4;
          int col = (seatNumber - 1) % 4;
          seatUnavailable[row][col] = true;
          seatSelected[row][col] = true; // Mark seat as selected
        }
      }
      setState(() {});
    } catch (e) {
      print("Error fetching selected seats: $e");
    }
  }

  void saveSelectedSeats() async {
    try {
      WriteBatch batch = firestore.batch();
      int seatNumber = 1;

      for (int row = 0; row < seatSelected.length; row++) {
        for (int index = 0; index < seatSelected[row].length; index++) {
          // Prepare data for Firestore
          Map<String, dynamic> seatData = {
            'seatNumber': seatNumber,
            'selected': seatSelected[row][index],
          };
          // Update Firestore batch
          batch.set(
            trainsCollection
                .doc(widget.trainNumber)
                .collection('railcar')
                .doc(selectedRailcarId.toString())
                .collection('seats')
                .doc(seatNumber.toString()),
            seatData,
          );
          seatNumber++;
        }
      }
      // Commit the batch
      await batch.commit();
      print("Seats saved successfully");

      // Clear selected seats after saving
      setState(() {
        seatSelected =
            List.generate(16, (row) => List.generate(4, (index) => false));
      });
    } catch (e) {
      print("Error saving seats: $e");
    }
  }

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
                    fetchSelectedSeats(); // Fetch seats for the newly selected railcar
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
                  _buildSeatIconWithText(Colors.black, 'Unavailable'),
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
                    onPressed: () async {
                      saveSelectedSeats();
                      // Create a list of selected seats
                      List<int> selectedSeats = [];
                      for (int row = 0; row < seatSelected.length; row++) {
                        for (int index = 0;
                            index < seatSelected[row].length;
                            index++) {
                          if (seatSelected[row][index]) {
                            selectedSeats.add((row * 4) + index + 1);
                          }
                        }
                      }
                      // Navigate to AddCard page with ticket data and selected seats
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
                            selectedSeats: selectedSeats,
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
        Divider(color: Colors.black),
        SizedBox(height: 10),
        Text(
          'Direction: ${widget.currentStation} - ${widget.arrivalStation}',
          style: TextStyle(fontSize: 14),
        ),
        Text(
          'Trip Duration: ${widget.tripDuration}',
          style: TextStyle(fontSize: 14),
        ),
        Text(
          'Train Type: ${widget.trainType}',
          style: TextStyle(fontSize: 14),
        ),
        Text(
          'Number of Stops: ${widget.numberOfStops}',
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildSeatIconWithText(Color color, String text) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          color: color,
        ),
        SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildSeatLayout() {
    return Column(
      children: [
        for (int row = 0;
            row < seatSelected.length;
            row += 4) // Create blocks of 4 rows
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int block = 0;
                  block < 4;
                  block++) // Create 4 blocks in a row
                if (row + block < seatSelected.length)
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(4),
                      child: Column(
                        children: [
                          for (int index = 0;
                              index < seatSelected[row + block].length;
                              index++)
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (!seatUnavailable[row + block][index]) {
                                    seatSelected[row + block][index] =
                                        !seatSelected[row + block][index];
                                  }
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(4),
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: seatUnavailable[row + block][index]
                                      ? Colors.black
                                      : seatSelected[row + block][index]
                                          ? Colors.red
                                          : Colors.grey,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    '${(row + block) * 4 + index + 1}',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
            ],
          ),
      ],
    );
  }

  TextStyle _getTextStyle(Color color) {
    return GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }
}
