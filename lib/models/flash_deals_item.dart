class FlashDeal {
  final String name;
  final String category;
  final String offer;
  final String imagePath;

  FlashDeal({
    required this.name,
    required this.category,
    required this.offer,
    required this.imagePath,
  });
}

List<FlashDeal> flashDealItems = [
  FlashDeal(
    name: "Julia's Kitchen",
    category: "Breakfast",
    offer: "Limited Offer 50% Off",
    imagePath: "assets/img/egg.png",
  ),
  FlashDeal(
    name: "Pizza Hut",
    category: "Pizza",
    offer: "Promo 30%",
    imagePath: "assets/img/pizza.png",
  ),
  FlashDeal(
      name: "Burger Queen",
      category: "Fast Food",
      offer: "Limited Offer 50% Off",
      imagePath: "assets/img/burger.png")
];