import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rail_ease/models/station.dart';

class FirestoreService {
  final CollectionReference _stationsCollection = FirebaseFirestore.instance
      .collection('Stations between Cairo and Zagazig');

  Future<List<Station>> getStations() async {
    QuerySnapshot querySnapshot = await _stationsCollection.get();
    return querySnapshot.docs
        .map((doc) => Station.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
  }
}
