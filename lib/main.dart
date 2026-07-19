import 'package:dynamic_path_url_strategy/dynamic_path_url_strategy.dart';
import 'package:express_administrator/app.dart';
import 'package:express_administrator/firebase_options.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  // ensure every widget is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // initialize the Getx local storage


  // Remove the # sign from url
  setPathUrlStrategy();

  // initialize firebase authentication repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const App());
}
