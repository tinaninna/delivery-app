import 'package:delivery_app/components/my_button.dart';
import 'package:delivery_app/components/my_cart_title.dart';
import 'package:delivery_app/model/cart_item.dart';
import 'package:delivery_app/model/restorants.dart';
import 'package:delivery_app/pages/paymen_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {

  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restorants>(builder: (context,restaurant,child){
      //cart
      final userCart = restaurant.cart;

      //scaffold ui
      return Scaffold(
        appBar: AppBar(
          title: Text("cart"),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            //clear cart button
            IconButton(
              onPressed: () {
                showDialog(
                  context: context, 
                  builder: (context) => AlertDialog(
                    title: Text("Are you sure you want to clear the cart"),
                    actions: [
                      //cancel button
                      TextButton(
                        onPressed: () => Navigator.pop(context), 
                        child: Text("cancel"),
                      ),

                      //yes button
                      TextButton(
                        onPressed: (){
                          Navigator.pop(context);
                          restaurant.clearCart();

                        }, 
                        child: Text("yes"),
                      ),
                    ],
                  )
                );
              }, 
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
        body: Column(
          children: [

            // list of cart
            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty 
                  ? Expanded(
                      child: Center(
                        child: Text("cart is empty.."),
                      ),
                    ) 
                  : Expanded(
                    child: ListView.builder(
                      itemCount: userCart.length,
                      itemBuilder: (context, index) {
                        //get individual cart item
                        final cartItem = userCart[index];
              
                        //return cart titl ui
                        return MyCartTitle(cartItem: cartItem);
                      }
                    )
                  )
                ],
              ),
            ),

            // button to pey
            MyButton(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PaymenPage(),
                ),
              ),
              text: "go to check out",
            ),

            const SizedBox(height: 25,),

          ],
        ),
      );
    });
  }
}