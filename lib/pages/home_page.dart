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
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  // Tab controller
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

  // Filter food by category
  List<Food> _filterMenuByCategory(FoodCatagoriey category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.catagoriey == category).toList();
  }

  // Return list of widgets for each category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCatagoriey.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            children: categoryMenu.map((food) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: FoodTitle(
                  food: food,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => FoodPage(food: food)),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                const MyCurrentLocation(),
                const MyDescription(),
              ],
            ),
          ),
        ],
        body: Consumer<Restorants>(
          builder: (context, restorant, child) {
            // Ensure menu is not null
            final menu = restorant.menu ?? [];
            return TabBarView(
              controller: _tabController,
              children: getFoodInThisCategory(menu),
            );
          },
        ),
      ),
    );
  }
}
