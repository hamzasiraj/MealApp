import 'package:flutter/material.dart';
import 'package:meal_project/category_item.dart';
import 'package:meal_project/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals Categories'),
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map((e) => CategoryItem(
                  color: e.color,
                  title: e.title,
                  id: e.id,
                ))
            .toList(),
      ),
    );
  }
}
