import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rail_ease/services/paymob/ticketdata/ticket_data.dart';

class FirestoreService {
  final CollectionReference trainsCollection =
      FirebaseFirestore.instance.collection('Trains');

  Future<TicketData?> getTicketData(String trainNumber, String date) async {
    try {
      final querySnapshot = await trainsCollection
          .doc(trainNumber)
          .collection('tickets')
          .where('date', isEqualTo: date)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        final doc = querySnapshot.docs.first;
        return TicketData.fromFirestore(doc.data() as Map<String, dynamic>);
      } else {
        return null;
      }
    } catch (e) {
      print('Error getting ticket data: $e');
      return null;
    }
  }

  Future<void> saveTicketToSubcollection(TicketData ticket) async {
    try {
      final docRef = trainsCollection.doc(ticket.trainNumber);
      await docRef.collection('tickets').add(ticket.toMap());
      print('Ticket saved successfully!');
    } catch (e) {
      print('Error saving ticket: $e');
    }
  }

  Future<void> addTicket(
      Map<String, dynamic> trainData, TicketData ticket) async {
    try {
      final docRef = trainsCollection.doc(ticket.trainNumber);
      await docRef.set(trainData); // Save train data
      await docRef
          .collection('tickets')
          .add(ticket.toMap()); // Save ticket data
      print('Train and ticket data saved successfully!');
    } catch (e) {
      print('Error adding ticket: $e');
    }
  }

  Future<void> saveTicketData(TicketData ticketData) async {
    try {
      final docRef = trainsCollection.doc(ticketData.trainNumber);
      await docRef.collection('tickets').add(ticketData.toMap());
      print('Ticket data saved successfully!');
    } catch (e) {
      print('Error saving ticket data: $e');
    }
  }

  Future<List<Map<String, dynamic>>> getStations() async {
    try {
      final QuerySnapshot snapshot =
          await FirebaseFirestore.instance.collection('stations').get();
      return snapshot.docs
          .map((doc) => doc.data() as Map<String, dynamic>)
          .toList();
    } catch (e) {
      print('Error getting stations: $e');
      return [];
    }
  }

  // New method to save ticket data to user document
  Future<void> saveTicketToUserDocument(TicketData ticket) async {
    try {
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        DocumentReference userDocRef =
            FirebaseFirestore.instance.collection('Users').doc(user.uid);

        // Create a map of ticket data
        Map<String, dynamic> ticketData = {
          'trainNumber': ticket.trainNumber,
          'currentStation': ticket.currentStation,
          'arrivalStation': ticket.arrivalStation,
          'ticketPrice': ticket.ticketPrice,
          'tripDuration': ticket.tripDuration,
          'arrivalTimeToStation': ticket.arrivalTimeToStation,
          'arrivalTimeToDestinationStation':
              ticket.arrivalTimeToDestinationStation,
          'trainType': ticket.type,
          'date': ticket.date,
          'selectedSeats': ticket.selectedSeats,
        };

        // Update the user's document with the ticket data
        await userDocRef.set({'ticket': ticketData}, SetOptions(merge: true));
        print('Ticket saved to user document successfully!');
      }
    } catch (e) {
      print('Error saving ticket to user document: $e');
      throw e;
    }
  }
}
