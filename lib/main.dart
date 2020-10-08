import 'package:flutter/material.dart';
import 'package:navigation/inbox/home.dart';
import 'package:navigation/inbox/internal.dart';
import 'package:navigation/routes/router.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Gmail",
      theme: ThemeData(
      primarySwatch: Colors.red,
    ),
     initialRoute: "/",
     routes: customRoute,
    );
    throw UnimplementedError();
  }
  
}