import 'package:flutter/material.dart';
import 'package:food_recipe_app/MODEL/foodmodel.dart';
import 'package:food_recipe_app/UTILS/mycolor.dart';
import 'package:food_recipe_app/VIEW/detailspage.dart';


class categorypagelistref extends StatelessWidget {
  final ImageProvider? image;
  final String? name;
  final String? category;
  final Food food;

  const categorypagelistref(
      {required this.image,
      required this.name,
      required this.category,
      required this.food});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => DetailsScreen(
          foood: food,
        ),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Positioned(
                  top: 15,
                  left: 10,
                  child: Container(
                      decoration: BoxDecoration(
                          color: Mycolor.primarycolor,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Text(
                        category!,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )),
                ),
                Expanded(
                  child: Container(
                    child: Image(image: image!))),
                Text(
                  name!,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
