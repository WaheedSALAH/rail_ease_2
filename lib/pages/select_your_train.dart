import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'select_seat.dart';

class SelectYourTrain extends StatefulWidget {
  final String currentStation;
  final String arrivalStation;

  SelectYourTrain({required this.currentStation, required this.arrivalStation});

  final String currentStation;
  final String arrivalStation;

  SelectYourTrain({required this.currentStation, required this.arrivalStation});

  @override
  _SelectYourTrainState createState() => _SelectYourTrainState();
}

class _SelectYourTrainState extends State<SelectYourTrain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Available Trains'),
        backgroundColor: Color(0xFFFF0000),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 246, 155, 155),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.train),
                          SizedBox(width: 8),
                          Text(widget.currentStation,
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ),
                Icon(Icons.swap_vert,
                    size: 40, color: Color.fromARGB(255, 244, 139, 155)),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 246, 155, 155),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.train),
                          SizedBox(width: 8),
                          Text(widget.arrivalStation,
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close,
                      color: Color.fromARGB(255, 241, 109, 109)),
                  onPressed: () {
                    // Action for clearing or resetting
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${widget.currentStation}: 23 train/day',
              '${widget.currentStation}: 23 train/day',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
          Expanded(
            child: StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('Trains').snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                }
                var trains = snapshot.data!.docs;
                return ListView.builder(
                  itemCount: trains.length,
                  itemBuilder: (context, index) {
                    var train = trains[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Card(
                        child: ListTile(
                          title: Text(
                              '${train['Train number']} - ${train['Type']}'),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  'Exp. Time: ${train['Arrival time to the station']}'),
                              Text(
                                  'Ar. Time: ${train['Arrival time to the destination station']}'),
                              Text('Track: ${train['Track number']}'),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    TrainDetailsPage(train: train),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TrainDetailsPage extends StatelessWidget {
  final QueryDocumentSnapshot<Object?> train;

  TrainDetailsPage({required this.train});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Train Details'),
        backgroundColor: Color(0xFFFF0000),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Train Number: ${train['Train number']}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Train Direction : ${train['Direction']}',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Current Station : ${train['Current station']}',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Arrival Station : ${train['Arrival station']}',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Starting Station : ${train['Starting station']}',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Number of Stations : ${train['Number of stations']}',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text(
                'Number of Stops between ${train['Current station']} & ${train['Arrival station']} : ${train['Number of stops']}',
                style: TextStyle(fontSize: 15)),
            SizedBox(height: 10),
            Text('Trip Duration : ${train['Trip duration']}',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Ticket Price : ${train['Ticket price']}',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Train Type : ${train['Type']}',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text(
                'Arrival Time To Station: ${train['Arrival time to the station']}',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text(
                'Arrival Time To Destination Station: ${train['Arrival time to the destination station']}',
                style: TextStyle(fontSize: 15)),
            SizedBox(height: 10),
            Text('Track Number: ${train['Track number']}',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SelectSeat(
                        arrivalStation: train['Arrival station'],
                        currentStation: train['Current station'],
                        ticketPrice: train['Ticket price']
                            .toString(), // Convert to string
                        numberOfStops: train['Number of stops']
                            .toString(), // Convert to string
                        tripDuration: train['Trip duration'],
                        trainType: train['Type'],
                        arrivalTimeToStation:
                            train['Arrival time to the station'],
                        arrivalTimeToDestinationStation:
                            train['Arrival time to the destination station'],
                        trainNumber: train['Train number'].toString(),
                      ),
                    ),
                  );
                },
                child: Text('Select Seat'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(
                      0xFFFF0000), // Use backgroundColor instead of primary
                  foregroundColor:
                      Colors.white, // Use foregroundColor instead of onPrimary
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
