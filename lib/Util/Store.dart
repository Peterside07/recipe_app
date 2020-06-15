import 'package:recipe_app/Model/recipe.dart';
// Recipe Data source
List<Recipe> getRecipe(){
    return [
      Recipe(
        id: '0',
        type: RecipeType.drink,
        name:  " Fruit Juice ",
        duration: Duration(minutes: 10),
        ingredients: [
          "milk",
          "oat",
          "water",
          "salt"
        ],
        preparation: [
          "step 1",
          "step 2",
          "step 3",
        ],
        imageURL: 'https://images.unsplash.com/photo-1517673400267-0251440c45dc?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f197f4922b3f26ed3f4e3e66a113b67b&auto=format&fit=crop&w=1050&q=80',
      ),
      Recipe(
          id: '1',
          type: RecipeType.food,
          name:  " Oilmeat with fruit",
          duration: Duration(minutes: 10),
          ingredients: [
            "milk",
            "oat",
            "water",
            "salt"
          ],
          preparation: [
            "step 1",
            "step 2",
            "step 3",
          ],
          imageURL: 'https://images.unsplash.com/photo-1517673400267-0251440c45dc?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f197f4922b3f26ed3f4e3e66a113b67b&auto=format&fit=crop&w=1050&q=80',
      ),
      Recipe(
          id: '2',
          type: RecipeType.food,
          name:  " Oilmeat with fruit",
          duration: Duration(minutes: 10),
          ingredients: [
            "milk",
            "oat",
            "water",
            "salt"
          ],
          preparation: [
            "step 1",
            "step 2",
            "step 3",
          ],
          imageURL: 'https://images.unsplash.com/photo-1517673400267-0251440c45dc?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f197f4922b3f26ed3f4e3e66a113b67b&auto=format&fit=crop&w=1050&q=80',
      ),
      Recipe(
        id: '3',
        type: RecipeType.snacks,
        name:  "Cake",
        duration: Duration(minutes: 50),
        ingredients: [
          "Flour",
          "egg",
          "water",
          "sugar"
        ],
        preparation: [
          "step 1",
          "step 2",
          "step 3",
        ],
        imageURL: 'https://images.unsplash.com/photo-1517673400267-0251440c45dc?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f197f4922b3f26ed3f4e3e66a113b67b&auto=format&fit=crop&w=1050&q=80',
      ),
    ];


}

List<String> getIDs(){
  return[
    "1",
    "2",
    "3",

  ];
}