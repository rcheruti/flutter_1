import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatelessWidget {
  static final sePoint = LatLng(-23.5486, -46.6392);

  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(zoom: 14, target: sePoint ),
        mapType: MapType.normal,
        markers: Set.of([
          Marker(
            markerId: MarkerId('sePoint'),
            position: sePoint
          )
        ]),
      ),
    );
  }
}
