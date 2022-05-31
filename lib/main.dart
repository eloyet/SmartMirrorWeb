import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smart_mirror/screens/customize_screen.dart';
import 'package:smart_mirror/screens/dene.dart';
import 'package:smart_mirror/screens/home_screen.dart';
import 'package:smart_mirror/screens/reminder.dart';
import 'package:smart_mirror/screens/signin_screen.dart';
import 'package:smart_mirror/screens/update_settings_screen.dart';
import 'package:smart_mirror/screens/upload_photo.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smart_mirror/screens/signin_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp( options: FirebaseOptions(
      apiKey: "AIzaSyCsRGVEusXPN6VO4Bqjwx6Bo4vJZTZKdkw",
      appId: "1:890137370706:android:f49dd7fcf8b673d9a0ff8b",
      messagingSenderId: "890137370706",
      projectId: "signin-example-b3f10",
    ),);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  const SignInScreen(),
    );
  }
}
