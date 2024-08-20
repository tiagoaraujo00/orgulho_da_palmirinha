import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String title;
  final String category;
  final String imageUrl;
  const RecipeCard(
      {super.key,
      required this.title,
      required this.category,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 240,
      child: Card(
        color: Colors.white,
        elevation: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 150,
              height: 170,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              category,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
