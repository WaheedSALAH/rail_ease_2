import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:rail_ease/pages/menu.dart';
import 'package:rail_ease/pages/select_your_train.dart';

import 'my_ticket.dart';
import 'notifications.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Train Booking App',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rail Ease'),
        automaticallyImplyLeading: false, // This line removes the back button
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
            Header(),
            SearchForm(
              onStationChanged: (current, arrival) {
                setState(() {
                  _currentStation = current;
                  _arrivalStation = arrival;
                });
              },
            ),
            Footer(
              currentStation: _currentStation,
              arrivalStation: _arrivalStation,
            ),
            SizedBox(
              height: 100,
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
                AssetImage(
                    'assets/images/ticket.png'), // Replace 'ticket_icon.png' with your image asset path
                size: 32, // Adjust the size as needed
                // color: Colors.red, // Customize the color as needed
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyTicket()),
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
                // Navigator.push(
                //   context,
                //   // MaterialPageRoute(builder: (context) => Location()),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: GradientContainer(),
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
    );
  }
}

class GradientContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class SearchForm extends StatefulWidget {
  final Function(String?, String?) onStationChanged;

  const SearchForm({required this.onStationChanged});

  @override
  _SearchFormState createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  DateTime? _selectedDate;
  String? _currentStation;
  String? _arrivalStation;

  List<String> stations = [];

  @override
  void initState() {
    super.initState();
    fetchStations();
  }

  Future<void> fetchStations() async {
    try {
      QuerySnapshot snapshot = await FirebaseFirestore.instance
          .collection('Stations between Cairo and Zagazig')
          .get();
      List<String> stationList = snapshot.docs.map((doc) => doc.id).toList();
      setState(() {
        stations = stationList;
      });
    } catch (e) {
      print(e);
    }
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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.63,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              _selectDate(context);
            },
            child: AbsorbPointer(
              child: TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                  labelText: _selectedDate != null
                      ? 'Departure Date: ${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                      : 'Departure Date',
                  hintText: 'Select Date',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.calendar_today),
                ),
              ),
            ),
          ),
          SizedBox(height: 20), // Add space between fields

          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              labelText: 'Choose Current Station',
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.keyboard_arrow_down),
            ),
            value: _currentStation,
            items: stations.map((station) {
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
          SizedBox(height: 5), // Add space between fields

          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/red circle.png',
                height: 50, // Adjust height as needed
                width: 50, // Adjust width as needed
              ),
              Image.asset(
                'assets/images/up down arrow.png',
                height: 24, // Adjust height as needed
                width: 24, // Adjust width as needed
              ),
            ],
          ),
          SizedBox(height: 10), // Add space between fields
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              labelText: 'Choose Arrival Station',
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.keyboard_arrow_down),
            ),
            value: _arrivalStation,
            items: stations.map((station) {
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
  final String? currentStation;
  final String? arrivalStation;

  const Footer({required this.currentStation, required this.arrivalStation});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40), // Add a SizedBox above the button
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              if (currentStation == null || arrivalStation == null) {
                // Show an error message
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Please select both stations.'),
                    backgroundColor: Colors.red,
                  ),
                );
              } else {
                // Navigate to SelectYourTrain page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectYourTrain(),
                  ),
                );
              }
            },
            child: Container(
              width: 284,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFFFF0000),
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Center(
                child: Text(
                  'Search train',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Inika',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
