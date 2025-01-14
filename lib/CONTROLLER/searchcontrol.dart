import 'dart:async';
import 'package:food_recipe_app/MODEL/foodmodel.dart';
import 'package:get/get.dart';


class Homecontrol extends GetxController {
  RxBool isLoading = true.obs;
  RxList<Food> foodList = <Food>[].obs;
  RxList<Food> filteredFoodList = <Food>[].obs;

  @override
  void onInit() {
    super.onInit();
    dataLoad();
  }

  void dataLoad() {
    Timer(Duration(seconds: 3), () {
      foodList.addAll([]);

      filteredFoodList.addAll(foodList);
      isLoading.value = false;
    });
  }

  void search(String query) {
    if (query.isEmpty) {
      filteredFoodList.value = foodList;
    } else {
      filteredFoodList.value = foodList.where((food) {
        return food.name!.toLowerCase().contains(query.toLowerCase()) ||
            food.category!.toLowerCase().contains(query.toLowerCase());
      }).toList();
    }
  }
}
