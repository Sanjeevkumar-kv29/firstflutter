import 'package:flutter/material.dart';


class Mylistview extends StatelessWidget {
  const Mylistview({
    Key key,
    @required this.data,
  }) : super(key: key);

  final Map data;

  @override
  Widget build(BuildContext context) {

    ListView.builder(itemBuilder: (context,index){

      return ListTile(
        title: Text(data[index]['title']),
        subtitle: Text('ID = ${data[index]['id']}'),
        leading: Image.network(data[index]['url']),

      );
    },
     itemCount: data.length,

    );

  }
}
