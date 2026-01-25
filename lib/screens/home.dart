import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDFD),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SECTION A: HOME HEADER
            const HomeHeader(
              location: "3891 Ranchview Dr, Richardson, Texas",
              userName: "Bruno",
            ),

            // SECTION B: CUISINES
            SectionHeader(title: "Browse cuisines", onActionPressed: () {}),
            BrowseCuisines(),

            // SECTION C: FLASH DEALS
            SectionHeader(title: "Flash deals end in", onActionPressed: () {}),
            const FlashDealsSection(),

            // SECTION D: TOP PICKS
            SectionHeader(title: "Top picks", onActionPressed: () {}),
            const TopPicksSection(),

            // SECTION E: BEST SELLING
            SectionHeader(title: "Best selling", onActionPressed: () {}),
            const BestSellingSection(),

            // SECTION F: READY FOR LUNCH
            SectionHeader(title: "Ready for lunch?", onActionPressed: () {}),
            const ReadyLunchSection(),
            const SizedBox(height: 80),
          ],
        ),
      ),
      // Bottom Navigation Bar sebagai hiasan (Statis)
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Terkunci di icon 'Home'
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFFE54D50),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            activeIcon: Icon(Ionicons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Ionicons.bag_handle_outline),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                const Icon(Ionicons.notifications_outline),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      color: Color(0xFFE54D50),
                      shape: BoxShape.circle,
                    ),
                    constraints: const BoxConstraints(minWidth: 14, minHeight: 14),
                    child: const Text(
                      '3',
                      style: TextStyle(color: Colors.white, fontSize: 8),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            label: 'Notifications',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            label: 'Me',
          ),
        ],
      ),
    );
  }
}