import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ClipPath(
          clipper: Teeth(),
          child: Container(
            color: Colors.red,
            width: 100.0,
            height: 50.0,
          ),
        ),
      ),
    );
  }
}

class Teeth extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.quadraticBezierTo(0, 10, size.width / 2, 40);
    // path.lineTo(10, 10);
    // path.lineTo(100, 100);
    // path.lineTo(200, 10);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }

}
