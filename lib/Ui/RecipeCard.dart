import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:recipe_app/Model/recipe.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  final bool inFav;
  final Function onFavPress;

  RecipeCard({
    @required this.recipe,
    @required this.inFav,
    @required this.onFavPress,
  });

  @override
  Widget build(BuildContext context) {
    RawMaterialButton _buildFavButton() {
      return RawMaterialButton(
        onPressed: () => onFavPress(recipe.id),
        child: Icon(
          inFav == true ? Icons.favorite : Icons.favorite_border,
        ),
        elevation: 2.0,
        shape: CircleBorder(),
      );
    }

    Padding _buildTitle() {
      return Padding(
        padding: EdgeInsets.all(15.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(recipe.name),
            SizedBox(),
            Row(
              children: <Widget>[
                Icon(Icons.timer, size: 20.0,),
                SizedBox(width: 5.0),
                Text(
                  recipe.getDurationString,
                ),
              ],
            ),
          ],
        ),
      );
    }

    return GestureDetector(
      onTap: () => print("Worked"),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16.0 / 9.0,
                    child: Image.network(recipe.imageURL, fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    child: _buildFavButton(), top: 2.0, right: 2.0,
                  ),
                ],
              ),
              _buildTitle()
            ],
          ),
        ),
      ),
    );
  }
  }

