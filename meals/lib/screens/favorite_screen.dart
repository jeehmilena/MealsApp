import 'package:flutter/material.dart';

import '../components/meal_item.dart';
import '../models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  const FavoriteScreen(this.favoriteMeals, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 32),
            child: Center(
              child: Text('No meals have been marked as favorites!'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: SizedBox(
              height: 200,
              width: 200,
              child: Image.network('https://cdn-icons-png.flaticon.com/512/6134/6134065.png'),
            ),
          ),
        ],
      );
    } else {
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(favoriteMeals[index]);
        },
      );
    }
  }
}
