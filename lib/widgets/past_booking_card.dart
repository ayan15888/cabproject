import 'package:flutter/material.dart';
import '../utils/location_selection_modal.dart';

class PastBookingCard extends StatelessWidget {
  const PastBookingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => LocationSelectionModal.show(context),
            child: Row(
              children: [
                const Icon(Icons.location_on, color: Colors.orange),
                const SizedBox(width: 8),
                const Text('Choose start location'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Icon(Icons.more_vert),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => LocationSelectionModal.show(context),
            child: Row(
              children: [
                const Icon(Icons.location_on_outlined, color: Colors.orange),
                const SizedBox(width: 8),
                const Text('Choose your destination'),
              ],
            ),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/car.png',
                    width: 64,
                    height: 35,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 8),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('America Airlines'),
                      Text('AK8117', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    '\$10',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'View Details >',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
} 