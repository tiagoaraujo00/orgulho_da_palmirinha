import 'package:flutter/material.dart';
import 'package:orgulho_da_palmirinha/screens/home_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Orgulho da Palmirinha',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        fontFamily: 'QuickSand',
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
