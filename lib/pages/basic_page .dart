import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:rail_ease/pages/menu.dart';
import 'package:rail_ease/pages/my_ticket.dart';
import 'package:rail_ease/pages/notifications.dart';
import 'package:rail_ease/pages/select_your_train.dart';

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
  DateTime? _selectedDate;

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
              onSelectDate: _selectDate,
              selectedDate: _selectedDate,
              stations: stations,
            ),
            Footer(
              currentStation: _currentStation,
              arrivalStation: _arrivalStation,
              onPressed: () {
                if (_currentStation == null || _arrivalStation == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please select both stations.'),
                      backgroundColor: Colors.red,
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SelectYourTrain(
                        currentStation: _currentStation!,
                        arrivalStation: _arrivalStation!,
                      ),
                    ),
                  );
                }
              },
            ),
            SizedBox(height: 100),
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
                            trainNumber:
                                '12345', // Replace with actual train number
                            totalPrice: 100, // Replace with actual total price
                            date: '01-01-2024', // Replace with actual date
                          )),
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
  final Function(BuildContext) onSelectDate;
  final DateTime? selectedDate;
  final List<String> stations;

  const SearchForm({
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
          SizedBox(height: 5),
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
  final String? currentStation;
  final String? arrivalStation;
  final VoidCallback onPressed;

  const Footer({
    required this.currentStation,
    required this.arrivalStation,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        ElevatedButton(
          onPressed: onPressed,
          child: Text(
            'Find Your Train',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Inika',
              fontWeight: FontWeight.w400,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFFF0000),
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
