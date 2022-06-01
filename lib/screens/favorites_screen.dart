import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List favoritedMeals;

  FavoritesScreen(this.favoritedMeals);

  @override
  Widget build(BuildContext context) {
    if (favoritedMeals.isEmpty) {
      return Center(
        child: const Text(
            "Vous avez pas encore de favoris. En rajouter maintenant"),
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
              title: favoritedMeals[index].title,
              image: favoritedMeals[index].imageUrl,
              duration: favoritedMeals[index].duration,
              complexity: favoritedMeals[index].complexity,
              affordability: favoritedMeals[index].affordability,
              id: favoritedMeals[index].id);
        },
        itemCount: favoritedMeals.length,
      );
    }
  }
}
