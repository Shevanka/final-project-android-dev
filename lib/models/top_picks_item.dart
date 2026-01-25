import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class TopPickItem {
  final String name;
  final String imagePath;
  final String tagText;
  final IconData tagIcon;
  final Color tagColor;
  final String duration;
  final String distance;

  TopPickItem({
    required this.name,
    required this.imagePath,
    required this.tagText,
    required this.tagIcon,
    required this.tagColor,
    required this.duration,
    required this.distance,
  });
}

// Daftar data Top Picks
List<TopPickItem> topPickItems = [
  TopPickItem(
    name: "Hanoi Pancake Shop",
    imagePath: "assets/img/pancake.png",
    tagText: "Breakfast deal",
    tagIcon: Ionicons.pricetag_outline,
    tagColor: const Color(0xFFE54D50),
    duration: "10 min",
    distance: "2.5 km",
  ),
  TopPickItem(
    name: "Street Corner Cafe",
    imagePath: "assets/img/coffee.png",
    tagText: "Free Delivery",
    tagIcon: Ionicons.bicycle_outline,
    tagColor: const Color(0xFF27AE60),
    duration: "16 min",
    distance: "5 km",
  ),
  TopPickItem(
    name: "Shop Pizza Hot",
    imagePath: "assets/img/pizza.png",
    tagText: "Hot Deal",
    tagIcon: Ionicons.pricetag_outline,
    tagColor: const Color(0xFFE54D50),
    duration: "16 min",
    distance: "3 km",
  ),
];