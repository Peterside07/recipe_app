
import 'package:flutter/material.dart';

import 'app.dart';
import 'package:recipe_app/state_widget.dart';

// - StateWidget incl. state data
//    - RecipesApp
//        - All other widgets which are able to access the data
void main() {
  StateWidget stateWidget = new StateWidget(child:new RecipesApp());
  runApp(stateWidget);
}