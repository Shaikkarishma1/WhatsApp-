import 'package:flutter/material.dart';
import 'package:whatsappcreation/home_screen.dart';
import 'package:whatsappcreation/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        initialRoute: HomeScreen.id,
        routes:
      {
        HomeScreen.id:(context)=>HomeScreen(),
        ScreenTwo.id:(context) => ScreenTwo(),
      },

        // home:HomeScreen(),

    );

  }
}


