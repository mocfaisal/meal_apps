/*
* Create by : Mochammad Faisal
* Create at : 2024-05-06 17:47:03
* Update at : 2024-05-06 19:42:49
*/

import 'package:flutter/material.dart';

import '/data/dummy_data.dart';
import '/widgets/category_grid_item.dart';
import '/screens/meals.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(
          title: 'Some title',
          meals: [],
        ),
      ),
    ); // Navigator.push(context, route)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick your category'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          // availableCategories.map((category) => CategoryGridItem(category: category)).toList()
          for (final category in availableCategories)
           CategoryGridItem(
              category: category,
              onSelectCategory: () {
                _selectCategory(context);
              },
            )
        ],
      ),
    );
  }
}
