import "package:collection/collection.dart";
import "package:delivery_app/model/cart_item.dart";
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
  List<CartItem> get cart => _cart;

  /*
  O P E R A T I O N S
   */
  
  //user cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addons> selectedAddons ) {
    //see if ther is a cart item already with tthe same
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food items are the same
      bool isSameFood = item.food == food;

      //chec if the list of selected addons are the same
      bool isSameAddons = ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    //if ite already exists, increase it's quality
    if (cartItem != null){
      cartItem.quantity++;
    }

    //otherwise, add a new cart
    else{
      _cart.add(
        CartItem(
          food: food, 
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();

  }


  //remove from cart
  void removeFromCart(CartItem cartItem){
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1){
      if (_cart[cartIndex].quantity > 1){
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice(){
    double total = 0.0;

    for (CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;

      for (Addons addons in cartItem.selectedAddons){
        itemTotal += addons.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //get total number of itmens in the cart
  int getTotalItemCount(){
    int totalItemCount = 0;

    for (CartItem cartItem in _cart){
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;

  }


  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*
  H E L P E R S
   */

  // generate a reciept

  //formate double value into menu

  //format list of addons into a strings summary

}