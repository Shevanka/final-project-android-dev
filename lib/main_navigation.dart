import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'screens/screens.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  // Daftar halaman (untuk sementara Home saja)
  final List<Widget> _pages = [
    const HomeScreen(),
    const Center(child: Text("Orders Page")),
    const Center(child: Text("Notifications Page")),
    const Center(child: Text("Me Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        type: BottomNavigationBarType.fixed, // Tetap 4 ikon
        selectedItemColor: const Color(0xFFE54D50), // Warna merah sesuai UI
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
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
                // Badge Merah (Angka 3)
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