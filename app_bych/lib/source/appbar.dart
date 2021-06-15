//import a flutter helper library
import 'package:flutter/material.dart';

class newApp extends StatefulWidget {
  //
  createState() {
    return newAppState();
  }
}

//create our own custom widget which
//will extend a "StatelessWidget" class
class newAppState extends State<newApp> {
  int count = 0;
  bool dark = false;

  //
  //here we define a 'build' method that returns
  //the widgets that our custom widget will show
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: dark ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        //just to show how many times the counter
        //has been pressed
        body: Text(
          'You have pressed the button \n$count\ntimes, bych!',
          //
          //styling the text shown in the main screen
          style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
        ),
        //floating action button
        floatingActionButton: FloatingActionButton(
          //
          //child widget to show an icon within
          //the floating action button
          child: Icon(Icons.add_photo_alternate),

          //this is what happens when you press the button
          onPressed: () {
            setState(() {
              count += 1;
            });
          },
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
            Switch(
              value: dark,
              onChanged: (changedTheme) {
                setState(() {
                  dark = changedTheme;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
