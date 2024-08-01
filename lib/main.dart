import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AudioBooks/AudioBooksScreen.dart';
import 'Moody Mental health/MoodyScreen.dart';


void main() {
  runApp(myapp());
}
class myapp extends StatefulWidget{
  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute:audioBooks.routeName,
        routes: {
         //Moodyscreen.routeName:(context)=> Moodyscreen(),
          audioBooks.routeName: (context) => audioBooks(),
        }
    );
  }}