import 'package:flutter/material.dart';
import 'package:rail_ease/pages/Train_location.dart';
import 'package:rail_ease/pages/menu%20%E2%9C%94%EF%B8%8F.dart';

import 'my_ticket.dart';
import 'notifications.dart';
import 'select_your_train ✔️.dart';

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

class BasicPage extends StatelessWidget {
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
            SearchForm(),
            Footer(),
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
  @override
  _SearchFormState createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  DateTime? _selectedDate;
  String? _currentStation;
  String? _arrivalStation;

  final List<String> stations = ['Zagazig', 'Cairo', 'Faqous'];

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
            decoration: InputDecoration(
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
              });
            },
          ),
        ],
      ),
    );
  }
}

class TrainInfoItem extends StatelessWidget {
  final String title;
  final String value;
  final VoidCallback? onIncrement;
  final VoidCallback? onDecrement;

  const TrainInfoItem({
    required this.title,
    required this.value,
    this.onIncrement,
    this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'Inika',
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: onDecrement,
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Inika',
                  fontWeight: FontWeight.w400,
                ),
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: onIncrement,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40), // Add a SizedBox above the button
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SelectYourTrain(),
                ),
              );
            },
            child: Container(
              width: 284,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFFFF0000),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Center(
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
