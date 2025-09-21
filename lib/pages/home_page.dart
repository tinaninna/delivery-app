import 'package:delivery_app/components/my_button.dart';
import 'package:delivery_app/components/my_current_location.dart';
import 'package:delivery_app/components/my_description.dart';
import 'package:delivery_app/components/my_drawer.dart';
import 'package:delivery_app/components/my_current_location.dart';
import 'package:delivery_app/components/my_silver_app_bar.dart';
import 'package:delivery_app/components/my_textfield.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageSatate();

}

class _HomePageSatate extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled)=> [
          MySilverAppBar(
            title:Text("title"),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),

                // my current locaiton
                const MyCurrentLocation(),

                // description box
                const MyDescription(),

              ],
            ),
          ),
        ],
        body: Container(color: Colors.blue,),
      ),
    );
  }
}