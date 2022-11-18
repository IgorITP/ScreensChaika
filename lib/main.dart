import 'package:app/screens/Stack.dart';
import 'package:app/screens/accountRecovery.dart';
import 'package:app/screens/checkYourMailbox.dart';
import 'package:app/screens/geolacation_screen.dart';
import 'package:app/screens/identlyFerefication.dart';
import 'package:app/screens/identlyFerefication2.dart';
import 'package:app/screens/numberChanged.dart';
import 'package:app/screens/turnOnNotifications.dart';
import 'package:app/screens/verification.dart';
import 'package:app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home: IndentlyFerefication2(),
    );
  }
}
