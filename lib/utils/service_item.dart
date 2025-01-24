import 'package:cabproject/utils/location_selection_modal.dart';
import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback? onTap;
  final Color? backgroundColor;

  const  ServiceItem({
    super.key,
    required this.title,
    required this.imagePath,
    this.onTap,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => LocationSelectionModal.show(context),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: backgroundColor ?? Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(
              imagePath, 
              width: 79, 
              height: 71,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error, size: 50);
              },
            ),
          ),
          const SizedBox(height: 8),
          Text(title),
        ],
      ),
    );
  }
} 