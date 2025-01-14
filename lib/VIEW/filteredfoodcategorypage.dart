import 'package:flutter/material.dart';
import 'package:food_recipe_app/MODEL/foodmodel.dart';
import 'package:food_recipe_app/UTILS/mycolor.dart';
import 'package:food_recipe_app/VIEW/WIDGETS/categorypagelist.dart';

class FilteredfoodListpage extends StatelessWidget {
  final String categorylist;
  const FilteredfoodListpage({
    required this.categorylist,
  });

  @override
  Widget build(BuildContext context) {
    List<Food> filteredfood =
        foodList.where((food) => food.category == categorylist).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text('$categorylist Items'),
          backgroundColor: Mycolor.primarycolor,
        ),
        body: GridView.builder(
          itemCount: filteredfood.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 2, crossAxisSpacing: 2),
          itemBuilder: (BuildContext context, int index) {
            return categorypagelistref(
              food: filteredfood[index],
              image: filteredfood[index].image,
              name: filteredfood[index].name,
              category: filteredfood[index].category,
            );
          },
        ));
  }
}
