import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class TrainLocation extends StatefulWidget {
  const TrainLocation({Key? key}) : super(key: key);

  @override
  _TrainLocationState createState() => _TrainLocationState();
}

class _TrainLocationState extends State<TrainLocation> {
  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  StreamSubscription<Position>? positionStream;
  getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // serviceEnabled = await Geolocator.isLocationServiceEnabled();

    // if (!serviceEnabled) {
    //   return;
    // }

    // permission = await Geolocator.checkPermission();
    // if (permission == LocationPermission.denied) {
    //   permission = await Geolocator.requestPermission();
    //   if (permission == LocationPermission.denied) ;
    //   print(" افتح اللوكيشن");
    // }
    // if (permission == LocationPermission.whileInUse) {
    //   positionStream =
    //       Geolocator.getPositionStream().listen((Position? position) {
    //     print("================================");
    //     print("this is position.latitude ${position!.latitude}");
    //     print("================================");
    //     print("this is position.longitude ${position!.longitude}");
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Train Location"),
      ),
      body: Center(
        child: Text("Train location information will be displayed here."),
      ),
    );
  }
}
