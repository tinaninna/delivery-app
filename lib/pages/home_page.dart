import 'package:delivery_app/components/my_button.dart';
import 'package:delivery_app/components/my_current_location.dart';
import 'package:delivery_app/components/my_description.dart';
import 'package:delivery_app/components/my_drawer.dart';
import 'package:delivery_app/components/my_food_title.dart';
import 'package:delivery_app/components/my_silver_app_bar.dart';
import 'package:delivery_app/components/my_tab_bar.dart';
import 'package:delivery_app/components/my_textfield.dart';
import 'package:delivery_app/model/food.dart';
import 'package:delivery_app/model/restorants.dart';
import 'package:delivery_app/pages/food_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageSatate();

}

class _HomePageSatate extends State<HomePage> with SingleTickerProviderStateMixin {

  //tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: FoodCatagoriey.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // sort out and return a list of food items that belong to a specific categroty
  List<Food> _filterMenuByCategory (FoodCatagoriey category, List<Food> fullMenu){
    return fullMenu.where((food)=> food.catagoriey == category).toList();
  }

  //return list of foods in given category
// return list of food widgets in each category
List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
  return FoodCatagoriey.values.map((category) {
    List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

    return ListView.builder(
      itemCount: categoryMenu.length,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        //get individual food
        final food = categoryMenu[index];

        //return food list UI
        return FoodTitle(
          food: food, 
          onTap: () => Navigator.push(
            context, 
            MaterialPageRoute(
              builder: (context) => FoodPage(food: food)
            )
          ),
        );
      },
    );
  }).toList();
}

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled)=> [
          MySilverAppBar(
            title:MyTabBar(tabController: _tabController),
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
        body: Consumer<Restorants>(
          builder: (context, restorant, child) => TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(restorant.menu),)
        )
      ),
    );
  }
}