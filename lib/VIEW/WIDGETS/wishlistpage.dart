import 'package:flutter/material.dart';
import 'package:food_recipe_app/CONTROLLER/wishlistcontrol.dart';
import 'package:food_recipe_app/VIEW/detailspage.dart';
import 'package:get/get.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Wishlistcontrol wishcontrol = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
      body: Obx(() {
        if (wishcontrol.wishList.isEmpty) {
          return Center(
            child: Text('No items in wishlist'),
          );
        }

        return ListView.builder(
          itemCount: wishcontrol.wishList.length,
          itemBuilder: (context, index) {
            final food = wishcontrol.wishList[index];
            return InkWell(
              onTap: () {
                Get.to(() => DetailsScreen(foood: food));
              },
              child: ListTile(
                leading: Image(
                  image: food.image ?? AssetImage('assets/default_image.jpg'),
                  height: 50,
                  width: 50,
                ),
                title: Text(food.name ?? ''),
                subtitle: Text(food.category ?? ''),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    wishcontrol.removefromwishList(food);
                  },
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
