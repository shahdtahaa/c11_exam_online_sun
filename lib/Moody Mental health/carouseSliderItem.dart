import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  CarouselSlider(
      options: CarouselOptions(
        height: 150.0,
        viewportFraction: 0.7,
        enableInfiniteScroll: false,
        initialPage: 0,
      ),
      items: [
        Container(
          height: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xffECFDF3),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Positive vibes', textAlign: TextAlign.left, style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w600)),
                      SizedBox(height: 8),
                      Text('Boost your mood with positive vibes', maxLines: 2, overflow: TextOverflow.ellipsis, style: GoogleFonts.inter(fontSize: 14)),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.play_circle_fill, color: Color(0xff32D583)),
                          SizedBox(width: 8),
                          Text('10 mins', style: GoogleFonts.inter(fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Image.asset('assets/images/Walking the Dog.png', width: 80, height: 80, fit: BoxFit.cover),

              ],
            ),
          ),
        ),
        SizedBox(width:70),
        Container(
          height: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xffECFDF3),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Positive vibes', textAlign: TextAlign.left, style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w600)),
                      SizedBox(height: 8),
                      Text('Boost your mood with positive vibes', maxLines: 2, overflow: TextOverflow.ellipsis, style: GoogleFonts.inter(fontSize: 14)),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.play_circle_fill, color: Color(0xff32D583)),
                          SizedBox(width: 8),
                          Text('10 mins', style: GoogleFonts.inter(fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Image.asset('assets/images/Walking the Dog.png', width: 80, height: 80, fit: BoxFit.cover),

              ],
            ),
          ),
        ),
        // Add more items here if needed
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
