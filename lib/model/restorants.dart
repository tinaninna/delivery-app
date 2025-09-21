import "package:flutter/material.dart";

import "food.dart";

class Restorants extends ChangeNotifier {
  // list of food menu

  final List<Food> _menu = [
    //burgers
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/burgers/cheese_burger.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.burger, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/burgers/aloha_ burger.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.burger, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/burgers/bbq_burger.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.burger, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/burgers/bluemoon_burger.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.burger, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/burgers/vage_burger.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.burger, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    //salads
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/salads/asianseasm_salad.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.salads, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/salads/caser_salad.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.salads, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/salads/gric_salad.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.salads, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/salads/quinoa_salad.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.salads, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/salads/sowthwest_salad.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.salads, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),

    //deserts
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/deserts/cake_desedrts.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.deserts, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/deserts/donats_deserts.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.deserts, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/deserts/icecreasundae_deserts.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.deserts, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/deserts/macaroon_desers.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.deserts, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/deserts/wafles_deserts.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.deserts, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    //drinks
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/drinks/bobatea_drins.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.drinks, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/drinks/coctail_drinks.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.drinks, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/drinks/cold_drinks.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.drinks, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/drinks/milkshakes_drink.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.drinks, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/drinks/vegitable_drink.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.drinks, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    //sides
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/sides/garlic_bread_sides.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.sides, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/sides/loaded_fries.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.sides, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/sides/mac_sides.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.sides, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/sides/onion_rings.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.sides, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "classic chease burger", 
      description: "description", 
      imagePath: "lib/images/sides/sweet_potatoo.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.sides, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),

  ];

  /*
  G E T T E R S
   */

  List<Food> get menu => _menu;

  /*
  O P E R A T I O N S
   */

  // add to cart
  //remove from cart
  //get total price of cart
  //get total number of itmens in the cart
  //clear cart

  /*
  H E L P E R S
   */

  // generate a reciept

  //formate double value into menu

  //format list of addons into a strings summary

}