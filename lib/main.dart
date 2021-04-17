import 'package:flutter/material.dart';

void main() {
  //WidgetApp MaterialApp CupertinoApp
  runApp(MaterialApp(
    home: Homepaget2(),
    theme: ThemeData(primarySwatch: Colors.grey),

    /*home: Container(
      color: Colors.teal,
      child: Text('lolo flutter'),
    ),*/
  ));
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

class Homepaget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold give appbar to us.
      appBar: AppBar(
        title: Text('hello flutter'),
      ),

      body: Center(
        child: Row(
          // similar for Column
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 100,
              height: 100,
              color: Colors.green,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 100,
              height: 100,
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}
