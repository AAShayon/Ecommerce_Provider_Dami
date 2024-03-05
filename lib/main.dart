import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app.dart';
import 'firebase_options.dart';
void main() async{
  ///Adding widget
  ///initialize local storage
  ///Native splash
  ///Firebase
  ///Authentication
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const App());
}



///LoginScreen()