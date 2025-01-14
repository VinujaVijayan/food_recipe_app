import 'package:food_recipe_app/MODEL/foodmodel.dart';
import 'package:get/get.dart';

class Wishlistcontrol extends GetxController {
  var wishList = <Food>[].obs;

  void addtoWishList(Food foods) {
    if (!wishList.contains(foods)) {
      wishList.add(foods);
    }
  }

  void removefromwishList(Food foods) {
    wishList.remove(foods);
  }

  bool iswishListed(Food foods) {
    return wishList.contains(foods);
  }
}
