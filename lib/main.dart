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
        child: Container(
          padding: const EdgeInsets.all(10),
          //color: Colors.pink, // Coz box decoration also have Color property so that we can use it only at once
          width: 100,
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.teal,
              //shape: BoxShape.circle
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(colors: [Colors.black, Colors.white]),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                )
              ]),
          child: Text('hello lolo',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
