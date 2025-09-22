import 'package:delivery_app/components/my_button.dart';
import 'package:delivery_app/model/food.dart';
import 'package:delivery_app/model/restorants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {

  final Food food;
  final Map<Addons, bool> selectedAddons = {};

  FoodPage({
    super.key,
    required this.food,
  }){
     // initialize selected addons to be false
     for (Addons addon in food.availableAddons){
      selectedAddons[addon] = false;
     }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();


}
class _FoodPageState extends State<FoodPage> {

  //method to add to cart
  void addToCart(Food food, Map<Addons, bool> selectedAddons){
    //close the current food page to go back to menu
    Navigator.pop(context);
    
    //format the selected addons
    List<Addons> currentlySelectedAddons = [];
    for (Addons addons in widget.food.availableAddons){
      if (widget.selectedAddons[addons] == true){
        currentlySelectedAddons.add(addons);
      }
    }

    //add to cart
    context.read<Restorants>().addToCart(food, currentlySelectedAddons);
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        //scaffold ui
        Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            //food image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                widget.food.imagePath,
                height: 250,           // fixed height
                width: double.infinity, // fills width
                fit: BoxFit.cover,     // crop if necessary
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
        
                  //food name
                  Text(
                    widget.food.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
        
                  //food price
                  Text(
                    '\$'+widget.food.price.toString(),
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
        
                  const SizedBox(height: 10,),
              
                  //food description
                  Text( widget.food.description,),
        
                  const SizedBox(height: 10,),
        
                  Divider(color: Theme.of(context).colorScheme.secondary,),
                  const SizedBox(height: 10,),
                  //addons
                  Text(
                    "Add-ons",
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
        
                    ),
                  ),
                   
                  const SizedBox(height: 10,),
                  
                  Container(
                    decoration: BoxDecoration(
                      border:Border.all(
                        color: Theme.of(context).colorScheme.secondary),
                      borderRadius: BorderRadius.circular(8), 
                    ),
                    child: ListView.builder(
                      shrinkWrap:true ,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: widget.food.availableAddons.length,
                      itemBuilder:(context, index) {
                                
                         // get individual addons
                        Addons addons = widget.food.availableAddons[index];
                                
                        return CheckboxListTile(
                          title: Text(addons.name),
                          subtitle: Text( 
                            '\$${addons.price}',
                            style: TextStyle(
                              color:  Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          value: widget.selectedAddons[addons],
                          onChanged: (bool? value) {
                            setState(() {
                              widget.selectedAddons[addons] = value!;
                            });
                          },
                        );
                      } ,
                    ),
                  ),
                ],
              ),
            ),

            //buttton => add to cart
            MyButton(
              text: "Add to cart", 
              onTap: () => addToCart(widget.food, widget.selectedAddons),
            ),

            const SizedBox(height: 25,),
          ],
        ),
      ),
    ),
    // back btn
    SafeArea(
      child: Opacity(
        opacity: 0.6,
        child: Container(
          margin: const EdgeInsets.only(left:25),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded), 
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
    )

      ],
    );
  }
}