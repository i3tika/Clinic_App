import 'package:clinic_app/screens%20/auth_screen/create_profile_screen.dart';
import 'package:clinic_app/screens/article_screen/article_screen.dart';
import 'package:clinic_app/screens/auth_screen/auth_screen.dart';
import 'package:clinic_app/screens/auth_screen/create_profile_screen.dart';
import 'package:clinic_app/screens/home_screens/screens/doctors_screen/doctor_info.dart';
import 'package:clinic_app/screens/home_screens/screens/doctors_screen/doctors_screen.dart';
import 'package:clinic_app/screens/home_screens/screens/profile_screen/profile_screen.dart';
import 'package:clinic_app/screens/welcome_screen/welcome_screen.dart';
import 'package:clinic_app/testFile/tabbartest.dart';
import 'package:clinic_app/testFile/testFile.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // Provider.of(Create(context))
    return
        //  ChangeNotifierProvider(
        //   create: (context) =>  ,
        // child:
        MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: CreateProfileScreen(),
      home: const WelcomeScreen(),
      // home: ArticleScreens(),
      // home: DcorotrProfil(),
    );
  }
}
