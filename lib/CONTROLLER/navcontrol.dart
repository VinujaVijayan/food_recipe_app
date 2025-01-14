import 'package:flutter/material.dart';
import 'package:food_recipe_app/VIEW/WIDGETS/wishlistpage.dart';
import 'package:food_recipe_app/VIEW/categorypage.dart';
import 'package:food_recipe_app/VIEW/homepage.dart';
import 'package:get/get.dart';

class Bottomnav_control extends GetxController {
  RxInt selectedIndex = 0.obs;

  void onItemtap(index) {
    selectedIndex.value = index;
  }

  List mypages = [
    Homescreen(),
    Categoryscreen(),
    WishlistPage(),
    Scaffold(),
  ];
}
