import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/main.dart';
import 'package:twitter_clone/screens/trend/trend.dart';
import 'package:twitter_clone/screens/notification//notification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color(0x0000000))     ,
      home: const Main(),
    );
  }
}
