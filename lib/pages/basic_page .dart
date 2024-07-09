import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:rail_ease/pages/notifications.dart';

import 'menu.dart';
import 'my_ticket.dart';
import 'select_your_train.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Train Booking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BasicPage(),
    );
  }
}

class BasicPage extends StatefulWidget {
  @override
  _BasicPageState createState() => _BasicPageState();
}

class _BasicPageState extends State<BasicPage> {
  String? _currentStation;
  String? _arrivalStation;
  DateTime? _selectedDate;
  bool _isWithinZone = false;

  List<String> stations = [];
  Map<String, Geofence> stationGeofences = {};

  late StreamSubscription<Position> _positionStreamSubscription;
  Position? _currentPosition;
  AudioPlayer _audioPlayer = AudioPlayer();

  get data => null;

  @override
  void initState() {
    super.initState();
    fetchStations();
    _startLocationStream();
  }

  @override
  void dispose() {
    _positionStreamSubscription.cancel();
    _audioPlayer.dispose();
    super.dispose();
  }

  Future<void> fetchStations() async {
    try {
      QuerySnapshot snapshot = await FirebaseFirestore.instance
          .collection('Stations between Cairo and Zagazig')
          .get();

      List<String> stationList = [];
      Map<String, Geofence> geofenceMap = {};

      snapshot.docs.forEach((doc) {
        String stationName = doc.id;
        Map<String, dynamic>? data = doc.data() as Map<String, dynamic>?;

        if (data != null &&
            data.containsKey('latitude') &&
            data.containsKey('Longitude') &&
            data.containsKey('radius')) {
          double latitude = (data['latitude'] as num).toDouble();
          double longitude = (data['Longitude'] as num).toDouble();
          double radius = (data['radius'] as num).toDouble();

          stationList.add(stationName);

          geofenceMap[stationName] = Geofence(
            latitude: latitude,
            longitude: longitude,
            radius: radius,
          );
        } else {
          print('Document $stationName is missing one or more required fields');
        }
      });

      setState(() {
        stations = stationList;
        stationGeofences = geofenceMap;
      });
    } catch (e) {
      print('Error fetching stations: $e');
    }
  }

  void _startLocationStream() async {
    try {
      await _checkLocationPermission();

      _positionStreamSubscription = Geolocator.getPositionStream(
        locationSettings: LocationSettings(
          accuracy: LocationAccuracy.best,
          distanceFilter: 10,
        ),
      ).listen((Position position) {
        setState(() {
          _currentPosition = position;

          bool isWithinZone =
              stationGeofences.values.any((geofence) => _checkIfWithinZone(
                    position.latitude,
                    position.longitude,
                    geofence,
                  ));

          if (isWithinZone && !_isWithinZone) {
            _isWithinZone = true;
            _playAlertSound();
            _showArrivalDialog(); // Show dialog when entering zone
          } else if (!isWithinZone && _isWithinZone) {
            _isWithinZone = false;
          }
        });
      });
    } catch (e) {
      print('Error: $e');
    }
  }

  void _playAlertSound() {
    String url =
        'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3';
    _audioPlayer.play(UrlSource(url));
  }

