import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SpecificLocationMapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LatLng specificLocation = LatLng(34.73206666603626,
        10.71676351664105); // Specify the desired coordinates here

    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: specificLocation,
        zoom: 15,
      ),
      markers: {
        Marker(
          markerId: MarkerId('specificLocation'),
          position: specificLocation,
          infoWindow: InfoWindow(title: 'Specific Location'),
        ),
      },
    );
  }
}
