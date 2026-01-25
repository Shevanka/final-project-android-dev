import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../models/models.dart';

class FlashDealsSection extends StatelessWidget {
  const FlashDealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // --- HEADER ---
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Row(
            children: [
              const Text(
                'Flash deals end in',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF6D5758),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFFF7A059),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  '01:19',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ),
              const Spacer(),
              const Text(
                'See all',
                style: TextStyle(color: Color(0xFFE54D50), fontSize: 14),
              ),
              const Icon(Icons.chevron_right, size: 18, color: Color(0xFFE54D50)),
            ],
          ),
        ),

        // --- HORIZONTAL SCROLL AREA ---
        SizedBox(
          height: 125,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            itemCount: flashDealItems.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final deal = flashDealItems[index];
              return _buildDealCard(deal);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildDealCard(FlashDeal deal) {
    return Container(
      width: 280,
      margin: const EdgeInsets.only(right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 1. Bagian Gambar (Tetap)
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              deal.imagePath,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),

          // 2. Bagian Info (Wajib dibungkus Expanded agar membatasi lebar Column)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  deal.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF343434),
                  ),
                ),
                Text(
                  deal.category,
                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                ),

                // 3. Row untuk Promo/Offer
                Row(
                  children: [
                    const Icon(Ionicons.gift_outline, size: 16, color: Color(0xFFE54D50)),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        deal.offer,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Color(0xFFE54D50),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}