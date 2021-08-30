import 'package:flutter/material.dart';
import 'package:yourbank/dashboard.dart'; // url do dashboard.dart
import 'package:yourbank/models/contacts.dart';

import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() => {
  runApp(BytebankApp());
  save(Contact('alex', 1000)).then((id) {   // Contact(2, 'alex', 1000)
    findAll().then((contacts) => debugPrint(contacts.toString()));
  });
}

class BytebankApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
}
