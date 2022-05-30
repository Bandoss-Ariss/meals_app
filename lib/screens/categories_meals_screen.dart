// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:meals_app/widgets/meal_item.dart';

import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const categoryMeal = "/category-meals";
  // final String CategoryId;
  // final String CategoryTitle;

  // const CategoryMealsScreen(this.CategoryId, this.CategoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final CategoryTitle = routeArgs["title"]!;
    final CategoryId = routeArgs["id"]!;
    //on veut seulement récupérer les éléments de telle catégorie
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(CategoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(CategoryTitle),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
                title: categoryMeals[index].title,
                image: categoryMeals[index].imageUrl,
                duration: categoryMeals[index].duration,
                complexity: categoryMeals[index].complexity,
                affordability: categoryMeals[index].affordability,
                id: categoryMeals[index].id);
          },
          itemCount: categoryMeals.length,
        ));
  }
}
