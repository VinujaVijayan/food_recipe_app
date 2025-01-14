import 'package:flutter/material.dart';
import 'package:food_recipe_app/VIEW/WIDGETS/categoryref.dart';


class Categoryscreen extends StatelessWidget {
  List<String> foodCategory = [
    'Dessert',
    'Breakfast',
    'Lunch',
    'Dinner',
    'Juice',
    'snack',
    'Main course',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: foodCategory.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            print("Building index: $index");
            return CategoryRefract(index: index, category: foodCategory[index]);
          }),
    );
  }
}
