import 'package:flutter/material.dart';
import 'package:gym_app/view/exercises_view.dart';
import 'package:gym_app/view/authentication_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AuthenticationView(),
    );
  }
}