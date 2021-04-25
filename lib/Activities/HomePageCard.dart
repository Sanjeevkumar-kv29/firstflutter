import 'package:flutter/material.dart';

class HomePageCard extends StatelessWidget {
  const HomePageCard({
    Key key,
    @required this.displaytext,
    @required this.txtcntroler,
  }) : super(key: key);

  final String displaytext;
  final TextEditingController txtcntroler;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      child: Column(
        children: [
              Image.asset(
                "assets/img1.jpg",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(displaytext, //'hola lola',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: txtcntroler,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Text feild',
                      labelText: 'textfeild'),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10),
                child: FlatButton(
                  child: Text(
                    'Press Me',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    //displaytext = txtcntroler.text;
                  },
                ),
              )
            ],
      ),
    );
  }
}
