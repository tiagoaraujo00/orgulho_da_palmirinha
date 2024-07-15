import 'package:flutter/material.dart';
import 'package:orgulho_da_palmirinha/widgets/filter_icons_row.dart';
import 'package:orgulho_da_palmirinha/widgets/greeting_text.dart';
import 'package:orgulho_da_palmirinha/widgets/meal_search.dart';

void main() {
  runApp(const MyApp());
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        leading: const Icon(
          Icons.person,
          color: Colors.black,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(
              Icons.notifications_none_outlined,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        child: const Column(
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
          ],
        ),
      ),
    );
  }
}


// class RecipeCard extends StatelessWidget {
//   const RecipeCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 120,
//       height: 200,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(16.0),
//         color: Colors.green,
//       ),
//       child: Column(
//         children: [
//           Container(
//             width: 50,
//             height: 100,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16.0),
//               image: const DecorationImage(
//                 image: NetworkImage('https://via.placeholder.com/150'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           const SizedBox(height: 16.0),
//           Text(
//             'Bolo de cenoura',
//             style: TextStyle(
//               fontSize: 14.0,
//               fontWeight: FontWeight.bold,
//               color: Colors.grey[400],
//             ),
//           ),
//           const SizedBox(height: 8.0),
//           const Text(
//             'Brasil',
//             style: TextStyle(
//               fontSize: 14.0,
//               color: Colors.grey,
//             ),
//           ),],
//       ),
//     );
//   }
// }