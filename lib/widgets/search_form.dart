import 'package:flutter/material.dart';
import 'package:rail_ease/models/station.dart';
import 'package:rail_ease/services/firestore_service.dart';

class SearchForm extends StatefulWidget {
  @override
  _SearchFormState createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  DateTime? _selectedDate;
  String? _currentStation;
  String? _arrivalStation;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Station>>(
      future: FirestoreService().getStations(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(child: Text('Error fetching stations'));
        }

        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No stations available'));
        }

        List<Station> stations = snapshot.data!;
        List<DropdownMenuItem<String>> stationItems = stations.map((station) {
          return DropdownMenuItem<String>(
            value: station.name,
            child: Text(station.name),
          );
        }).toList();

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
                items: stationItems,
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
                items: stationItems,
                onChanged: (value) {
                  setState(() {
                    _arrivalStation = value;
                  });
                },
              ),
            ],
          ),
        );
      },
    );
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
}
