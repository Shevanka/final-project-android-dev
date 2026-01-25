class ReadyLunchItem {
  final String name;
  final String category;
  final String imagePath;
  final double rating;
  final String hotDeal;
  final String deliveryInfo;
  final bool isFreeDelivery;
  final List<String> tags;

  ReadyLunchItem({
    required this.name,
    required this.category,
    required this.imagePath,
    required this.rating,
    required this.hotDeal,
    required this.deliveryInfo,
    this.isFreeDelivery = false,
    required this.tags,
  });
}

// Daftar data Ready for Lunch
List<ReadyLunchItem> readyLunchItems = [
  ReadyLunchItem(
    name: "Culinary Compass",
    category: "Italian Cuisine",
    imagePath: "assets/img/spaghetti.png",
    rating: 4.5,
    hotDeal: "30% Off",
    deliveryInfo: "50% Off",
    tags: ["Voucher ready", "Items discount"],
  ),
  ReadyLunchItem(
    name: "Velvet Olive Bistro",
    category: "Fine Dining",
    imagePath: "assets/img/bistro.png",
    rating: 4.5,
    hotDeal: "50% Off",
    deliveryInfo: "10:00 - 12:00",
    isFreeDelivery: true,
    tags: ["Up to 50% off", "Items discount"],
  ),
  ReadyLunchItem(
    name: "Sandwich Grove",
    category: "Sandwich & Chips",
    imagePath: "assets/img/sandwich.png",
    rating: 4.5,
    hotDeal: "50% Off",
    deliveryInfo: "10:00 - 12:00",
    isFreeDelivery: true,
    tags: ["\$10 discount", "Limited Offer"],
  ),
];