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
            width: 300.0,
            height: 300.0,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  color: Colors.black54
                ),
                width: 70,
                height: 70,
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
