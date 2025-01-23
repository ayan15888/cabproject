import 'package:flutter/material.dart';
import 'confirm_screen.dart';
import '../utils/vehicle_option_tile.dart';


class ChooseVehicleScreen extends StatefulWidget {
  const ChooseVehicleScreen({super.key});

  @override
  _ChooseVehicleScreenState createState() => _ChooseVehicleScreenState();
}

class _ChooseVehicleScreenState extends State<ChooseVehicleScreen> {
  int? selectedIndex; // Track selected vehicle option

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/maps.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          
          DraggableScrollableSheet(
            initialChildSize: 0.4,
            minChildSize: 0.2,
            maxChildSize: 0.8,
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: ListView(
                  controller: scrollController,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      height: 4,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    VehicleOptionTile(
                      title: 'Just go',
                      price: '\$25.00',
                      distance: '0.1 km',
                      time: '5 min',
                      icon: Icons.directions_car,
                      index: 0,
                      selectedIndex: selectedIndex,
                      onSelect: (index) => setState(() => selectedIndex = index),
                    ),
                    VehicleOptionTile(
                      title: 'Limousine',
                      price: '\$80.00',
                      distance: '0.2 km',
                      time: '3 min',
                      icon: Icons.airport_shuttle,
                      index: 1,
                      selectedIndex: selectedIndex,
                      onSelect: (index) => setState(() => selectedIndex = index),
                    ),
                    VehicleOptionTile(
                      title: 'Luxury',
                      price: '\$50.00',
                      distance: '0.4 km',
                      time: '5 min',
                      icon: Icons.directions_car,
                      index: 2,
                      selectedIndex: selectedIndex,
                      onSelect: (index) => setState(() => selectedIndex = index),
                    ),
                    VehicleOptionTile(
                      title: 'ElectricCar',
                      price: '\$25.00',
                      distance: '0.3 km',
                      time: '4 min',
                      icon: Icons.directions_car,
                      index: 3,
                      selectedIndex: selectedIndex,
                      onSelect: (index) => setState(() => selectedIndex = index),
                    ),
                    VehicleOptionTile(
                      title: 'Bike',
                      price: '\$15.00',
                      distance: '0.48 km',
                      time: '5 min',
                      icon: Icons.directions_bike,
                      index: 4,
                      selectedIndex: selectedIndex,
                      onSelect: (index) => setState(() => selectedIndex = index),
                    ),
                    VehicleOptionTile(
                      title: 'Taxi 4 seat',
                      price: '\$30.00',
                      distance: '0.5 km',
                      time: '4 min',
                      icon: Icons.directions_car,
                      index: 5,
                      selectedIndex: selectedIndex,
                      onSelect: (index) => setState(() => selectedIndex = index),
                    ),
                    VehicleOptionTile(
                      title: 'Taxi 7 seat',
                      price: '\$40.00',
                      distance: '0.6 km',
                      time: '4 min',
                      icon: Icons.directions_bus,
                      index: 6,
                      selectedIndex: selectedIndex,
                      onSelect: (index) => setState(() => selectedIndex = index),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Update VehicleOption class to include IconData
class VehicleOption {
  final String title;
  final String price;
  final String distance;
  final String time;
  final IconData icon;

  VehicleOption({
    required this.title,
    required this.price,
    required this.distance,
    required this.time,
    required this.icon,
  });
}

// Update vehicle options data with icons
final vehicleOptions = [
  VehicleOption(
    title: 'Just go',
    price: '\$25.00',
    distance: '0.2 km',
    time: '2 min',
    icon: Icons.directions_car,
  ),
  VehicleOption(
    title: 'Limousine',
    price: '\$80.00',
    distance: '0.2 km',
    time: '5 min',
    icon: Icons.airport_shuttle,
  ),
  
];