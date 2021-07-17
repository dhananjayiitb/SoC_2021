import 'package:flutter/material.dart';
import 'package:notes/Pages/home.dart';
import 'package:notes/Pages/enter_text.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/enter': (context) => Enter(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

