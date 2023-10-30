import 'package:flutter/material.dart';
import 'package:onboarding_screen/pages/home_page.dart';
import 'package:onboarding_screen/pages/intro_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=>const IntroScreen(),
        "homePage":(context)=>const HomePage()
      },
    );
  }
}