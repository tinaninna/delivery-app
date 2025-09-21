import 'package:delivery_app/model/food.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {

  final TabController tabController;

  const MyTabBar({
    super.key, 
    required this.tabController
  });

  List<Tab> _buildCategoryTabs(){
    return FoodCatagoriey.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: _buildCategoryTabs(),
      ),
    );
  }
}