import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'BestSellerSlider.dart';
import 'CategoriesList.dart';

import 'RecommendedForYou_Slider.dart';


class audioBooks extends StatelessWidget {
  static const String routeName = 'AudioBooks';
  List<String> categories = ['Art', 'Business', 'Comedy', 'Drama'];
  audioBooks({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedindex = 0;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset(
              'assets/images/HeaderLogo.png',
              height: 40,
              width: 40,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Audi',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Color(0xFF4838D1)),
                  ),
                  TextSpan(
                      text: 'books',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 24,
                          color: Color(0xFF4838D1))),
                  TextSpan(
                      text: '.',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Colors.deepOrangeAccent)),
                ],
              ),
            ),
            SizedBox(
              width: 190,
            ),
            Icon(
              Icons.settings_outlined,
              color: Color(0xff4838D1),
              size: 27,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  Text(
                    'See more',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xFF4838D1)),
                  )
                ],
              ),
              Categorieslist(),

              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended For You',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xff010104)),
                  ),
                  Text(
                    'See more',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xff4838D1)),
                  )
                ],
              ),
              SizedBox(
                height: 18,
              ),
              RecommendedforyouSlider(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Seller',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff010104)),
                  ),
                  Text(
                    'See more',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff4838D1)),
                  )
                ],
              ),
              SizedBox(height:8),
              BestSellerSlider(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: selectedindex,


          items:const [
            BottomNavigationBarItem(
              icon:Icon(Icons.home_filled,color: Color(0xff4838D1),),
              label: 'Home',),

            BottomNavigationBarItem(
                icon: Icon(Icons.search,color: Color(0xff6A6A8B),),
                label: 'search'),

            BottomNavigationBarItem(
                icon: Icon(Icons.featured_play_list_rounded,color:Color(0xff6A6A8B)),
                label: 'library'),

          ]),

    );
  }
}
