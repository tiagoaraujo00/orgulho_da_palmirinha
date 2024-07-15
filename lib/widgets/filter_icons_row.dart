import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:orgulho_da_palmirinha/constants/recipe_categories.dart';

class FilterIconsRow extends StatelessWidget {
  const FilterIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: recipeCategories
            .map((category) {
              return Column(
                children: [
                  Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: Center(
                      child: category.icon,
                    ),
                  ),
                  Container(
                    width: 60,
                    alignment: Alignment.center,
                    child: Text(
                      category.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              );
            })
            .toList()
            .expand((widget) => [widget, const SizedBox(width: 24)])
            .toList()
          ..removeLast(),
      ),
    );
  }
}
