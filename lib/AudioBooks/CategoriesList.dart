import 'package:flutter/cupertino.dart';
import 'CategoryItems.dart';

class Categorieslist extends StatelessWidget {
  List<String> categories = ['Art', 'Business', 'Comedy', 'Drama'];
   Categorieslist({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: categories.map((category) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.0),
              child: CategoryItem(category: category),
            );
          }).toList(),
        ),
      ),
    );
  }
}
