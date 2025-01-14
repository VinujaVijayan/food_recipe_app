import 'package:flutter/material.dart';
import 'package:food_recipe_app/VIEW/splashpage.dart';
import 'package:get/get.dart';



void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}