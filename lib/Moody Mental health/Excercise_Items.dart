import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class ExcerciseItems extends StatelessWidget {
  String image;
  String text;
  Color color;
   ExcerciseItems({ required this.image, required this.text, required this.color ,super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              children: [
                Image.asset(image),
                SizedBox(width: 20,),
                Text(text, style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 14),)
              ]

          ),
        ),
      ),
    );

  }
}
