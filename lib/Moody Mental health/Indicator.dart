import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class indicator extends StatelessWidget {
  PageController controller = PageController();
   indicator({super.key});

  @override
  Widget build(BuildContext context) {
    return  SmoothPageIndicator(
      controller: controller,
      count:  3,
      axisDirection: Axis.horizontal,
      effect:  SlideEffect(
          spacing:  8.0,

          dotWidth:  8.0,
          dotHeight:  8.0,
          paintStyle:  PaintingStyle.stroke,
          strokeWidth:  1.5,
          dotColor:  Colors.grey,
          activeDotColor:  Color(0xff98A2B3)
      ),
    );
  }
}
