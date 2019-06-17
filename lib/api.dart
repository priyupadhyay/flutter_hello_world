import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'user_model.dart';

Future<List<User>> fetchPost() async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/users/');

  if (response.statusCode == 200) {
    //If server returns an OK response, parse the JSON.
    List<User> users = [];
    var data = json.decode(response.body);
        for (var item in data) {
          print(item);
          users.add(User.fromJson(item));
        }
    print(response);
    return users;
    //return User.fromJson(json.decode(response.body));
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load post');
  }
}


class HttpDemo extends StatelessWidget {
final Future<List<User>> users;

  const HttpDemo({Key key, this.users}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    //List<User> users = mapToPodo();
    //print(users);
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example', ),
        ),
        body: Center(
      child: FutureBuilder<List<User>>(
  future: fetchPost(),
  builder: (context, snapshot) {
      
      if (snapshot.hasData) {
      return ListView(
        children: <Widget>[
          for(var item in snapshot.data)
          ListTile(
            title: Text(item.name, style: TextStyle(fontSize: 50.0),),
          )
          
        ],
      );
      } else if (snapshot.hasError) {
      return Text("${snapshot.error}");
      }

      // By default, show a loading spinner.
      return CircularProgressIndicator();
  },
),
    ),
    ),
    );
  }
}



 



