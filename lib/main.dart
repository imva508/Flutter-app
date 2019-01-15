import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: "My App", home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String text = "Hello world";

  void _onChanged(){
    setState(() {
      if(text.startsWith("H"))
        text= "Welcome to flutter";
      else
        text = "Hello world";
    });
  }

  Widget _bodyWidget() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Center(
        child: Column(children: <Widget>[
          Text(text),
          RaisedButton(child: Text("Click me"),
          onPressed: _onChanged,)
        ],),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: _bodyWidget(),
    );
  }
}
