import 'package:flutter/material.dart';
import 'package:recipe_app/Model/firebase_Model.dart';
import 'package:recipe_app/Model/recipe.dart';
import 'package:recipe_app/Ui/RecipeCard.dart';
import 'package:recipe_app/Ui/Screen/LoginScreen.dart';
import 'package:recipe_app/Util/Store.dart';
import 'package:recipe_app/state_widget.dart';
import 'package:recipe_app/Model/auth.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Recipe> recipes = getRecipe();
  firebaseState appState;
  List<String> userfavourites = getIDs();

  DefaultTabController _buildTabview({Widget body}) {
    const double _iconsize = 20;
    return new DefaultTabController(
      length: 4,
      child: new Scaffold(
        //appBar: PreferredSize(
        //preferredSize: Size.fromHeight(50.0),
        //child:
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          elevation: 2.0,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.restaurant, size: _iconsize)),
              Tab(icon: Icon(Icons.local_drink, size: _iconsize)),
              Tab(icon: Icon(Icons.favorite, size: _iconsize)),
              Tab(icon: Icon(Icons.settings, size: _iconsize)),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: body,
        ),
      ),
    );
  }

  Widget _buildContent() {
    if (appState.isLoading) {
      return _buildTabview(
        body: _buildLoadingIndicator(),
      );
    } else if (!appState.isLoading && appState.user == null) {
      return new LoginScreen();
    } else {
      return _buildTabview(
        body: _buildTabsContent(),
      );
    }
  }

  Center _buildLoadingIndicator() {
    return Center(
      child: new CircularProgressIndicator(),
    );
  }


  TabBarView _buildTabsContent() {
    Padding _buildRecipes(List<Recipe> recipesList) {
      return Padding(
        // Padding before and after the list view:
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: recipesList.length,
                itemBuilder: (BuildContext context, int index) {
                  return new RecipeCard(
                    recipe: recipesList[index],
                    inFav: userfavourites.contains(recipesList[index].id),
                    onFavPress: _handleFavoritesListChanged,
                  );
                },
              ),
            ),
          ],
        ),
      );
    }
    return new TabBarView(children: [
      //display recipe type
      _buildRecipes(recipes
          .where((recipe) => recipe.type == RecipeType.food)
          .toList()),
      _buildRecipes(recipes
          .where((recipe) => recipe.type == RecipeType.drink)
          .toList()),
      _buildRecipes(recipes
          .where((recipe) => userfavourites.contains(recipe.id))
          .toList()),
      Center(
        child: Icon(Icons.settings),
      )
    ]);
  }


  void _handleFavoritesListChanged(String recipeID) {
    setState(() {
      if (userfavourites.contains(recipeID)) {
        userfavourites.remove(recipeID);
      } else {
        userfavourites.add(recipeID);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    appState = StateWidget
        .of(context)
        .state;
    return _buildContent();
  }
}
 