  void _showArrivalDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Notification'),
          content: Text('You have arrived at your destination!'),
          actions: [
            TextButton(
              onPressed: () {
                _audioPlayer.stop(); // Stop the alarm sound
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _checkLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw 'Location services are disabled.';
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw 'Location permissions are denied.';
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw 'Location permissions are permanently denied, we cannot request permissions.';
    }
  }

  bool _checkIfWithinZone(double lat, double lon, Geofence geofence) {
    double distance = Geolocator.distanceBetween(
      lat,
      lon,
      geofence.latitude,
      geofence.longitude,
    );

    return distance <= geofence.radius;
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void _updateUserLocation(
      String uid, String currentStation, String arrivalStation) {
    // Reference to the current user's document in Firestore
    DocumentReference userRef =
        FirebaseFirestore.instance.collection('Users').doc(uid);

    // Update the document with latitude and longitude data
    userRef.update({
      'userLocation': GeoPoint(
        _currentPosition!.latitude,
        _currentPosition!.longitude,
      ),
    }).then((value) {
      print('User location updated successfully');
    }).catchError((error) {
      print('Failed to update user location: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rail Ease'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Menu(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 375,
              height: 210,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 17,
                    top: 10,
                    child: Container(
                      width: 343,
                      height: 179,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.00, -1.00),
                          end: Alignment(0, 1),
                          colors: [Color(0xFFD72020), Color(0x1C882626)],
                        ),
                        borderRadius: BorderRadius.circular(33),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 33,
                    top: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'STAY SAFE!',
                          style: TextStyle(
                            color: Color(0xFFF5F5F5),
                            fontSize: 24,
                            fontFamily: 'Inika',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'You should go away from any traffics',
                          style: TextStyle(
                            color: Color(0xFFF5F5F5),
                            fontSize: 16,
                            fontFamily: 'Inika',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SearchForm(
              onStationChanged: (current, arrival) {
                setState(() {
                  _currentStation = current;
                  _arrivalStation = arrival;

                  // Get current user UID
                  String? uid = FirebaseAuth.instance.currentUser?.uid;

                  if (uid != null &&
                      _currentStation != null &&
                      _arrivalStation != null) {
                    _updateUserLocation(
                        uid, _currentStation!, _arrivalStation!);
                  }
                });
              },
              onSelectDate: _selectDate,
              selectedDate: _selectedDate,
              stations: stations,
            ),
            SizedBox(height: 20),
            Footer(
              currentStation: _currentStation,
              arrivalStation: _arrivalStation,
              onPressed: () {
                if (_currentStation == null || _arrivalStation == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Please select both current and arrival stations.'),
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SelectYourTrain(
                        currentStation: _currentStation!,
                        arrivalStation: _arrivalStation!,
                        selectedDate: _selectedDate!,
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => BasicPage()),
                );
              },
            ),
            IconButton(
              icon: ImageIcon(
                AssetImage('assets/images/ticket.png'),
                size: 32,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyTicket(
                      trainNumber: data[
                          'trainNumber'], // Replace with actual train number
                      totalPrice: data[
                          'ticketPrice'], // Replace with actual total price
                      date: data['date'],
                      selectedSeats: [20, 26],
                      arrivalTimeToStation: data['arrivalTimeToStation'],
                      arrivalTimeToDestinationStation:
                          data['arrivalTimeToDestinationStation'],
                      trainType: data['type'],
                      tripDuration: data['tripDuration'],
                      numberOfStops: data['numberOfStops'],
                      ticketPrice: data['ticketPrice'],
                      currentStation: data['currentStation'],
                      arrivalStation:
                          data['arrivalStation'], // Replace with actual date
                    ),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notifications()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.train),
              onPressed: () {
                // Handle train icon navigation
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SearchForm extends StatefulWidget {
  final Function(String?, String?) onStationChanged;
  final Function(BuildContext) onSelectDate;
  final DateTime? selectedDate;
  final List<String> stations;

  SearchForm({
    required this.onStationChanged,
    required this.onSelectDate,
    required this.selectedDate,
    required this.stations,
  });

  @override
  _SearchFormState createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  String? _currentStation;
  String? _arrivalStation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.63,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              widget.onSelectDate(context);
            },
            child: AbsorbPointer(
              child: TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                  labelText: widget.selectedDate != null
                      ? 'Departure Date: ${widget.selectedDate!.day}/${widget.selectedDate!.month}/${widget.selectedDate!.year}'
                      : 'Departure Date',
                  hintText: 'Select Date',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.calendar_today),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              labelText: 'Choose Current Station',
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.keyboard_arrow_down),
            ),
            value: _currentStation,
            items: widget.stations.map((station) {
              return DropdownMenuItem<String>(
                value: station,
                child: Text(station),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _currentStation = value;
                widget.onStationChanged(_currentStation, _arrivalStation);
              });
            },
          ),
          SizedBox(height: 10),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/red circle.png',
                height: 50,
                width: 50,
              ),
              Image.asset(
                'assets/images/up down arrow.png',
                height: 24,
                width: 24,
              ),
            ],
          ),
          SizedBox(height: 10),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              labelText: 'Choose Arrival Station',
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.keyboard_arrow_down),
            ),
            value: _arrivalStation,
            items: widget.stations.map((station) {
              return DropdownMenuItem<String>(
                value: station,
                child: Text(station),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _arrivalStation = value;
                widget.onStationChanged(_currentStation, _arrivalStation);
              });
            },
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  final VoidCallback onPressed;

  const Footer({
    required this.onPressed,
    String? currentStation,
    String? arrivalStation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          child: Text(
            'Find Your Train',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Inika',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFD72020),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class Geofence {
  final double latitude;
  final double longitude;
  final double radius;

  Geofence({
    required this.latitude,
    required this.longitude,
    required this.radius,
  });
}
