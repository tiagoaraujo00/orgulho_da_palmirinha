import 'package:flutter/material.dart';
import 'package:orgulho_da_palmirinha/constants/recipe_card_list.dart';
import 'package:orgulho_da_palmirinha/widgets/recipe_card.dart';

class RecipeListScreen extends StatelessWidget {
  const RecipeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 16,
        childAspectRatio: 0.68,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return RecipeCard(
            title: recipeCardList[index].title,
            category: recipeCardList[index].category,
            imageUrl: recipeCardList[index].imageUrl,
          );
        },
        childCount: recipeCardList.length,
      ),
    );
  }
}
