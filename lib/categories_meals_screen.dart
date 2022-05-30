import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String CategoryId;
  // final String CategoryTitle;

  // const CategoryMealsScreen(this.CategoryId, this.CategoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final CategoryTitle = routeArgs["title"]!;
    final CategoryId = routeArgs["id"]!;
    return Scaffold(
        appBar: AppBar(
          title: Text(CategoryTitle),
        ),
        body: Center(
          child: const Text("les trucs de la catégorie"),
        ));
  }
}
