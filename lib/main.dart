// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meals_app/categories_meals_screen.dart';

import './categories_screen.dart';

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
    home: CategoriesScreen(),
    routes: {"/category-meals": (ctx) => CategoryMealsScreen()},
  ));
}
