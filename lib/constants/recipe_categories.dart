import 'package:flutter_svg/flutter_svg.dart';
import '../models/recipe_category.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



final List<RecipeCategory> recipeCategories = [
  const RecipeCategory(name: 'Popular', icon: FaIcon(FontAwesomeIcons.fire)),
  RecipeCategory(name: 'Massas', icon: SvgPicture.asset('assets/icons/pasta_recipe.svg')),
  RecipeCategory(name: 'Oriental', icon: SvgPicture.asset('assets/icons/oriental_recipe.svg')),
  RecipeCategory(name: 'Vegetariano', icon: SvgPicture.asset('assets/icons/vegetarian_recipe.svg')),
  RecipeCategory(name: 'Fitness', icon: SvgPicture.asset('assets/icons/fitness_recipe.svg')),
  RecipeCategory(name: 'Drinks', icon: SvgPicture.asset('assets/icons/drinks_recipe.svg')),
  RecipeCategory(name: 'Carnes', icon: SvgPicture.asset('assets/icons/meat_recipe.svg')),
  RecipeCategory(name: 'Sobremesas', icon: SvgPicture.asset('assets/icons/dessert_recipe.svg')),
];