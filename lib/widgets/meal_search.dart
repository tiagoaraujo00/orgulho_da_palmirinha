import 'package:flutter/material.dart';

/// Flutter code sample for [TextField].

class SearchMealTextField extends StatelessWidget {
  const SearchMealTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.grey[200],
          filled: true,
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: const BorderSide(style: BorderStyle.none, width: 0),
          ),
          hintText: 'Procure por uma receita',
        ),
      ),
    );
  }
}