import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../models/models.dart';

class ReadyLunchSection extends StatelessWidget {
  const ReadyLunchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // --- HEADER ---
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Ready for Lunch?',
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

        // --- VERTICAL LIST ---
        ListView.builder(
          shrinkWrap: true, // Agar mengikuti tinggi konten
          physics: const NeverScrollableScrollPhysics(), // Scroll dikontrol oleh parent
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: readyLunchItems.length,
          itemBuilder: (context, index) {
            return _buildLunchCard(readyLunchItems[index]);
          },
        ),
      ],
    );
  }

  Widget _buildLunchCard(ReadyLunchItem item) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. Gambar (Tetap)
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              item.imagePath,
              width: 110,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),

          // 2. Info Content (Wajib Expanded agar Row di dalamnya tidak overflow)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // --- Judul & Rating ---
                // PERBAIKAN: Hapus Expanded yang membungkus Column ini
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        item.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF343434),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 8), // Jarak aman antara nama & rating
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.star, color: Colors.orange, size: 14),
                          const SizedBox(width: 4),
                          Text(
                            item.rating.toString(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  item.category,
                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                ),
                const SizedBox(height: 8),

                // --- Deals Info ---
                _buildInfoRow(Ionicons.pricetag_outline, "Hot Deal: ", item.hotDeal, const Color(0xFFE54D50)),
                const SizedBox(height: 4),
                _buildInfoRow(
                  Ionicons.bicycle_outline,
                  item.isFreeDelivery ? "Free Delivery: " : "Delivery: ",
                  item.deliveryInfo,
                  const Color(0xFF27AE60),
                ),
                const SizedBox(height: 10),

                // --- Tags / Chips ---
                Wrap(
                  spacing: 8,
                  runSpacing: 4, // Jarak antar baris jika tag turun ke bawah
                  children: item.tags.map((tag) {
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: const Color(0xFFD1F2EB),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        tag,
                        style: const TextStyle(
                          color: Color(0xFF16A085),
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value, Color color) {
    return Row(
      children: [
        Icon(icon, size: 15, color: color),
        const SizedBox(width: 6),
        Text(
          label,
          style: TextStyle(color: color, fontSize: 13, fontWeight: FontWeight.w500),
        ),
        // PERBAIKAN: Gunakan Expanded di sini agar value tidak menabrak batas kanan
        Expanded(
          child: Text(
            value,
            style: const TextStyle(color: Colors.black54, fontSize: 13),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}