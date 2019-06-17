import 'package:flutter/material.dart';
import 'package:hello_world/api.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example', ),
        ),
        body: HttpDemo(users: fetchPost())
      ),
    );
  }
}