import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final Color color;

  const PromoCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath, 
            width: 266, 
            height: 145,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.error, size: 40);
            },
          ),
        
        ],
      ),
    );
  }
} 