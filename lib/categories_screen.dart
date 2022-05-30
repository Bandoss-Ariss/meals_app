import 'package:flutter/material.dart';
import 'package:meals_app/category_item.dart';
import './dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("DeliMeals")),
        body: GridView(
          padding: const EdgeInsets.all(20),
          // ignore: prefer_const_constructors
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          // ignore: prefer_const_literals_to_create_immutables
          children: DUMMY_CATEGORIES
              .map((category) =>
                  CategoryItem(category.id, category.title, category.color))
              .toList(),
        ));
  }
}
