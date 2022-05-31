// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Meals"),
          bottom: TabBar(
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              const Tab(icon: Icon(Icons.category), text: "Catégories"),
              const Tab(icon: Icon(Icons.star), text: "Favoris"),
            ],
          ),
        ),
        //l'ordre des screens doit matcher avec celui des tabs en haut
        body: TabBarView(children: [
          CategoriesScreen(),
          FavoritesScreen(),
        ]),
      ),
    );
  }
}
