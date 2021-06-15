//import a helper library from flutter
//to get something on the screen

//we can import in 3 styles
//
//
//this is to import code from a third party package
import 'package:flutter/material.dart';

//A 'main' function, always
void main() {
//
//create a text widget to show
//some text on screen
  var myapp = MaterialApp(
    theme: ThemeData.dark(),
    home: Scaffold(
      //
      //floating action button
      floatingActionButton: FloatingActionButton(
        //
        //child widget to show an icon within
        //the floating action button
        child: Icon(Icons.add_photo_alternate),

        //this is what happens when you press the button
        onPressed: () {},
      ),

      //total top app bar
      appBar: AppBar(
        //shows a menu icon on the left
        //side of the appbar
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),

        //display main text of the appbar
        title: Text('See some photos, Bych!'),

        //display search icon on right side of appbar
        //with a bit of padding on the right
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
    ),
  );

//take the made widget and show it on screen
  runApp(myapp);
}
