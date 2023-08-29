import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(const FlutterMapsApp());

class FlutterMapsApp extends StatelessWidget {
  const FlutterMapsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const FlutterMapsHome(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData.dark(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
    );
  }
}

class FlutterMapsHome extends StatefulWidget {
  const FlutterMapsHome({super.key});

  @override
  State<FlutterMapsHome> createState() => _FlutterMapsHomeState();
}

class _FlutterMapsHomeState extends State<FlutterMapsHome> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Maps'),
        elevation: 2,
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 10,
        ),
      ),
    );
  }
}













