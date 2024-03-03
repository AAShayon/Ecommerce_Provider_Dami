import 'package:flutter/material.dart';
class CustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // var path = Path();
    // path.moveTo(size.width * 0.0826333, size.height * 0.7142714);
    // path.quadraticBezierTo(size.width * 0.0832208, size.height * 0.2301893,
    //     size.width * 0.0834167, size.height * 0.0688286);
    // path.lineTo(size.width * 0.4575167, size.height * 0.0690714);
    // path.quadraticBezierTo(size.width * 0.4583667, size.height * 0.5525643,
    //     size.width * 0.45865, size.height * 0.7137286);
    // path.cubicTo(size.width * 0.46, size.height * 0.6595571,
    //     size.width * 0.088425, size.height * 0.6476571, size.width * 0.0826333,
    //     size.height * 0.7142714);
    // path.close();
    //
    // return path;

    Path path_0 = Path();
    path_0.moveTo(0,size.height);
    path_0.quadraticBezierTo(size.width*-0.0018750,size.height*0.2500000,size.width*-0.0025000,0);
    path_0.lineTo(size.width,0);
    path_0.quadraticBezierTo(size.width,size.height*0.7500000,size.width,size.height);
    path_0.cubicTo(size.width*0.9932500,size.height*0.9147000,size.width*0.0072000,size.height*0.9152750,0,size.height);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
