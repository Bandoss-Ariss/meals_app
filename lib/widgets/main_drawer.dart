import 'package:flutter/material.dart';
import 'package:meals_app/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget BuildListTile(String title, IconData icon, tapHandler) {
    return ListTile(
        // ignore: prefer_const_constructors
        leading: Icon(
          icon,
          size: 26,
        ),
        // ignore: prefer_const_constructors
        title: Text(
          title,
          style: TextStyle(
              fontFamily: "Roboto", fontSize: 24, fontWeight: FontWeight.bold),
        ),
        onTap: tapHandler);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          color: Theme.of(context).accentColor,
          child: Text(
            "Recettes",
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        // ignore: prefer_const_constructors
        BuildListTile("Les repas", Icons.restaurant, () {
          Navigator.of(context).pushNamed("/");
        }),
        BuildListTile("Les Favoris", Icons.settings, () {
          Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
        }),
      ]),
    );
  }
}
