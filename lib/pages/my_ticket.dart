import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:rail_ease/pages/basic_page%20.dart';
import 'package:rail_ease/services/firestore_service.dart';
import 'package:rail_ease/services/paymob/ticketdata/ticket_data.dart';

class MyTicket extends StatelessWidget {
  final String trainNumber;
  final int totalPrice;
  final String date;
  final List<int> selectedSeats;

  MyTicket({
    required this.trainNumber,
    required this.totalPrice,
    required this.date,
    required this.selectedSeats,
    required String arrivalTimeToDestinationStation,
    required String arrivalTimeToStation,
    required String trainType,
    required String tripDuration,
    required String numberOfStops,
    required String ticketPrice,
    required String currentStation,
    required String arrivalStation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ticket Details'),
      ),
      body: FutureBuilder<TicketData?>(
        future: FirestoreService().getTicketData(trainNumber, date),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data == null) {
            return Center(child: Text('No ticket found.'));
          }

          TicketData ticket = snapshot.data!;

          return SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${ticket.currentStation} -> ${ticket.arrivalStation}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Train Number: ${ticket.trainNumber}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Current Station: ${ticket.currentStation}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                Text(
                  'Arrival Station: ${ticket.arrivalStation}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                Text(
                  'Ticket Price: $totalPrice EGP',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                Text(
                  'Trip Duration: ${ticket.tripDuration}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                Text(
                  'Arrival Time to Station: ${ticket.arrivalTimeToStation}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                Text(
                  'Arrival Time to Destination Station: ${ticket.arrivalTimeToDestinationStation}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                Text(
                  'Train Type: ${ticket.type}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                Text(
                  'Selected Seats: ${selectedSeats.join(', ')}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Column(
                    children: [
                      QrImageView(
                        data: _generateQrData(ticket),
                        version: QrVersions.auto,
                        size: 200.0,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Scan QR code for details',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    await saveTicket(ticket.copyWith(
                      ticketPrice: totalPrice,
                      date: date,
                      selectedSeats: selectedSeats,
                    ));
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => BasicPage()),
                    );
                  },
                  child: Text('Back Home'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  String _generateQrData(TicketData ticket) {
    return 'Train Number: ${ticket.trainNumber}\n'
        'Current Station: ${ticket.currentStation}\n'
        'Arrival Station: ${ticket.arrivalStation}\n'
        'Ticket Price: ${ticket.ticketPrice} EGP\n'
        'Trip Duration: ${ticket.tripDuration}\n'
        'Arrival Time to Station: ${ticket.arrivalTimeToStation}\n'
        'Arrival Time to Destination Station: ${ticket.arrivalTimeToDestinationStation}\n'
        'Train Type: ${ticket.type}\n'
        'Date: ${ticket.date}\n'
        'Selected Seats: ${ticket.selectedSeats.join(', ')}';
  }

  Future<void> saveTicket(TicketData ticket) async {
    final firestoreService = FirestoreService();
    await firestoreService.saveTicketToUserDocument(ticket);
  }
}
