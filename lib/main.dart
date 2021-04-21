import 'package:flutter/material.dart';

import 'Activities/HomeActivity.dart';

void main() {

  //WidgetApp MaterialApp CupertinoApp
  runApp(Myapp());

}

class Homepaget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Text('hello flutter'),
    );
  }
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Homeactivity(), //from activity folder we rendering activity page here

      theme: ThemeData(primarySwatch: Colors.grey),

      /*home: Container(
      color: Colors.teal,
      child: Text('lolo flutter'),
    ),*/
    );
  }
}
