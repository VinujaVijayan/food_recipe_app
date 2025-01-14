import 'package:flutter/material.dart';
import 'package:food_recipe_app/CONTROLLER/navcontrol.dart';
import 'package:food_recipe_app/UTILS/mycolor.dart';
import 'package:food_recipe_app/VIEW/staggeredpage.dart';

import 'package:get/get.dart';

class Navpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Bottomnav_control control = Get.put(Bottomnav_control());
    return Scaffold(
      body: SafeArea(
        child: Obx(() => control.mypages[control.selectedIndex.value]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape:
            CircleBorder(side: BorderSide(color: Mycolor.forthcolor, width: 2)),
        backgroundColor: Mycolor.primarycolor,
        onPressed: () {
          Get.to(() => StaggeredGridScreen());
        },
        child: Icon(
          Icons.food_bank,
          color: Mycolor.forthcolor,
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomAppBar(
          height: 100,
          shape: CircularNotchedRectangle(),
          notchMargin: 10.0,
          child: BottomNavigationBar(
            currentIndex: control.selectedIndex.value,
            onTap: control.onItemtap,
            selectedItemColor: Mycolor.primarycolor,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: "Category",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Hearts",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
