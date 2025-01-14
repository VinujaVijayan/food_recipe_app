import 'package:flutter/material.dart';
import 'package:food_recipe_app/CONTROLLER/homecontrol.dart';
import 'package:food_recipe_app/UTILS/mycolor.dart';
import 'package:food_recipe_app/VIEW/WIDGETS/foodview.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    final Homecontrol homecontrol = Get.put(Homecontrol());

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Mycolor.forthcolor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'What are you\nCooking Today...',
                      style: GoogleFonts.lobster(
                        fontSize: 30,
                        color: Mycolor.primarycolor,
                      ),
                    ),
                    Icon(
                      Icons.menu,
                      color: Mycolor.primarycolor,
                      size: 30,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                TextField(
                  controller: searchController,
                  onChanged: (query) => homecontrol.search(query),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () =>
                          homecontrol.search(searchController.text),
                      icon: Icon(Icons.search),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Mycolor.primarycolor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Obx(() {
            if (homecontrol.isLoading.value) {
              return Expanded(
                child: Center(
                  child: CircularProgressIndicator(color: Mycolor.primarycolor),
                ),
              );
            } else {
              return Expanded(
                child: GridView.builder(
                  itemCount: homecontrol.filteredFoodList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 3,
                  ),
                  itemBuilder: (context, index) => Foodview(
                    foods: homecontrol.filteredFoodList[index],
                  ),
                ),
              );
            }
          }),
        ],
      ),
    );
  }
}
