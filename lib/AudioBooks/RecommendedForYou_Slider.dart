import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

class RecommendedforyouSlider extends StatelessWidget {
  const RecommendedforyouSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: 370.0,
          aspectRatio: 16 / 9,
          viewportFraction: 0.7,
          enableInfiniteScroll: false,
          initialPage: 0),
      items: [
        'assets/images/firstImage.png',
        'assets/images/secondImage.png'
      ].map((imagePath) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              padding: EdgeInsets.zero,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
