import 'package:flutter/material.dart';
import '../model/food.dart';

class FoodTitle extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const FoodTitle({
    super.key,
    required this.food,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                
                //text food details
                Expanded(
                  child: Column(
                    children: [
                      Text(food.name),
                      Text(food.price.toString()),
                      Text(food.description),
                    ],
                  ),
                ),
            
                //food image
                Image.asset(food.imagePath, height: 120,),
              ],
            ),
          ),
        )
      ],
    );
  }
}