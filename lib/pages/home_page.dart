import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text("Welcome to Home",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.blue),),
      ),
    );
  }
}