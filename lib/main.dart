import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: Scaffold(
        appBar: AppBar(title:Text("Home")),
        body: Center(
          child: Text("I love flutter"),
        ),
      ),
    );
  }
}
