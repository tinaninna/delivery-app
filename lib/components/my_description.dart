import 'package:flutter/material.dart';

class MyDescription extends StatelessWidget {
  const MyDescription({super.key});

  @override
  Widget build(BuildContext context) {
    //text style
    var myPrimaryTextStyple = TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextStyple = TextStyle(color: Theme.of(context).colorScheme.primary);
    
    

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8)
      ),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left:25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //delivery fee
          Column(
            children: [
              Text(
                "\$.99",
                style: myPrimaryTextStyple,
              ),
              Text(
                "Delivery fee",
                style: mySecondaryTextStyple,
              ),
            ],
          ),

          //delivery time
          Column(
            children: [
              Text("15-30 min"),
              Text("delivery time")
            ],
          )

        ],
      ),
    );
  }
}