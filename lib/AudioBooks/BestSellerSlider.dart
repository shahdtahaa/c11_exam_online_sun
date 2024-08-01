import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class BestSellerSlider extends StatelessWidget {
  const BestSellerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 131.0,
        aspectRatio: 16 / 9,
        viewportFraction: 0.9,
        enableInfiniteScroll: false,
        initialPage: 0,
      ),
      items: [
        Container(
          width: 200,
          height: 400,
          color: Color(0xffF5F5FA),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/BestSellerImage.png'),
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  SizedBox(height: 8),
                  Text('Light Mage'),
                  SizedBox(height: 8),
                  Text(
                    'Laurie Forest',
                    style: GoogleFonts.poppins(
                      color: Color(0xff6A6A8B),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 200,
          height: 400,
          color: Color(0xffF5F5FA),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/BestSellerImage.png'),
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  SizedBox(height: 8),
                  Text('Light Mage'),
                  SizedBox(height: 8),
                  Text(
                    'Laurie Forest',
                    style: GoogleFonts.poppins(
                      color: Color(0xff6A6A8B),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ].map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              padding: EdgeInsets.zero,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: item,
            );
          },
        );
      }).toList(),
    );
  }
}
