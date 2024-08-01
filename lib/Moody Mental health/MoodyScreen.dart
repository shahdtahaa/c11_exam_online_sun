
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'Emojies_Icons.dart';
import 'Excercise_Items.dart';
import 'Indicator.dart';
import 'carouseSliderItem.dart';

class Moodyscreen extends StatelessWidget {
  PageController controller = PageController();
  static const String routeName = 'AudioBooks';
   Moodyscreen({super.key});

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
          'assets/images/Moody Logo.png',
          height: 40,
          width: 34.66,
        ),
            SizedBox(width: 9,),
            Text('Moody', style: GoogleFonts.elMessiri(fontSize:24 , fontWeight: FontWeight.w400),),
            SizedBox(width: 235),
            Expanded(
              flex: 1,
              child: Stack(children:
              [ Icon(Icons.notifications_none_rounded, color: Color(0xff101828), size: 29,),
                  Positioned(
                    width: 37,
                      height: 16,
                      child: Icon(Icons.circle, size: 9, color: Color(0xffF04438),)),
                  ]

              ),
            ),

        ]
      ),
    ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text.rich(
                TextSpan(
                children: [
                  TextSpan(
                  text: 'Hello,',
                  style: GoogleFonts.inter(
                      fontWeight:FontWeight.w400 ,
                      fontSize: 20,
                      color: Color(0xff371B34)
                  ),
                ),
                TextSpan(
                    text: 'Sara Rose',
                    style: GoogleFonts.inter(
                      fontWeight:FontWeight.w600 ,
                      fontSize: 20,
                       color: Color(0xff371B34)
                    )
                )
                  ]
                ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child:
                Row(
                  children: [
                    Text('How are you feeling today ?',style: GoogleFonts.inter(
                      color: Color(0xff371B34),
                      fontSize:16 ,
                      fontWeight:FontWeight.w400

                    ),),
                  ],
                )
          ),
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                EmojieIcons(image: 'assets/images/LoveEmojie.png'),
                EmojieIcons(image: 'assets/images/CoolEmojie.png'),
                EmojieIcons(image: 'assets/images/HappyEmojie.png'),
                EmojieIcons(image: 'assets/images/SadEmojie.png'),
              ],
            ),
          ),
          SizedBox(height: 3,),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Love'),
                Text('Cool'),
                Text('Happy'),
                Text('Sad')
              ],
            ),
          ),
          SizedBox(height: 18,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Feature',style: GoogleFonts.inter(fontSize: 18,  fontWeight: FontWeight.w600),),
                Text('See more >', style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xff027A48)),)

              ],
            ),
          ),
          SliderItem(),
          SizedBox(height: 12,),
          indicator(),
          SizedBox(height:35),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Excercise', style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 18
                ),),
                Text('See more >', style: GoogleFonts.inter(color:Color(0xff027A48), fontSize: 14 , fontWeight: FontWeight.w600),)
              ],
            ),
          ),
    Expanded(
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
    children: [
    ExcerciseItems(image:'assets/images/relaxation_Icon.png' ,text:'Relaxation' ,color:Color(0xffF9F5FF) ,),
      SizedBox(width: 8,),
    ExcerciseItems(image:'assets/images/Meditation_Icon.png' ,text:'Meditation' ,color:Color(0xffFDF2FA) ,),
    ]
    ),
    ),),
    SizedBox(width: 10),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                ExcerciseItems(image:'assets/images/Breathing_Icon.png' ,text:'Breathing' ,color:Color(0xffFFFAF5) ,),
                SizedBox(width: 8,),
                ExcerciseItems(image:'assets/images/Yoga_Icon.png' ,text:'Yoga' ,color:Color(0xffF0F9FF) ,),
    ]
    ),
    ),
    ),
    ]
    ),

      bottomNavigationBar: BottomNavigationBar(

          backgroundColor: Colors.white,
          currentIndex: selectedindex,
    showSelectedLabels: false,
    showUnselectedLabels: false,


    items: [
    BottomNavigationBarItem(

    icon: Column(children: [Icon(Icons.home_filled,color: Color(0xff027A48),size: 30,),
        Icon(Icons.circle,size: 7, color: Color(0xff027A48), )] ),
    label: ''),

    BottomNavigationBarItem(
    icon: ImageIcon(AssetImage('assets/images/Categories_Icon.png',),
        color: Color(0xff667085),
    size: 35),

    label: ''),

    BottomNavigationBarItem(
    icon: ImageIcon(AssetImage('assets/images/Calendar_Icon.png'),
    color: Color(0xff667085),
    size: 35),
    label: ''),

    BottomNavigationBarItem(
    icon: Icon(Icons.person,color: Color(0xff667085),),

        label: ''
    ),
            ]
    ),
    );
  }
}
