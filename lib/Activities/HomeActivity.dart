import 'package:firstflutter/designs/DrawerDesign.dart';
import 'package:firstflutter/designs/listview.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';

class Homeactivity extends StatefulWidget {
  @override
  _HomeactivityState createState() => _HomeactivityState();
}

class _HomeactivityState extends State<Homeactivity> {
  // var displaytext = 'I love you dude';
  // TextEditingController txtcntroler = TextEditingController();

  var url = 'https://jsonplaceholder.typicode.com/photos';
  var risponse;
  var data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  fetchData() async {
    risponse = await http.get(Uri.parse(url));
    data = jsonDecode(risponse.body);

    print(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold give appbar to us.
      //backgroundColor: Colors.grey,
      appBar: AppBar(title: Text('hello flutter')),

      drawer: DrawerDesign(),

      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]['title']),
                  subtitle: Text('ID = ${data[index]['id']}'),
                  leading: Image.network(data[index]['url']),
                );
              },
              itemCount: data.length,
            ) // if this condition true ? do this : else do this

          : Center(child: CircularProgressIndicator()),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //displaytext = txtcntroler.text;

          setState(() {});
        },
        backgroundColor: Colors.black,
        child: Icon(
          Icons.send,
          color: Colors.white,
        ),
      ),

      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
