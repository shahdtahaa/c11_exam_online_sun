import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmojieIcons extends StatelessWidget {
 String image='';
   EmojieIcons({required this.image,super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Color(0xffE4E7EC),
      radius: 30,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Image.asset(image),
      ),
    );
  }
}
