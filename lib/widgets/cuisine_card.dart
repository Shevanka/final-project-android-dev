import 'package:flutter/material.dart';
import '../models/cuisine_item.dart';

class CuisineCard extends StatelessWidget {
  final CuisineItem item;
  const CuisineCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: const Color(0xFFF5F5F5),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(
              item.asset,
              width: 30,
              height: 30,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          item.label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        )
      ],
    );
  }
}