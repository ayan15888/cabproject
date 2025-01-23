import 'package:cabproject/screens/chooseVehicle_screen.dart';
import 'package:flutter/material.dart';
import '../screens/confirm_screen.dart';

class VehicleOptionTile extends StatelessWidget {
  final String title;
  final String price;
  final String distance;
  final String time;
  final IconData icon;
  final int index;
  final int? selectedIndex;
  final Function(int) onSelect;

  const VehicleOptionTile({
    super.key,
    required this.title,
    required this.price,
    required this.distance,
    required this.time,
    required this.icon,
    required this.index,
    required this.selectedIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = selectedIndex == index;
    
    return GestureDetector(
      onTap: () {
        onSelect(index);
        
        final vehicleOption = VehicleOption(
          title: title,
          price: price,
          distance: distance,
          time: time,
          icon: icon,
        );
        
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ConfirmScreen(vehicleData: vehicleOption),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.orange.withOpacity(0.1) : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? Colors.orange : Colors.transparent,
            width: 1,
          ),
        ),
        child: ListTile(
          leading: Icon(
            icon,
            size: 32,
            color: isSelected ? Colors.orange : Colors.grey[600],
          ),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 17,
              color: isSelected ? Colors.orange : Colors.black,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          subtitle: Text(distance),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                price,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.orange : Colors.black,
                ),
              ),
              Text(
                time,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 