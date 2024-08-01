import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String category;

  CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: Color(0xffF5F5FA),
        borderRadius: BorderRadius.circular(15.0),

      ),
      child: Text(
        category,
        style: TextStyle(
          color: Color(0xff2E2E5D),
          fontSize: 16.0,
        ),
      ),
    );
  }}