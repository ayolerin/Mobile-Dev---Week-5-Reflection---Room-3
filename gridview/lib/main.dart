import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("WAZOBIA CHOPS"),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 8.0,
          children: <Widget>[
            Image.network("https://placeimg.com/500/500/any"),
            Image.network("https://placeimg.com/500/500/any"),
            Image.network("https://placeimg.com/500/500/any"),
            Image.network("https://placeimg.com/500/500/any"),
            Image.network("https://placeimg.com/500/500/any"),
            Image.network("https://placeimg.com/500/500/any"),
            Image.network("https://placeimg.com/500/500/any"),
            Image.network("https://placeimg.com/500/500/any"),
            Image.network("https://placeimg.com/500/500/any"),                        
            Image.network("https://placeimg.com/500/500/any"),
            Image.network("https://placeimg.com/500/500/any"),
            Image.network("https://placeimg.com/500/500/any"),
            Image.network("https://placeimg.com/500/500/any"),
            Image.network("https://placeimg.com/500/500/any"),
            Image.network("https://placeimg.com/500/500/any"),


          ],
        )),
      ),
    );
  }
}