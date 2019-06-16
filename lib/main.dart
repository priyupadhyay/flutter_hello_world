import 'package:flutter/material.dart';

import 'music_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Humming Bird",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.pink,
      ),
      home: NiyuPage(),
    );
  }
}
class NiyuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Humming Bird") ,
        leading: IconButton(
          icon: Icon(
              Icons.menu
            ),
        onPressed: () => {},
        ),
        actions: <Widget>[
          IconButton(
          icon: Icon(
              Icons.more_vert,
            ),
        onPressed: () => {},
        ),
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
          icon: Icon(
              Icons.home,
            ),
        onPressed: () => {},
        ),
        IconButton(
          icon: Icon(
              Icons.music_note,
            ),
        onPressed: () => {},
        ),
        IconButton(
          icon: Icon(
              Icons.album,
            ),
        onPressed: () => {},
        ),
        IconButton(
          icon: Icon(
              Icons.person,
            ),
        onPressed: () => {},
        ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
      body: MusicList(),
    );
  }
}