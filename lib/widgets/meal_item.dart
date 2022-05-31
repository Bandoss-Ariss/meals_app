// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/screens/meal_screen_details.dart';

class MealItem extends StatelessWidget {
  final String title;

  final String image;

  final int duration;

  final Complexity complexity;

  final Affordability affordability;

  final String id;

  final Function removeItem;

  MealItem(
      {required this.title,
      required this.image,
      required this.duration,
      required this.complexity,
      required this.affordability,
      required this.id,
      required this.removeItem});

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'simple';
      case Complexity.Challenging:
        return 'Challengeur';
      case Complexity.Hard:
        return "Difficile";
      default:
        return "Erreur";
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Abordable';
        break;
      case Affordability.Pricey:
        return 'Chèr';
      case Affordability.Luxurious:
        return "Bourgeois";
      default:
        return "Erreur";
    }
  }

  void selectMeal(BuildContext context) {
    Navigator.of(context)
        .pushNamed(MealDetailScreen.routeName, arguments: id)
        .then((value) {
      if (value != null) {
        removeItem(value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Column(children: [
          Stack(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              //clipRrect nous permet d'arondir l'image
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.network(
                  image,
                  height: 250,
                  width: double.infinity,
                  //il doit prendre toute la largeur dispo
                  fit: BoxFit.cover,
                ),
              ),
              //Dans le stack nous avons le Widget Positionned
              Positioned(
                bottom: 20,
                right: 0,
                child: Container(
                  width: 250,
                  color: Colors.black54,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        overflow: TextOverflow.fade),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.schedule,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text('$duration min')
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.work,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(complexityText)
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.money,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(affordabilityText)
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
