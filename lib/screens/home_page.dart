import 'package:flutter/material.dart';
import 'package:orgulho_da_palmirinha/widgets/filter_icons_row.dart';
import 'package:orgulho_da_palmirinha/widgets/greeting_text.dart';
import 'package:orgulho_da_palmirinha/widgets/meal_search.dart';
import 'package:orgulho_da_palmirinha/widgets/recipe_list_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        backgroundColor: Colors.white,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Carrinho',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
          ),
        ],
      ),
      body: const CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            scrolledUnderElevation: 0.0,
            leading: Icon(
              Icons.person,
              color: Colors.black,
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 16.0, left: 16.0),
                child: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.grey,
                ),
              ),
            ],
            floating: true,
            pinned: true,
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GreetingText(),
                  SizedBox(height: 24.0),
                  SizedBox(
                    width: double.infinity,
                    child: SearchMealTextField(),
                  ),
                  SizedBox(height: 24),
                  FilterIconsRow(),
                  SizedBox(height: 24),
                  RecipeSectionTitle(),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            sliver: RecipeListScreen(), // Adicionando o SliverGrid aqui
          ),
        ],
      ),
    );
  }
}

class RecipeSectionTitle extends StatefulWidget {
  const RecipeSectionTitle({super.key});

  @override
  State<RecipeSectionTitle> createState() => _RecipeSectionTitleState();
}

class _RecipeSectionTitleState extends State<RecipeSectionTitle> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Populares',
      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    );
  }
}
