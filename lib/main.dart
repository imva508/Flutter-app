import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: LoginPage(), theme: ThemeData(primarySwatch: Colors.blue));
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage("assets/image.jpg",),
            fit: BoxFit.fill,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          )
        ],
      ),
    );
  }
}
