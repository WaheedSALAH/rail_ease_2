import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rail_ease/services/paymob/paymob_manager.dart';

class AddCard extends StatefulWidget {
  final int totalPrice;
  final Map<String, dynamic> trainData;

  AddCard({required this.totalPrice, required this.trainData});

  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  final PaymobManager paymobManager = PaymobManager();
  final _formKey = GlobalKey<FormState>();

  String cardHolderName = '';
  String cardNumber = '';
  String expiryDate = '';
  String cvc = '';
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pop();
          return true;
        },
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.fromLTRB(23, 42, 24, 259),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTitle(context),
                  SizedBox(height: 46),
                  _buildInputField(
                    'CARD HOLDER NAME',
                    'Enter card holder name',
                    maxLength: null,
                    format: null,
                    onChanged: (value) {
                      cardHolderName = value;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter card holder name';
                      }
                      return null;
                    },
                  ),
                  _buildInputField(
                    'CARD NUMBER',
                    'Enter card number',
                    maxLength: 19,
                    format: _CardNumberFormatter(),
                    onChanged: (value) {
                      cardNumber = value;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter card number';
                      } else if (value.length < 19) {
                        return 'Please enter a valid card number';
                      }
                      return null;
                    },
                  ),
                  _buildExpiryAndCVC(),
                  SizedBox(height: 48),
                  _buildButtons(),
                  if (isLoading)
                    Center(
                      child: CircularProgressIndicator(),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset('assets/vectors/back_11_x2.svg'),
        ),
        Text(
          'Add Card',
          style: GoogleFonts.getFont(
            'Inika',
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xFF0D0D0D),
          ),
        ),
      ],
    );
  }

  Widget _buildInputField(String label, String hintText,
      {int? maxLength,
      TextInputFormatter? format,
      ValueChanged<String>? onChanged,
      String? Function(String?)? validator}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.getFont(
            'Inika',
            fontWeight: FontWeight.w400,
            fontSize: 14,
            height: 1.7,
            color: Color(0xFFA0A5BA),
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          onChanged: onChanged,
          inputFormatters: format != null ? [format] : null,
          maxLength: maxLength,
          validator: validator,
          decoration: InputDecoration(
            counterText: '',
            filled: true,
            fillColor: Color(0xFFF0F5FA),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            hintText: hintText,
            hintStyle: TextStyle(
              fontFamily: 'Inika',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xFF32343E),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildExpiryAndCVC() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildInputField(
                'EXPIRE DATE',
                'mm/yyyy',
                maxLength: 7,
                format: _ExpiryDateFormatter(),
                onChanged: (value) {
                  expiryDate = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter expiry date';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
        SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildInputField(
                'CVC',
                'Enter CVC',
                maxLength: 3,
                format: FilteringTextInputFormatter.digitsOnly,
                onChanged: (value) {
                  cvc = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter CVC';
                  } else if (value.length < 3) {
                    return 'Please enter a valid CVC';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildButtons() {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 23),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF121212)),
              borderRadius: BorderRadius.circular(14),
              color: Color(0x21FFFFFF),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Cancel',
                style: TextStyle(
                  fontFamily: 'Inika',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF0D0D0D),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: _processPayment,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              backgroundColor: Color(0xFF0D0D0D),
              padding: EdgeInsets.symmetric(vertical: 15),
            ),
            child: Text(
              'Pay',
              style: TextStyle(
                fontFamily: 'Inika',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _processPayment() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });

      try {
        final token = await paymobManager.postToken();
        final orderId = await paymobManager.getOrderId(
          token: token,
          amount: widget.totalPrice.toDouble(),
        );

        final billingData = {
          "first_name": cardHolderName.split(" ").first,
          "last_name": cardHolderName.split(" ").last,
          "email": "email@example.com",
          "phone_number": "+201234567890",
          "apartment": "NA",
          "floor": "NA",
          "street": "NA",
          "building": "NA",
          "shipping_method": "NA",
          "postal_code": "NA",
          "city": "NA",
          "country": "NA",
          "state": "NA"
        };

        final paymentKey = await paymobManager.requestPaymentKey(
          authToken: token,
          orderId: orderId.toString(),
          amountPounds: widget.totalPrice.toDouble(),
          billingData: billingData,
        );

        // Proceed to payment using the payment key
        // Implement your payment gateway flow here

        setState(() {
          isLoading = false;
        });

        // Navigate to a success or confirmation page
        // Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessPage()));
      } catch (e) {
        setState(() {
          isLoading = false;
        });
        // Handle the error
        // Show an error message
        print(e.toString());
      }
    }
  }
}

class _CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text.replaceAll(' ', '');
    var buffer = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      buffer.write(text[i]);
      var nonSpaceIndex = i + 1;
      if (nonSpaceIndex % 4 == 0 && nonSpaceIndex != text.length) {
        buffer.write(' ');
      }
    }
    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}

class _ExpiryDateFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text;

    if (newText.length < oldValue.text.length) return newValue;

    var result = "";

    if (newText.contains("/")) {
      final dates = newText.split("/");
      final month = dates.first;
      final year = dates.last;
      if (year.length >= 2) {
        result = "$month/${year.substring(0, 2)}";
      } else {
        result = newText;
      }
    } else {
      if (newText.length == 2) {
        result = "$newText/";
      } else {
        result = newText;
      }
    }

    return newValue.copyWith(
      text: result,
      selection: TextSelection.fromPosition(
        TextPosition(offset: result.length),
      ),
    );
  }
}
