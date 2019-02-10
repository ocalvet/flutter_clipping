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
          clipper: Eye(),
          child: Container(
            color: Colors.red,
            width: 400.0,
            height: 500.0,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(170),
                  color: Colors.black54
                ),
                width: 170,
                height: 170,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Eye extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height/2);
    path.quadraticBezierTo(size.width/2, size.height, size.width, size.height/2);
    path.quadraticBezierTo(size.width/2, 0, 0, size.height/2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }

}
