import 'package:delivery_app/components/my_recipt.dart';
import 'package:delivery_app/model/restorants.dart';
import 'package:delivery_app/services/database/firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {
  //get access to db
  FirestoreService db = FirestoreService();

  @override
  void initState() {
    super.initState();

    // if we get to this page, submit order to firestore db
    String receipt = context.read<Restorants>().displayCartReceipt();
    db.saveOrderToDatabase(receipt);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildBottonNaveBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyRecipt(),
          ],
        ),
      ),
    );
  }

  // custom botton nav bar - message/calldelivery driver
  Widget _buildBottonNaveBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(10),
        ),
      ),
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          //profile picture of delivery man
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {}, 
              icon: const Icon(Icons.person),
            ),
          ),

          const SizedBox(height: 10),

          //driver delivery
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bereket Teklu",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Text(
                "Driver",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ],
          ),

          const Spacer(),

          Row(
            children: [
              //message button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {}, 
                  icon: const Icon(Icons.message),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              const SizedBox(height: 10,),

              //call burthon
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {}, 
                  icon: const Icon(Icons.call),
                  color: Colors.green,
                ),
              ),
            ],
          )


          

          
        ],
      ),

    );
  }
}
