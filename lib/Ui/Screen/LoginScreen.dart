import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:recipe_app/Ui/Screen/Sign_in_Btn.dart';

import '../../state_widget.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Text _Textbtn() {
      return Text(
        'Recipe',
        textAlign: TextAlign.center,
      );
    }

    BoxDecoration _background() {
      return BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.jpg"),
          fit: BoxFit.cover,
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        decoration: _background(),
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _Textbtn(),
                SizedBox(height: 50.0),
                new SignInBtn(
                  onPressed: () => StateWidget.of(context).signInWithGoogle(),
                ),
                SizedBox(height: 50.0,),
              ],
            ),
          ),
        ),
    );
  }
}
