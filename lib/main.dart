import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        theme: ThemeData(primarySwatch: Colors.blue));
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    _iconAnimation = CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.bounceIn,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage(
              "assets/image.jpg",
            ),
            fit: BoxFit.fill,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: _iconAnimation.value*100,
              ),
            ],
          )
        ],
      ),
    );
  }
}
