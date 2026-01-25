class CuisineItem {
  final String label;
  final String asset;

  CuisineItem({
    required this.label,
    required this.asset
  });
}

final cuisines = [
  CuisineItem(label: "Breakfast", asset: "assets/icons/breakfast.png"),
  CuisineItem(label: "Burger", asset: "assets/icons/burger.png"),
  CuisineItem(label: "Kebab", asset: "assets/icons/kebab.png"),
  CuisineItem(label: "Pancake", asset: "assets/icons/pancake.png"),
];