import 'package:flutter/material.dart';
import '../models/models.dart';

class BrowseCuisines extends StatelessWidget {
  const BrowseCuisines({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header Section
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Browse cuisines',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF6D5758),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Row(
                  children: [
                    Text('See all', style: TextStyle(color: Color(0xFFE54D50))),
                    Icon(Icons.chevron_right, size: 18, color: Color(0xFFE54D50)),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Items Section
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: cuisines.map((item) {
              return _buildItem(item);
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildItem(CuisineItem item) {
    return Column(
      children: [
        Container(
          height: 65,
          width: 65,
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            item.asset,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          item.label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xFF343434),
          ),
        ),
      ],
    );
  }
}