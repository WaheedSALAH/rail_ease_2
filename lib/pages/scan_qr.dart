import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:http/http.dart' as http;

class ScanQr extends StatefulWidget {
  @override
  _ScanQrState createState() => _ScanQrState();
}

class _ScanQrState extends State<ScanQr> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  String? qrText;
  bool verifying = false;
  String? verificationResult;

  @override
  void reassemble() {
    super.reassemble();
    if (controller != null) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Scanner'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
              overlay: QrScannerOverlayShape(
                borderColor: Colors.blue,
                borderRadius: 10,
                borderLength: 30,
                borderWidth: 10,
                cutOutSize: 200,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (qrText != null)
                  Text(
                    'Scan result: $qrText',
                    style: GoogleFonts.inika(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF595959),
                    ),
                  ),
                if (qrText == null)
                  Text(
                    'Scanning Code...',
                    style: GoogleFonts.inika(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF595959),
                    ),
                  ),
                SizedBox(height: 10),
                if (verifying)
                  CircularProgressIndicator() // Show loading indicator while verifying
                else if (verificationResult != null)
                  Text(
                    'Verification Result: $verificationResult',
                    style: GoogleFonts.inika(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF595959),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) async {
      setState(() {
        qrText = scanData.code;
        verifying = true;
      });

      // Send the scanned QR code data for verification
      await _verifyQRCode(qrText!);
    });
  }

  Future<void> _verifyQRCode(String qrData) async {
    final String verificationEndpoint =
        'YOUR_VERIFICATION_ENDPOINT'; // Replace with your Cloud Function endpoint
    final String authToken =
        'YOUR_FIREBASE_AUTH_TOKEN'; // Replace with Firebase auth token

    try {
      final response = await http.post(
        Uri.parse(verificationEndpoint),
        headers: {
          'Authorization': 'Bearer $authToken',
          'Content-Type': 'application/json',
        },
        body: {
          'qrData': qrData,
        },
      );

      if (response.statusCode == 200) {
        // Verification successful
        setState(() {
          verificationResult = 'Verified';
        });
      } else {
        // Verification failed
        setState(() {
          verificationResult = 'Not Verified';
        });
      }
    } catch (e) {
      // Handle error
      setState(() {
        verificationResult = 'Error: $e';
      });
    } finally {
      // Set verifying to false after verification is complete
      setState(() {
        verifying = false;
      });
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScanQr(),
    );
  }
}
