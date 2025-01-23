import 'package:flutter/material.dart';

class LocationTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final Color iconColor;

  const LocationTextField({
    super.key,
    required this.hintText,
    required this.icon,
    this.iconColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor),
        const SizedBox(width: 8),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.black87),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(vertical: 0),
            ),
          ),
        ),
      ],
    );
  }
} 