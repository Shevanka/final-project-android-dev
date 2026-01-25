import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomeHeader extends StatelessWidget {
  final String location;
  final String userName;
  final ValueChanged<String>? onSearch;

  const HomeHeader({
    super.key,
    required this.location,
    required this.userName,
    this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 48, 16, 24),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFE83540),
            Color(0xFFDA7279),
            Colors.white,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Location Row
          Row(
            children: [
              // Bar Alamat (Kapsul Transparan)
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3), // Efek glassmorphism
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      const Icon(Ionicons.location_outline, color: Colors.black87, size: 18),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          location,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Icon(Ionicons.chevron_forward_outline, color: Colors.black87, size: 16),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 12),
              // Tombol Hati (Lingkaran Putih)
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Ionicons.heart_outline,
                  color: Colors.black87,
                  size: 22,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),

          // Greeting
          Text(
            "Good morning, $userName 👋",
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 2),
          const Text(
            "Are you ready to place your order?",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 20),

          // Search Bar
          Container(
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextField(
              onChanged: onSearch,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Breakfast, Burger, Taco, Cappuccino, Coffee",
                hintStyle: TextStyle(

                  color: Colors.black54,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                icon: Icon(Ionicons.search_outline, size: 20, color: Colors.black54, weight: 800,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}