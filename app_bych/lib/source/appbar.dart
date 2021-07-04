//import a flutter helper library
import 'dart:developer';

import 'package:flutter/material.dart';
//
//import then 'show get' only imports this one get
import 'package:http/http.dart' show get;

import 'models/image.dart';

import 'dart:convert';

import 'widgets/imagelists.dart';

class NewApp extends StatefulWidget {
  //
  createState() {
    return NewAppState();
  }
}

//create our own custom widget which
//will extend a "StatelessWidget" class
class NewAppState extends State<NewApp> {
  int count = 0;
  bool dark = false;

  List<ModelImages> images = [];

  //funtion to show an image every time
  //floating button is pressed
  void getImage() async {
    //
    //here we make a http request
    count += 1;
    final response = await get(
        Uri.parse('https://jsonplaceholder.typicode.com/photos/$count'));
    final imagemodel = ModelImages.fromJson(json.decode(response.body));

    setState(() {
      images.add(imagemodel);
    });
  }

  //
  //here we define a 'build' method that returns
  //the widgets that our custom widget will show

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: dark ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        body: ImageList(images),
        //floating action button
        floatingActionButton: FloatingActionButton(
          //
          //child widget to show an icon within
          //the floating action button
          child: Icon(Icons.add_photo_alternate),

          //this is what happens when you press the button
          onPressed: getImage,
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
