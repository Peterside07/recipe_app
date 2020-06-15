

enum RecipeType{
  food,
  drink,
  snacks,
}
// Recipe Data
class Recipe{

  final String id;
  final RecipeType type;
  final String name;
  final Duration duration;
  final List<String> ingredients;
  final List<String> preparation;
  final String imageURL;


//init Recipe
  const Recipe({
    this.id,
    this.type,
    this.name,
    this.duration,
    this.ingredients,
    this.preparation,
    this.imageURL,

});
  String get getDurationString => prettyDuration(this.duration);

  prettyDuration(Duration duration) {
     Duration(
      days: 5,
       hours: 23,
        minutes: 59,
      seconds: 59,
      microseconds: 999,
      milliseconds: 999,

    );
  }


}