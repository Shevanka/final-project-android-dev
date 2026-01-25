import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../models/models.dart';

class BestSellingSection extends StatelessWidget {
  const BestSellingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // --- HEADER ---
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Best Selling',
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

        // --- HORIZONTAL LIST ---
        SizedBox(
          height: 230,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            itemCount: bestSellingItems.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return _buildBestSellingCard(bestSellingItems[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildBestSellingCard(BestSellingItem item) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. Gambar
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              item.imagePath,
              height: 140,
              width: 140,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),

          // 2. Tag Dinamis (Top Rated / New Trend / Hot)
          Row(
            children: [
              Icon(item.tagIcon, size: 14, color: item.tagColor),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  item.tagText,
                  style: TextStyle(
                    color: item.tagColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),

          // 3. Nama Tempat/Menu
          Text(
            item.name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFF343434),
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 6),

          // 4. Info Waktu & Jarak
          Row(
            children: [
              const Icon(Ionicons.time_outline, size: 14, color: Colors.grey),
              const SizedBox(width: 4),
              Text(
                item.time,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
              const SizedBox(width: 8),
              const Icon(Ionicons.navigate_outline, size: 14, color: Colors.grey),
              const SizedBox(width: 4),
              Text(
                item.distance,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}