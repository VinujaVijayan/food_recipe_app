import 'package:flutter/material.dart';
import 'package:food_recipe_app/MODEL/foodmodel.dart';
import 'package:food_recipe_app/UTILS/mycolor.dart';

class DetailsScreen extends StatelessWidget {
  final Food foood;
  DetailsScreen({required this.foood});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.favorite_outline_outlined),
          SizedBox(width: 5),
          Icon(Icons.share),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: foood.image!, fit: BoxFit.fill)),
                ),
              ),
              SizedBox(height: 10),
              Text(
                foood.name!,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 20,
                    width: 40,
                    child: Center(child: Text(foood.method!)),
                  ),
                  SizedBox(width: 5),
                  Column(
                    children: [
                      Icon(Icons.alarm, color: Mycolor.primarycolor),
                      SizedBox(height: 5),
                      Text(foood.time!),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Text('Ingredients',
                          style: TextStyle(color: Mycolor.primarycolor)),
                      Text('${foood.incredentcount}',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(foood.content!),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Ingredients',
                    style: TextStyle(
                      color: Mycolor.primarycolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Start Cooking',
                        style: TextStyle(color: Mycolor.forthcolor),
                      ),
                      style: ButtonStyle(
                        textStyle: WidgetStateProperty.all(TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                        backgroundColor:
                            WidgetStateProperty.all(Mycolor.primarycolor),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(12), // Set button shape
                        )),
                        elevation: WidgetStateProperty.all(5), // Set elevation
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 213, 201, 201)),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: foood.ingredients?.length ?? 0,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(foood.ingredients![index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
