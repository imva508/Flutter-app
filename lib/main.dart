import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: HomePage(),
      theme: ThemeData(
        brightness: Brightness.light,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = "Hello world";

  void _onChanged() {
    setState(() {
      if (text.startsWith("H"))
        text = "Welcome to flutter";
      else
        text = "Hello world";
    });
  }

  Widget _bodyWidget() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                text,
                style: TextStyle(color: Colors.black, fontSize: 32),
              ),
              padding: EdgeInsets.all(25),
            ),
            RaisedButton(
              color: Colors.deepOrange,
              child: Text(
                "Click me",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: _onChanged,
            )
          ],
        ),
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
