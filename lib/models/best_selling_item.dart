import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class BestSellingItem {
  final String name;
  final String imagePath;
  final String tagText;
  final IconData tagIcon;
  final Color tagColor;
  final String time;
  final String distance;

  BestSellingItem({
    required this.name,
    required this.imagePath,
    required this.tagText,
    required this.tagIcon,
    required this.tagColor,
    required this.time,
    required this.distance,
  });
}

// Daftar data Best Selling
List<BestSellingItem> bestSellingItems = [
  BestSellingItem(
    name: "Stellar Sips & Bites.",
    imagePath: "assets/img/stellar.png",
    tagText: "Top rated",
    tagIcon: Ionicons.thumbs_up_outline,
    tagColor: const Color(0xFFF1C40F),
    time: "16 min",
    distance: "5 km",
  ),
  BestSellingItem(
    name: "Zen Palace Cuisine",
    imagePath: "assets/img/zen.png",
    tagText: "New trend",
    tagIcon: Ionicons.trending_up_outline,
    tagColor: const Color(0xFF27AE60),
    time: "25 minutes",
    distance: "4 km",
  ),
  BestSellingItem(
    name: "Shop Pizza Hot",
    imagePath: "assets/img/pizza.png",
    tagText: "Hot",
    tagIcon: Ionicons.pricetag_outline,
    tagColor: const Color(0xFFE54D50),
    time: "16 min",
    distance: "3 km",
  ),
];