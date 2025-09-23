

import "package:collection/collection.dart";
import "package:delivery_app/model/cart_item.dart";
import "package:flutter/material.dart";
import "package:intl/intl.dart";

import "food.dart";

class Restorants extends ChangeNotifier {
  // list of food menu

  final List<Food> _menu = [
    //burgers
    Food(
      name: "classic chease burger", 
      description: "Juicy beef patty with melted cheddar, fresh lettuce, tomato, pickles, and special sauce in", 
      imagePath: "lib/images/burgers/cheese_burger.jpg", 
      price: 357, 
      catagoriey: FoodCatagoriey.burger, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "avocados", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "Aloha Burger", 
      description: "Grilled beef patty topped with pineapple, ham, lettuce, tomato, and teriyaki sauce.", 
      imagePath: "lib/images/burgers/aloha_ burger.jpg", 
      price: 413, 
      catagoriey: FoodCatagoriey.burger, 
      availableAddons: [
        Addons(name: "Extra pineapple", price: 0.99),
        Addons(name: "cheese", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "BBQ Burger", 
      description: "Beef patty smothered in smoky BBQ sauce, crispy onion rings, cheddar cheese, and fresh lettuce.", 
      imagePath: "lib/images/burgers/bbq_burger.jpg", 
      price: 385, 
      catagoriey: FoodCatagoriey.burger, 
      availableAddons: [
        Addons(name: "extra cheese", price: 0.99),
        Addons(name: "BBQ sauce", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "Blue Moon Burger", 
      description: "Gourmet beef patty with blue cheese, caramelized onions, lettuce, and tomato on a brioche bun.", 
      imagePath: "lib/images/burgers/bluemoon_burger.jpg", 
      price: 440, 
      catagoriey: FoodCatagoriey.burger, 
      availableAddons: [
        Addons(name: "Extra blue cheese", price: 0.99),
        Addons(name: "mushrooms", price: 1.99),
        Addons(name: "bacons", price: 2.99),
      ]
    ),
    Food(
      name: "Veggie Burger", 
      description: "Plant-based patty with lettuce, tomato, avocado, pickles, and vegan mayo on a whole grain bun.", 
      imagePath: "lib/images/burgers/vage_burger.jpg", 
      price:357, 
      catagoriey: FoodCatagoriey.burger, 
      availableAddons: [
        Addons(name: "vegan cheese", price: 0.99),
        Addons(name: "Extra avocado", price: 1.99),
        Addons(name: "mushrooms", price: 2.99),
      ]
    ),
    //salads
    Food(
      name: "Asian Sesame Salad", 
      description: "Fresh greens with shredded carrots, cucumber, bell peppers, crispy wontons, and sesame dressing.", 
      imagePath: "lib/images/salads/asianseasm_salad.jpg", 
      price: 330, 
      catagoriey: FoodCatagoriey.salads, 
      availableAddons: [
        Addons(name: "Grilled chicken,", price: 0.99),
        Addons(name: "tofu", price: 1.99),
        Addons(name: "extra dressing", price: 2.99),
      ]
    ),
    Food(
      name: "Caesar Salad", 
      description: "Romaine lettuce, croutons, parmesan cheese, and classic Caesar dressing.", 
      imagePath: "lib/images/salads/caser_salad.jpg", 
      price: 303.99, 
      catagoriey: FoodCatagoriey.salads, 
      availableAddons: [
        Addons(name: "Grilled chicken", price: 0.99),
        Addons(name: "bacon bits", price: 1.99),
        Addons(name: "extra parmesan", price: 2.99),
      ]
    ),
    Food(
      name: "Greek Salad", 
      description: "Cucumbers, tomatoes, olives, red onion, and feta cheese with olive oil and oregano.", 
      imagePath: "lib/images/salads/gric_salad.jpg", 
      price: 330.99, 
      catagoriey: FoodCatagoriey.salads, 
      availableAddons: [
        Addons(name: "Grilled chicken", price: 0.99),
        Addons(name: "extra feta", price: 1.99),
        Addons(name: "pita bread", price: 2.99),
      ]
    ),
    Food(
      name: "Quinoa Salad", 
      description: "Nutritious mix of quinoa, cherry tomatoes, cucumber, bell peppers, and lemon vinaigrette.", 
      imagePath: "lib/images/salads/quinoa_salad.jpg", 
      price: 357, 
      catagoriey: FoodCatagoriey.salads, 
      availableAddons: [
        Addons(name: "Avocado", price: 0.99),
        Addons(name: "grilled chicken", price: 1.99),
        Addons(name: "feta", price: 2.99),
      ]
    ),
    Food(
      name: "Southwest Salad", 
      description: "Mixed greens with corn, black beans, avocado, tomatoes, and spicy chipotle dressing.", 
      imagePath: "lib/images/salads/sowthwest_salad.jpg", 
      price: 371, 
      catagoriey: FoodCatagoriey.salads, 
      availableAddons: [
        Addons(name: "Grilled chicken", price: 0.99),
        Addons(name: "tortilla strips", price: 1.99),
        Addons(name: "extra avocado", price: 2.99),
      ]
    ),

    //deserts
    Food(
      name: "Cake", 
      description: "Moist and fluffy slice of cake with chocolate or vanilla frosting.", 
      imagePath: "lib/images/deserts/cake_desedrts.jpg", 
      price: 220.99, 
      catagoriey: FoodCatagoriey.deserts, 
      availableAddons: [
        Addons(name: "Extra frosting,", price: 0.99),
        Addons(name: "chocolate chips", price: 1.99),
        Addons(name: "fruit topping", price: 2.99),
      ]
    ),
    Food(
      name: "Donuts", 
      description: "Soft, sweet donuts with glaze or powdered sugar.", 
      imagePath: "lib/images/deserts/donats_deserts.jpg", 
      price: 138.79, 
      catagoriey: FoodCatagoriey.deserts, 
      availableAddons: [
        Addons(name: "Chocolate drizzle", price: 0.99),
        Addons(name: "sprinkles,", price: 1.99),
        Addons(name: "cream filling", price: 2.99),
      ]
    ),
    Food(
      name: "Ice Cream", 
      description: "Creamy ice cream available in vanilla, chocolate, or strawberry.", 
      imagePath: "lib/images/deserts/icecreasundae_deserts.jpg", 
      price: 193, 
      catagoriey: FoodCatagoriey.deserts, 
      availableAddons: [
        Addons(name: "Chocolate syrup", price: 0.99),
        Addons(name: "nuts", price: 1.99),
        Addons(name: "whipped cream", price: 2.99),
      ]
    ),
    Food(
      name: "Macaron", 
      description: "Colorful French macarons with sweet, delicate filling.", 
      imagePath: "lib/images/deserts/macaroon_desers.jpg", 
      price: 110, 
      catagoriey: FoodCatagoriey.deserts, 
      availableAddons: [
        Addons(name: "Extra filling flavo", price: 0.99),
        Addons(name: "chocolate drizzle", price: 1.99),
      ]
    ),
    Food(
      name: "Waffles", 
      description: "Crispy golden waffles with syrup, butter, and fresh fruit.", 
      imagePath: "lib/images/deserts/wafles_deserts.jpg", 
      price: 275, 
      catagoriey: FoodCatagoriey.deserts, 
      availableAddons: [
        Addons(name: "Chocolate syrup", price: 0.99),
        Addons(name: "ice cream", price: 1.99),
        Addons(name: "whipped cream", price: 2.99),
      ]
    ),
    //drinks
    Food(
      name: "Boba Tea", 
      description: "Sweet milk tea with chewy tapioca pearls.", 
      imagePath: "lib/images/drinks/bobatea_drins.jpg", 
      price: 248.99, 
      catagoriey: FoodCatagoriey.drinks, 
      availableAddons: [
        Addons(name: "Extra pearls", price: 0.99),
        Addons(name: "jelly", price: 1.99),
        Addons(name: "flavored syrup", price: 2.99),
      ]
    ),
    Food(
      name: "Cocktail Drinks", 
      description: "Refreshing non-alcoholic cocktails with fruit juices and garnishes.", 
      imagePath: "lib/images/drinks/coctail_drinks.jpg", 
      price: 303, 
      catagoriey: FoodCatagoriey.drinks, 
      availableAddons: [
        Addons(name: "Extra fruit", price: 0.99),
        Addons(name: "sparkling water", price: 1.99),
      ]
    ),
    Food(
      name: "Cold Drinks", 
      description: "Chilled soft drinks including cola, lemonade, or soda.", 
      imagePath: "lib/images/drinks/cold_drinks.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.drinks, 
      availableAddons: [
        Addons(name: "Ice", price: 0.99),
        Addons(name: "lemon slice", price: 1.99),
      ]
    ),
    Food(
      name: "Milkshake", 
      description: "Thick and creamy milkshake in chocolate, vanilla, or strawberry.", 
      imagePath: "lib/images/drinks/milkshakes_drink.jpg", 
      price: 110.99, 
      catagoriey: FoodCatagoriey.drinks, 
      availableAddons: [
        Addons(name: "Whipped cream", price: 0.99),
        Addons(name: "chocolate chips,", price: 1.99),
        Addons(name: "extra flavor", price: 2.99),
      ]
    ),
    Food(
      name: "Vegetable Juice", 
      description: "Freshly blended juice from carrots, beetroot, spinach, and celery.", 
      imagePath: "lib/images/drinks/vegitable_drink.jpg", 
      price: 299, 
      catagoriey: FoodCatagoriey.drinks, 
      availableAddons: [
        Addons(name: "Lemon", price: 0.99),
        Addons(name: "ginger", price: 1.99),
        Addons(name: "extra veggies", price: 2.99),
      ]
    ),
    //sides
    Food(
      name: "Garlic Bread", 
      description: "Toasted bread slices with garlic butter and herbs.", 
      imagePath: "lib/images/sides/garlic_bread_sides.jpg", 
      price: 345, 
      catagoriey: FoodCatagoriey.sides, 
      availableAddons: [
        Addons(name: "Extra cheese", price: 0.99),
        Addons(name: "marinara dip", price: 1.99),
      ]
    ),
    Food(
      name: "Loaded Fries", 
      description: "Crispy fries topped with cheese, bacon, and sour cream.", 
      imagePath: "lib/images/sides/loaded_fries.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.sides, 
      availableAddons: [
        Addons(name: "Extra cheese", price: 0.99),
        Addons(name: "jalapeños", price: 1.99),
        Addons(name: "chili sauce", price: 2.99),
      ]
    ),
    Food(
      name: "Mac & Cheese", 
      description: "Creamy macaroni pasta with melted cheese sauce.", 
      imagePath: "lib/images/sides/mac_sides.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.sides, 
      availableAddons: [
        Addons(name: "Bacon bits", price: 0.99),
        Addons(name: "extra cheese", price: 1.99),
        Addons(name: "herbs", price: 2.99),
      ]
    ),
    Food(
      name: "Onion Rings", 
      description: "Crispy golden fried onion rings served with dipping sauce.", 
      imagePath: "lib/images/sides/onion_rings.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.sides, 
      availableAddons: [
        Addons(name: "Cheese dip", price: 0.99),
        Addons(name: "spicy sauce", price: 1.99),
      ]
    ),
    Food(
      name: "Sweet Potato Fries", 
      description: "Crispy sweet potato fries with a hint of salt and cinnamon.", 
      imagePath: "lib/images/sides/sweet_potatoo.jpg", 
      price: 0.99, 
      catagoriey: FoodCatagoriey.sides, 
      availableAddons: [
        Addons(name: "Ketchup", price: 0.99),
        Addons(name: "spicy mayo", price: 1.99),
        Addons(name: "cheese sauce", price: 2.3),
      ]
    ),

  ];

  //user cart
  final List<CartItem> _cart = [];

  //delivery address which user can update
  String _deliveryAddress = '93 Adama';

  /*
  G E T T E R S
   */
  

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*
  O P E R A T I O N S
   */
  


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

  //update delivery address
void updateDeliveryAddress(String newAddress) {
  _deliveryAddress = newAddress;
  notifyListeners();
}


  /*
  H E L P E R S
   */

  // generate a reciept
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // format the data to include up to seconds only
    String formattedData = DateFormat('yyy-MM-dd  HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedData);
    receipt.writeln();
    receipt.writeln("-------------");

    for (final cartItem in _cart) {
      receipt.writeln(
        "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}"
      );
      if(cartItem.selectedAddons.isNotEmpty) {
        receipt
           .write("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("---------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString();
    
  }
   

  //formate double value into menu
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  //format list of addons into a strings summary
  String _formatAddons(List<Addons> addons) {
  return addons
      .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
      .join(", ");
}

}