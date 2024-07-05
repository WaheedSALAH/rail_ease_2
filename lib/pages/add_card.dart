import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rail_ease/pages/my_ticket.dart';
import 'package:rail_ease/services/firestore_service.dart';
import 'package:rail_ease/services/paymob/ticketdata/ticket_data.dart';

class AddCard extends StatefulWidget {
  final int totalPrice;
  final Map<String, dynamic> trainData;

  AddCard({
    required this.totalPrice,
    required this.trainData,
  });

  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _cardHolderNameController =
      TextEditingController();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();
  final TextEditingController _cvcController = TextEditingController();

  @override
  void dispose() {
    _cardHolderNameController.dispose();
    _cardNumberController.dispose();
    _expiryDateController.dispose();
    _cvcController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Card'),
        backgroundColor: Color.fromARGB(255, 238, 54, 54),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Total Price: ${widget.totalPrice} EGP',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              _buildTrainInfo('Train Number', 'trainNumber'),
              SizedBox(height: 15),
              _buildTrainInfo('Arrival Station', 'arrivalStation'),
              SizedBox(height: 15),
              _buildTrainInfo('Current Station', 'currentStation'),
              SizedBox(height: 40),
              _buildInputField(
                'CARD HOLDER NAME',
                'Enter card holder name',
                _cardHolderNameController,
              ),
              SizedBox(height: 20),
              _buildInputField(
                'CARD NUMBER',
                'Enter card number',
                _cardNumberController,
                maxLength: 19,
                format: _CardNumberFormatter(),
              ),
              SizedBox(height: 20),
              _buildExpiryAndCVC(),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Navigate back to previous page
                    },
                    child: Text('Cancel'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.red), // Set button background color
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _simulatePaymentSuccess(context);
                      }
                    },
                    child: Text('Pay Now'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.red), // Set button background color
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTrainInfo(String label, String key) {
    final String? value = widget.trainData[key];
    return Text(
      '$label: ${value ?? 'Not specified'}',
      style: TextStyle(fontSize: 16),
    );
  }

  Widget _buildInputField(
    String label,
    String hintText,
    TextEditingController controller, {
    int? maxLength,
    TextInputFormatter? format,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        TextFormField(
          controller: controller,
          inputFormatters: format != null ? [format] : null,
          maxLength: maxLength,
          decoration: InputDecoration(
            hintText: hintText,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter $label';
            }
            return null;
          },
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Widget _buildExpiryAndCVC() {
    return Row(
      children: [
        Expanded(
          child: _buildInputField(
            'EXPIRE DATE',
            'mm/yyyy',
            _expiryDateController,
            maxLength: 7,
            format: _ExpiryDateFormatter(),
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: _buildInputField(
            'CVC',
            'Enter CVC',
            _cvcController,
            maxLength: 3,
            format: FilteringTextInputFormatter.digitsOnly,
          ),
        ),
      ],
    );
  }

  void _simulatePaymentSuccess(BuildContext context) async {
    final FirestoreService firestoreService = FirestoreService();

    TicketData ticketData = TicketData(
      trainNumber: widget.trainData['trainNumber'] ?? '',
      currentStation: widget.trainData['currentStation'] ?? '',
      arrivalStation: widget.trainData['arrivalStation'] ?? '',
      ticketPrice: widget.totalPrice,
      tripDuration: widget.trainData['tripDuration'] ?? '',
      type: widget.trainData['type'] ?? '',
      arrivalTimeToStation: widget.trainData['arrivalTimeToStation'] ?? '',
      arrivalTimeToDestinationStation:
          widget.trainData['arrivalTimeToDestinationStation'] ?? '',
      date: widget.trainData['date'] ?? '',
    );

    await firestoreService.saveTicketToSubcollection(ticketData);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Payment Successful'),
          content: Text('Do you want to show your ticket?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyTicket(
                      trainNumber: ticketData.trainNumber,
                      totalPrice: ticketData.ticketPrice,
                      date: ticketData.date,
                    ),
                  ),
                );
              },
              child: Text('OK'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
                Navigator.pop(
                    context); // Navigate back to previous page (AddCard page)
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}

class _CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String newText = newValue.text.replaceAll(RegExp(r'\D'), '');
    String formattedText = '';

    for (int i = 0; i < newText.length; i++) {
      if (i % 4 == 0 && i != 0) {
        formattedText += ' ';
      }
      formattedText += newText[i];
    }

    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}

class _ExpiryDateFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String newText = newValue.text.replaceAll(RegExp(r'\D'), '');
    String formattedText = '';

    for (int i = 0; i < newText.length; i++) {
      if (i == 2) {
        formattedText += '/';
      }
      formattedText += newText[i];
    }

    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}
