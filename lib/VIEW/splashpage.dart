import 'package:flutter/material.dart';
import 'package:food_recipe_app/UTILS/mycolor.dart';
import 'package:food_recipe_app/VIEW/navpage.dart';

import 'package:google_fonts/google_fonts.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Mycolor.forthcolor,
          borderRadius: BorderRadius.circular(1.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.0),
              Expanded(
                child: Center(
                  child: Image.network(
                    'https://t3.ftcdn.net/jpg/07/84/28/54/360_F_784285438_bObpyYd1w63mpCRiAkF06pNRxU7m1DPb.jpg',
                  ),
                ),
              ),
              Text(
                'Cooking\n ',
                style: GoogleFonts.ebGaramond(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Mycolor.thirdcolor,
                ),
              ),
              Text(
                'experience like\n',
                style: GoogleFonts.libreBaskerville(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Mycolor.primarycolor,
                ),
              ),
              Text(
                'a chef 👩‍🍳',
                style: GoogleFonts.ebGaramond(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Mycolor.thirdcolor,
                ),
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Mycolor.thirdcolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 30.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Navpage()));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
