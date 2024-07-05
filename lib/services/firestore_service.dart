import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rail_ease/services/paymob/ticketdata/ticket_data.dart';

class FirestoreService {
  final CollectionReference trainsCollection =
      FirebaseFirestore.instance.collection('Trains');

  Future<TicketData?> getTicketData(String trainNumber) async {
    try {
      final querySnapshot =
          await trainsCollection.doc(trainNumber).collection('tickets').get();

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
}
