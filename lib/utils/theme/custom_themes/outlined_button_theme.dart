import 'package:flutter/material.dart';
///outlined button style
class SOutlineButtonTheme{
  SOutlineButtonTheme._();

  ///light

static final lightOutlinedButtonTheme=OutlinedButtonThemeData(
  style:
  OutlinedButton.styleFrom(
      elevation: 0,foregroundColor: Colors.black,
    side: const BorderSide(color: Colors.blue),
    textStyle: const TextStyle(fontSize: 16,color: Colors.black,
    fontWeight: FontWeight.w600),
    padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
  ),
);

///dark


  static final DarkOutlineButtonTheme=OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    elevation: 0,
    side:const  BorderSide(color: Colors.blueAccent),
    padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    foregroundColor: Colors.white,
    textStyle: const TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),


  )
);

}