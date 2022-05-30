// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_meals_screen.dart';
import 'package:meals_app/screens/meal_screen_details.dart';

import 'screens/categories_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'DeliMeals',
    theme: ThemeData(
      primarySwatch: Colors.pink,
      accentColor: Colors.amber,
      canvasColor: Color.fromRGBO(255, 254, 229, 1),
      fontFamily: "Raleway",
      // textTheme: ThemeData.light().textTheme.copyWith(
      //       bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
      //       bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
      //       // ignore: prefer_const_constructors
      //       titleLarge: TextStyle(
      //         fontSize: 20,
      //         fontFamily: "Roboto",
      //         fontWeight: FontWeight.bold,
      //       ),
      //     )
    ),
    routes: {
      "/": (ctx) => CategoriesScreen(),
      CategoryMealsScreen.categoryMeal: (ctx) => CategoryMealsScreen(),
      MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
    },
  ));
}
