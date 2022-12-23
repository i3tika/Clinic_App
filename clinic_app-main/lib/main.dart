import 'package:clinic_app/screens%20/auth_screen/create_profile_screen.dart';
import 'package:clinic_app/screens/auth_screen/auth_screen.dart';
import 'package:clinic_app/screens/auth_screen/create_profile_screen.dart';
import 'package:clinic_app/screens/home_screens/screens/doctors_screen/doctors_screen.dart';
import 'package:clinic_app/screens/home_screens/screens/profile_screen/profile_screen.dart';
import 'package:clinic_app/screens/welcome_screen/welcome_screen.dart';
import 'package:clinic_app/testFile/testFile.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CreateProfileScreen(),
      // home: TabTest(),
    );
  }
}
