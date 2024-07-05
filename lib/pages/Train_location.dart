import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class CustomeGoogleMap extends StatefulWidget {
  const CustomeGoogleMap({super.key});

  @override
  State<CustomeGoogleMap> createState() => _CustomeGoogleMapState();
}

class _CustomeGoogleMapState extends State<CustomeGoogleMap> {
  late CameraPosition initialCameraPosition;

  late Location location;

  @override
  void initState() {
    initialCameraPosition = CameraPosition(
        zoom: 12, target: LatLng(30.586552738781364, 31.501379076181017));

    location = Location();

    updateMyLocation();

    super.initState();
  }

  GoogleMapController? googleMapController;

  Set<Marker> markers = {};

  @override
  Widget build(BuildContext context) {
    var googleMap = GoogleMap(
        markers: markers,
        onMapCreated: (controller) {
          googleMapController = controller;
        },
        zoomControlsEnabled: false,
        initialCameraPosition: initialCameraPosition);
    return googleMap;
  }

  Future<void> CheckAndRequestLocationService() async {
    var isServiceEnabled = await location.serviceEnabled();
    if (!isServiceEnabled) {
      isServiceEnabled = await location.requestService();
      if (!isServiceEnabled) {
        // TODO:show error bar
      }
    }
  }

  Future<bool> CheckAndRequestLocationPermission() async {
    var permissionStatus = await location.hasPermission();
    if (permissionStatus == PermissionStatus.deniedForever) {
      return false;
    }

    if (permissionStatus == PermissionStatus.denied) {
      permissionStatus = await location.requestPermission();
      if (permissionStatus != PermissionStatus.granted) {
        return false;
      }
    }

    return true;
  }

  void getlocationdata() {
    location.changeSettings(distanceFilter: 2);
    location.onLocationChanged.listen((LocationData) {
      var cametaPosition = CameraPosition(
          target: LatLng(LocationData.latitude!, LocationData.longitude!),
          zoom: 15);
      var myLocationMarker = Marker(
          markerId: const MarkerId('my_location_marker'),
          position: LatLng(LocationData.latitude!, LocationData.longitude!));
      markers.add(myLocationMarker);
      setState(() {});
      googleMapController
          ?.animateCamera(CameraUpdate.newCameraPosition(cametaPosition));
    });
  }

  void updateMyLocation() async {
    await CheckAndRequestLocationService();
    var hasPermission = await CheckAndRequestLocationPermission();
    if (hasPermission) {
      getlocationdata();
    } else {}
  }
}
