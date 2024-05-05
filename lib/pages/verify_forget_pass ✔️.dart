import 'package:flutter/material.dart';

class Verify_password extends StatefulWidget {
  @override
  _VerifyEmptyState createState() => _VerifyEmptyState();
}

class _VerifyEmptyState extends State<Verify_password> {
  List<TextEditingController> _controllers = List.generate(
    6,
    (index) => TextEditingController(),
  );
  List<FocusNode> _focusNodes = List.generate(6, (index) => FocusNode());

  Color _buttonColor = Colors.grey; // Initial color of the button

  @override
  void initState() {
    super.initState();
    _configureFocusNodes();
  }

  void _configureFocusNodes() {
    for (int i = 0; i < _focusNodes.length; i++) {
      _focusNodes[i].addListener(() {
        if (_focusNodes[i].hasFocus) {
          _controllers[i].selection = TextSelection.fromPosition(
            TextPosition(offset: _controllers[i].text.length),
          );
        }
      });
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(23, 42, 27, 406),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    // Implement the action to go back
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 45,
                        height: 45,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            // Implement action to go back
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 13, 34),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(13.7, 0, 13.7, 12),
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: Color(0xFFFF0000),
                          ),
                        ),
                      ),
                      Text(
                        'Code has been sent ✔️ ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFFA0A0A0),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 29),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      width: 305,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (int i = 0; i < 6; i++)
                            Flexible(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xFFFFFFFF),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x4D000000),
                                      offset: Offset(0, 2),
                                      blurRadius: 4,
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  controller: _controllers[i],
                                  focusNode: _focusNodes[i],
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  maxLength: 1,
                                  decoration: InputDecoration(
                                    counterText: '',
                                    border: InputBorder.none,
                                  ),
                                  onChanged: (value) {
                                    // Check if all text fields have digits
                                    bool allFilled = true;
                                    for (var controller in _controllers) {
                                      if (controller.text.isEmpty ||
                                          !RegExp(r'^[0-9]+$')
                                              .hasMatch(controller.text)) {
                                        allFilled = false;
                                        break;
                                      }
                                    }
                                    setState(() {
                                      _buttonColor =
                                          allFilled ? Colors.red : Colors.grey;
                                    });
                                    // Move focus to the next or previous text field based on input
                                    if (value.isEmpty) {
                                      if (i > 0) {
                                        _focusNodes[i - 1].requestFocus();
                                      }
                                    } else {
                                      if (i < _focusNodes.length - 1) {
                                        _focusNodes[i + 1].requestFocus();
                                      }
                                    }
                                  },
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Perform verification action here
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: _buttonColor,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(0, 4),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Container(
                      width: 152,
                      padding: EdgeInsets.fromLTRB(50, 10, 10.3, 17),
                      child: Text(
                        'Verify',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          letterSpacing: -0.4,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
