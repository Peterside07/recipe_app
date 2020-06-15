
import 'package:flutter/material.dart';
import 'package:recipe_app/Ui/Screen/HomeScreen.dart';
import 'package:recipe_app/Ui/Screen/LoginScreen.dart';



class RecipesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipes',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}