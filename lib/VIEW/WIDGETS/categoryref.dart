import 'package:flutter/material.dart';
import 'package:food_recipe_app/VIEW/filteredfoodcategorypage.dart';

import 'package:google_fonts/google_fonts.dart';

class CategoryRefract extends StatelessWidget {
  final int index;
  final String category;
  const CategoryRefract({
    super.key,
    required this.index,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FilteredfoodListpage(categorylist: category))),
      child: SizedBox(
        height: 50,
        width: 50,
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.emoji_emotions),
                SizedBox(
                  width: 5,
                ),
                Text(
                  category,
                  style: GoogleFonts.pacifico(fontSize: 20),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
