import 'package:flutter/material.dart';

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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SearchForm(),
            TrainInfo(),
            Footer(),
            SizedBox(
              height: 100,
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
                      ? 'Depature Date: ${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                      : 'Depature Date',
                  hintText: 'Select Date',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.calendar_today),
                ),
              ),
            ),
          ),
          SizedBox(height: 20), // Add space between fields

          TextFormField(
            decoration: InputDecoration(
              suffixText: "from",
              labelText: 'Choose Departure from',
              hintText: 'Select Departure',
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.keyboard_arrow_down),
            ),
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
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Choose Arrival at',
              hintText: 'Select Arrival',
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.keyboard_arrow_down),
            ),
          ),
        ],
      ),
    );
  }
}

class TrainInfo extends StatefulWidget {
  @override
  _TrainInfoState createState() => _TrainInfoState();
}

class _TrainInfoState extends State<TrainInfo> {
  int adultsCount = 1;
  int childrenCount = 0;

  void incrementAdults() {
    setState(() {
      adultsCount++;
    });
  }

  void decrementAdults() {
    if (adultsCount > 0) {
      setState(() {
        adultsCount--;
      });
    }
  }

  void incrementChildren() {
    setState(() {
      childrenCount++;
    });
  }

  void decrementChildren() {
    if (childrenCount > 0) {
      setState(() {
        childrenCount--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.63,
      child: Column(
        children: [
          TrainInfoItem(
            title: 'Adult (12+) Y',
            value: adultsCount.toString(),
            onIncrement: incrementAdults,
            onDecrement: decrementAdults,
          ),
          TrainInfoItem(
            title: 'Children (2-12) Y',
            value: childrenCount.toString(),
            onIncrement: incrementChildren,
            onDecrement: decrementChildren,
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
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          // Action to perform when "Search train" is tapped
          print('Search train tapped!');
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
    );
  }
}
