//food item
class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCatagoriey catagoriey;
  List<Addons> availableAddons;

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.catagoriey,
    required this.availableAddons,
  });
}

//food catagories
enum FoodCatagoriey {
  burger,
  salads,
  sides,
  deserts,
  drinks,
}

// food addons
class Addons {
  String name;
  double price;

  Addons({
    required this.name,
    required this.price
  });
}
