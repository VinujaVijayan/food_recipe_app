import 'package:flutter/material.dart';
import 'package:food_recipe_app/CONTROLLER/wishlistcontrol.dart';
import 'package:food_recipe_app/MODEL/foodmodel.dart';

import 'package:food_recipe_app/VIEW/detailspage.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Foodview extends StatelessWidget {
  late Food foods;

  Foodview({required this.foods});

  @override
  Widget build(BuildContext context) {
    final Wishlistcontrol wishcontrol = Get.put(Wishlistcontrol()); //

    return InkWell(
      onTap: () {
        Get.to(() => DetailsScreen(foood: foods));
      },
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                Card(
                  elevation: 5,
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: foods.image ??
                                AssetImage('assets/default_image.jpg')
                                    as ImageProvider,
                            fit: BoxFit.cover)),
                  ),
                ),
                Obx(() {
                  return Positioned(
                    top: 10,
                    right: 10,
                    child: IconButton(
                        onPressed: () {
                          if (wishcontrol.iswishListed(foods)) {
                            wishcontrol.removefromwishList(foods);
                          } else {
                            wishcontrol.addtoWishList(foods);
                          }
                        },
                        icon: wishcontrol.iswishListed(foods)
                            ? Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            : Icon(Icons.favorite_border,size: 30.0,)),
                  );
                }),
              ]),
              Text(
                foods.name ?? '',
                style: GoogleFonts.abel(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
